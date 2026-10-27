+++
title = "Reading cookies in BIRT"
date = 2010-03-01T13:29:15Z

[taxonomies]
tags = ["birt", "Business Intelligence"]
+++

It is fairly straightforward to read a value stored in a cookie. This can have many uses, for example if the landing page for your reporting application needs to pass some values to your reports but you don't want them visible in the URL.

The code sample below retrieves the value of a cookie and stores it in a global variable. The code could be placed in one of the startup methods, such as the report's `initialize`.

`// name of the cookie to read
var cookiename = "birtcookie";
// variable to hold cookie value
var cookieval = "";
// get the value from the cookie
var request = reportContext.getHttpServletRequest();
var cookies = request.getCookies();
for( var i = 0; i < cookies.length; i++ )
{
  if( cookies[i].getName().equals( cookiename ) )
  {
    cookieval = cookies[i].getValue();
  }
}
// store value in a global variable
reportContext.setPersistentGlobalVariable( "cookieval", cookieval );`
