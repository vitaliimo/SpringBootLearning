<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>

    <div><@l.logout /></div>

    <div>
        <form method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <input type="text" , name="text" , placeholder="Put your message here:">
            <input type="text" , name="tag" , placeholder="tag">
            <button type="submit">Add</button>
        </form>
    </div>

    <div>Message list:</div>

    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter}">
        <button type="submit">Filter</button>
    </form>

    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
        No messages here.
    </#list>

</@c.page>