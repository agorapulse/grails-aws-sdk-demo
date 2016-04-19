<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title><g:message code="default.show.label" args="[params.id]" /></title>
</head>
<body>
<g:render template="nav"/>
<div id="show-bar" class="content scaffold-show" role="main">
    <h1><g:message code="default.receive.messages.label" args="[params.id]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
        <table>
            <thead>
            <tr>
                <th width="25%">Messages</th>
                <th>Body</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
        <g:each in="${messages}" var="message">
            <tr>
                <td>
                    ${message.messageId}
                </td>
                <td>
                    ${message.body}
                </td>
                <td>
                    <g:form action="deleteMessage" id="${params.id}" method="DELETE">
                        <input type="hidden" name="receiptHandle" value="${message.receiptHandle}"/>
                        <input class="delete" type="submit" value="Delete" />
                    </g:form>
                </td>
            </tr>
        </g:each>
        <g:if test="${!messages}">
            <tr>
                <td colspan="3">
                    No message received
                </td>
            </tr>
        </g:if>
        </tbody>
    </table>
    <g:form action="receiveMessages" id="${params.id}">
        <%-- <fieldset class="form">
            <div class="fieldcontain required">
                <label for="maxNumberOfMessages">Max number of messages
                    <span class="required-indicator">*</span>
                </label>
                <g:select name="maxNumberOfMessages" from="${1..10}"/>
            </div>
        </fieldset> --%>
        <fieldset class="buttons">
            <g:link class="edit" action="createMessage" id="${params.id}"><g:message code="default.new.label" args="['message']"  default="New" /></g:link>
            <g:submitButton name="receiveMessages" class="edit" value="${message(code: 'default.button.receive.messages.label', default: 'Receive messages')}" />
            <g:link action="show" id="${params.id}">Back to queue</g:link>
        </fieldset>
    </g:form>
</div>
</body>
</html>
