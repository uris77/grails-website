<html>
<head>
    <meta name="layout" content="admin"/>
</head>

<body>

<h1 class="page-header">
    ${plugin.title}
    <span class="pull-right">
        <g:form>
            <g:hiddenField name="id" value="${plugin?.id}"/>
            <g:link class="btn" action="list">Plugin List</g:link>
            <g:actionSubmit class="btn btn-info" action="edit" value="Edit"/>
        </g:form>
    </span>
</h1>

<g:if test="${flash.message}">
    <div class="alert alert-info">${flash.message}</div>
</g:if>

<table class="table table-bordered table-striped">
    <tbody>

    <tr>
        <td class="show-label" nowrap="nowrap" style="width: 150px;">ID</td>
        <td class="show-value">${fieldValue(bean: plugin, field: "id")}</td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">Name</td>
        <td class="show-value">${fieldValue(bean: plugin, field: "name")}</td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">Description</td>
        <td class="show-value">${plugin?.description?.body}</td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">Installation</td>
        <td class="show-value"><code>${plugin?.installation?.body}</code></td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">Dependency</td>
        <td class="show-value"><code>${plugin?.defaultDependencyScope} ${plugin?.dependencyDeclaration}</code></td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">Last Released</td>
        <td class="show-value">${plugin?.lastReleased}</td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">Current Release</td>
        <td class="show-value">${plugin?.currentRelease}</td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">FAQ</td>
        <td class="show-value">${plugin?.faq?.body}</td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">Author</td>
        <td class="show-value">
            ${plugin?.author}
            <g:if test="${plugin?.authorEmail}">(<a
                    href="mailto:${plugin?.authorEmail}">${plugin?.authorEmail}</a>)</g:if>
        </td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">Grails Version</td>
        <td class="show-value">${plugin?.grailsVersion}</td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">Date Created</td>
        <td class="show-value">${plugin?.dateCreated}</td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">Last Updated</td>
        <td class="show-value">${plugin?.lastUpdated}</td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">Documentation URL</td>
        <td class="show-value">${plugin?.documentationUrl}</td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">Download URL</td>
        <td class="show-value">${plugin?.downloadUrl}</td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">Featured?</td>
        <td class="show-value">${plugin?.featured}</td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">Official?</td>
        <td class="show-value">${plugin?.official}</td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">Avg Rating</td>
        <td class="show-value">${plugin?.avgRating}</td>
    </tr>
    <tr>
        <td class="show-label" nowrap="nowrap">FishEye</td>
        <td class="show-value">${plugin?.fisheye}</td>
    </tr>

    </tbody>
</table>

</body>
</html>
