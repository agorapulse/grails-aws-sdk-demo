<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails AWS SDK - SES</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<div class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="['mail']" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:form action="send">
        <fieldset class="form">
            <div class="fieldcontain required">
                <label for="destinationEmail">To
                    <span class="required-indicator">*</span>
                </label>
                <input type="text" name="destinationEmail" value="" required="" id="destinationEmail">
            </div>
            <div class="fieldcontain required">
                <label for="subject">Subject
                    <span class="required-indicator">*</span>
                </label>
                <input type="text" name="subject" value="" required="" id="subject">
            </div>
            <div class="fieldcontain required">
                <label for="htmlBody">HTML body
                    <span class="required-indicator">*</span>
                </label>
                <textarea id="htmlBody" name="htmlBody"></textarea>
            </div>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="${message(code: 'default.button.send.email.label', default: 'Send')}" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
