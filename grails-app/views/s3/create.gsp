<!doctype html>
<html>
<head>
    <meta name="layout" content="main" />
    <title><g:message code="default.create.label" args="['bucket']" /></title>
</head>
<body>
<g:render template="nav"/>
<div class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="['bucket']" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:form action="save">
        <fieldset class="form">
            <div class="fieldcontain required">
                <label for="bucketName">Bucket name
                    <span class="required-indicator">*</span>
                </label>
                <input type="text" name="bucketName" value="" required="" id="bucketName">
            </div>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
