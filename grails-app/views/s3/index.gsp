<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails AWS SDK - S3</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<g:render template="nav"/>
<div id="list-fooItem" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="['Bucket']" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <table>
        <thead>
        <tr>
            <th>Buckets</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${bucketNames}" var="bucketName" status="i">
            <tr class="${ (i % 2) == 0 ? 'odd' : 'even'}">
                <td><g:link action="show" id="${bucketName}">${bucketName}</g:link></td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>
