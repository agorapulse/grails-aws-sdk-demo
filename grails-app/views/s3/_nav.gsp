<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <g:if test="${params.action != 'index'}">
            <li><g:link class="list" action="index"><g:message code="default.list.label" args="['Bucket']" /></g:link></li>
        </g:if>
        <g:if test="${params.action != 'create'}">
            <li><g:link class="create" action="create"><g:message code="default.new.label" args="['Bucket']" /></g:link></li>
        </g:if>
    </ul>
</div>