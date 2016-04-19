<%@ page import="java.nio.charset.Charset" %>
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
                <th width="25%">Sequence number</th>
                <th>Data</th>
                <th>Partition key</th>
            </tr>
            </thead>
            <tbody>
            <g:set var="decoder" value="${java.nio.charset.Charset.forName('UTF-8').newDecoder()}"/>
        <g:each in="${records}" var="record">
            <tr>
                <td>
                    ${record.sequenceNumber}
                </td>
                <td>
                    ${decoder.decode(record.data).toString()}
                </td>
                <td>
                    ${record.partitionKey}
                </td>
            </tr>
        </g:each>
        <g:if test="${!records}">
            <tr>
                <td colspan="3">
                    No records
                </td>
            </tr>
        </g:if>
        </tbody>
    </table>
    <fieldset class="buttons">
        <g:link class="edit" action="createRecord" id="${params.id}"><g:message code="default.new.label" args="['record']"  default="New" /></g:link>
        <g:link class="edit" action="listRecords" id="${params.id}"><g:message code="default.button.list.records.label" default="List" /></g:link>
        <g:link action="show" id="${params.id}">Back to stream</g:link>
    </fieldset>
</div>
</body>
</html>
