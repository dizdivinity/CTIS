

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'congestionCause.label', default: 'CongestionCause')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir: '')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'congestionCause.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="reason" title="${message(code: 'congestionCause.reason.label', default: 'Reason')}" />
                        
                            <g:sortableColumn property="imageSrc" title="${message(code: 'congestionCause.imageSrc.label', default: 'Image Src')}" />
                        
                            <g:sortableColumn property="iconName" title="${message(code: 'congestionCause.iconName.label', default: 'Icon Name')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${congestionCauseInstanceList}" status="i" var="congestionCauseInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${congestionCauseInstance.id}">${fieldValue(bean: congestionCauseInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: congestionCauseInstance, field: "reason")}</td>
                        
                            <td>${fieldValue(bean: congestionCauseInstance, field: "imageSrc")}</td>
                        
                            <td>${fieldValue(bean: congestionCauseInstance, field: "iconName")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${congestionCauseInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
