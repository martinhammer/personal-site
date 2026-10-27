#!/bin/sh
set -e
cd "$(dirname "$0")"

target="${DEPLOY_TARGET:-}"
if [ -z "$target" ] && [ -f .deploy-target ]; then
  target="$(head -n 1 .deploy-target)"
fi
if [ -z "$target" ]; then
  echo "No destination set. Edit .deploy-target and try again."
  exit 1
fi

if [ -n "$(git status --porcelain)" ]; then
  echo "Uncommitted changes. Commit and try again."
  exit 1
fi
git fetch -q
if [ "$(git rev-parse @)" != "$(git rev-parse @{u})" ]; then
  echo "Local branch differs from GitHub. Resolve and try again."
  exit 1
fi

zola build
rsync -av --delete public/ "$target"
echo "Deployed to $target"
