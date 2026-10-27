+++
title = "Prompt for variables in Oracle SQL*Plus"
date = 2009-05-09T10:02:31Z

[taxonomies]
tags = ["Database", "oracle", "sql"]
+++

To prompt the user for a value when running SQL statements in SQL\*Plus use the & symbol. The query below will prompt for variable "name" twice:

```sql
select 'Hello ' || '&name' from dual
union all
select 'Goodbye ' || '&name' from dual;
```

To prompt for any given variable only once and use the entered value multiple times use two ampersands instead of one. The query below will prompt for the variable "name" once only:

```sql
select 'Hello ' || '&&name' from dual
union all
select 'Goodbye ' || '&&name' from dual;
```

To prevent prompting altogeher, use the `set define` command:

```sql
set define off
select 'Hello world & dog' from dual;
```
