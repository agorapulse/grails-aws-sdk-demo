<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails AWS SDK - SQS</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<g:render template="nav"/>
<div id="list-fooItem" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="['Queue']" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <table>
        <thead>
        <tr>
            <th>Queues</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${queueNames}" var="queueName" status="i">
            <tr class="${ (i % 2) == 0 ? 'odd' : 'even'}">
                <td><g:link action="show" id="${queueName}">${queueName}</g:link></td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>
