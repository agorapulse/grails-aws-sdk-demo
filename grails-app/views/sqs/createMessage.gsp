<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title><g:message code="default.show.label" args="[params.id]" /></title>
</head>
<body>
<g:render template="nav"/>
<div id="show-bar" class="content scaffold-show" role="main">
    <h1><g:message code="default.send.message.label" args="[params.id]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:form action="send" id="${params.id}">
        <fieldset class="form">
            <div class="fieldcontain required">
                <label for="messageBody">Message body
                    <span class="required-indicator">*</span>
                </label>
                <textarea id="messageBody" name="messageBody"></textarea>
            </div>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="send" class="save" value="${message(code: 'default.button.send.message.label', default: 'Send message')}" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
