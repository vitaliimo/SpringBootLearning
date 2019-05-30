<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
    Add a new user
    ${message?if_exists}
    <@l.login "/registration" />
</@c.page>