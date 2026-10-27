+++
title = "Change Oracle XE web ports"
date = 2009-04-21T13:48:56Z

[taxonomies]
tags = ["administration", "Database", "oracle", "sql"]
+++

[Oracle Database XE](http://www.oracle.com/technology/products/database/xe/index.html) (Express Edition, sometimes also referred to as Apex) comes with an embedded web interface for administration. By default the HTTP port of this web interface is 8080. This can be checked by running the query below when logged in as system:

`SQL> select dbms_xdb.gethttpport from dual;`

In order to change the port number, run the following SQL (the port is changed to 8181 in the example below) and restart the database:

```sql
SQL> begin
dbms_xdb.sethttpport('8181');
end;
/
```

If you want to disable the HTTP access altogether, you can set the port number to 0.

There are also similar methods `dbms_xdb.getftpport` and `dbms_xdb.setftpport`, although I am not sure in what context FTP is used with Oracle XE. By default the port is 0, i.e. disabled.
