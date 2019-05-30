<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
This is login page
<@l.login "/login" />
<a href="/registration">Add a new user</a>
</@c.page>