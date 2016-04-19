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
        <li class="fieldcontain">
            <span class="property-label">
                Stream status
            </span>
            <div class="property-value">
                <strong>${streamDescription.streamStatus}</strong>
            </div>
        </li>
        <li class="fieldcontain">
            <span class="property-label">
                Retention period
            </span>
            <div class="property-value">
                <strong>${streamDescription.retentionPeriodHours} hours</strong>
            </div>
        </li>
        <li class="fieldcontain">
            <span class="property-label">
                Shards
            </span>
            <div class="property-value">
                <g:each in="${streamDescription.shards}" var="shard">
                    <strong>${shard.shardId}</strong><br/>
                </g:each>
            </div>
        </li>
    </ol>
    <g:form action="delete" id="${params.id}" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="createRecord" id="${params.id}"><g:message code="default.new.label" args="['record']"  default="New" /></g:link>
            <g:link class="edit" action="listRecords" id="${params.id}"><g:message code="default.button.list.records.label" default="List" /></g:link>
            <input class="delete" type="submit" value="${message(code: 'default.button.delete.stream.label')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
</div>
</body>
</html>
