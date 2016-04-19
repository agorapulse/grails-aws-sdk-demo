<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title><g:message code="default.show.label" args="[params.id]" /></title>
</head>
<body>
<g:render template="nav"/>
<div id="show-bar" class="content scaffold-show" role="main">
    <h1><g:message code="default.send.file.label" args="[params.id]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:uploadForm action="upload" id="${params.id}" name="myUpload">
        <fieldset class="form">
            <div class="fieldcontain">
                <input id="file" type="file" name="file"/>
            </div>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="send" class="save" value="${message(code: 'default.button.send.file.label', default: 'Send file')}" />
        </fieldset>
    </g:uploadForm>
</div>
</body>
</html>
