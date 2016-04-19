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
        <g:each in="${queueAttributes}" var="queueAttribute">
            <li class="fieldcontain">
                <span id="title-label" class="property-label">
                    ${queueAttribute.key}
                </span>
                <div class="property-value" aria-labelledby="title-label">
                    <strong>${queueAttribute.value}</strong>
                </div>
            </li>
        </g:each>
    </ol>
    <g:form action="delete" id="${params.id}" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="createMessage" id="${params.id}"><g:message code="default.new.label" args="['message']"  default="New" /></g:link>
            <g:link class="edit" action="receiveMessages" id="${params.id}"><g:message code="default.button.receive.messages.label" default="Receive" /></g:link>
            <input class="delete" type="submit" value="${message(code: 'default.button.delete.queue.label')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
