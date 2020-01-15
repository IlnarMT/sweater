<#import "parts/common.ftl" as c>

<@c.page>

<h2>Список пользователей<span class="badge badge-secondary"></span></h2>
<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Имя пользователя</th>
        <th scope="col">Роли</th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
    <#list users as user>
    <tr>
        <th scope="row">1</th>
        <td>${user.username}</td>
        <td><#list user.roles as role>${role}<#sep>, </#list></td>
        <td><a href="/user/${user.id}">edit</a></td>
    </tr>
    </#list>
    </tbody>
</table>

</@c.page>