+++
title = "October 2026 projects update"
date = 2026-11-11T01:00:00Z

[taxonomies]
tags = ["news", "projects", "tickbuddy"]
+++

October was a very busy month, especially for Tickbuddy (and the growing Tickbuddy family, see below). The starting point was preparing a coherent and prioritised roadmap of features, and then working through it systematically.

What I found particularly nice is that a lot of the roadmap features came from end user requests: notably the alternative journal layout and home screen widgets in Tickdroid, and notes functionality in Tickbuddy. Although I built Tickbuddy and Tickdroid for my own use, going open source and publishing them on their respective app stores was always part of the plan. It's nice to see the usage and engagement picking up, and I hope that the multiple updates in October added value to all the users.

On the other hand, my own vision has also continued to evolve; specifically, I no longer think of Tickbuddy as a "habit tracker for Nextcloud" (the original tagline), but rather as a "habit and event tracker with a Nextcloud backend". The move from purely habit tracking is deliberate: whilst it is still the biggest use case, the potential for a flexible and lightweight tracker of "this happened on this day" is much broader. Building the command line client Tickcli is a big step in that direction; scripts and automations can now log (and with the notes feature, this includes output beyond the simple tick). TickLLMe extends that to AI agents.

Hence the Tickbuddy family has grown to four members in October: [Tickbuddy](https://github.com/martinhammer/tickbuddy), [Tickdroid](https://github.com/martinhammer/tickdroid), [Tickcli](https://github.com/martinhammer/tickcli), [TickLLMe](https://github.com/martinhammer/tickllme). This brought the need to do more of a "proper" product management (i.e. the roadmap, already mentioned, here is the [summarised version](https://tickbuddy.app/features#roadmap)) but also to coordinate dependencies and releases across products and to think ahead. An interesting example is the forward-compatibility work that already happened in releases of Tickdroid, Tickcli and TickLLMe for features  which don't yet exist in Tickbuddy. This will limit any breakage on older clients when those features land on the server.

Another important milestone in October was the creation of two websites: [tickbuddy.app](https://tickbuddy.app) and this, my personal website. Both are built using the [Zola static site generator](http://www.getzola.org/) and served using [Static Web Server](https://static-web-server.net/). Although I found Zola a little difficult initially, it as actually very pleasant to use once the initial site structure is in place.

Below is the list of the project releases in October and their major feature highlights.

### Tickbuddy

| Date | Release | Highlights |
|---|---|---|
| 2026/10/10 | 2.1.0 | Nextcloud dashboard widget |
| 2026/10/17 | 2.2.0 | Archive tracks |
| 2026/10/24 | 2.3.0 | Notes backend, API clean-up |
| 2026/10/30 | 3.0.0 | New UI and notes |

### Tickdroid

| Date | Release | Highlights |
|---|---|---|
| 2026/10/05 | 1.1.0 | Alternative journal layout ("tracks down") |
| 2026/10/11 | 1.2.0 | Home screen widgets, full track management,  redesigned track settings |
| 2026/10/17 | 1.3.0 | Archive tracks |
| 2026/10/24 | 1.4.0 | Widgets transparency, forward compatibility changes |
| 2026/10/31 | 1.5.0 | Today screen and notes |

### Tickcli

| Date | Release | Highlights |
|---|---|---|
| 2026/10/22 | 0.1.0 | Initial release |

### TickLLMe

| Date | Release | Highlights |
|---|---|---|
| 2026/10/22 | 0.1.0 | Initial release |

### Websites

| Date | Release | Highlights |
|---|---|---|
| 2026/10/24 | tickbuddy.app | Go-live of the website |
| 2026/10/25 | martinthetallguy.com | Go-live of the website, including old migrated content |

### Daily Zen Quote

| Date | Release | Highlights |
|---|---|---|
| 2026/10/02 | 4.0.1 | Font size and padding fixes for better look |

### Looking ahead
What's next for November and beyond? Considering the amount of changes and new features that landed in October, I decided to have a short cool-down period for Tickbuddy and friends during the first half of the month; but the roadmap remains packed and I expect to start back in the latter part of the month. In the meantime, other projects are getting some love: [Flight Journal](https://github.com/martinhammer/flightjournal) and [Travel Manager](https://github.com/martinhammer/travelmanager) in particular continue to evolve (perhaps getting close to being  publishable), and there are one or two other things cooking as well.
