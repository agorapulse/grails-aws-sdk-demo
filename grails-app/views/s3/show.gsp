<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title><g:message code="default.show.label" args="[params.id]" /></title>
</head>
<body>
<g:render template="nav"/>
<div id="show-bar" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[params.id]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list">
        <g:each in="${objectSummaries}" var="objectSummary">
            <li class="fieldcontain">
                <span id="title-label" class="property-label">
                    Key
                </span>
                <div class="property-value" aria-labelledby="title-label">
                    <strong>${objectSummary.key}</strong>
                    (<g:link action="deleteFile" id="${params.id}" params="${[key: objectSummary.key]}">Delete</g:link>)
                </div>
            </li>
        </g:each>
        <g:if test="${!objectSummaries}">
            No files
        </g:if>
    </ol>
    <g:form action="delete" id="${params.id}" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="createFile" id="${params.id}"><g:message code="default.new.label" args="['file']"  default="New" /></g:link>
            <input class="delete" type="submit" value="${message(code: 'default.button.delete.bucket.label')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
