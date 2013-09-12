<%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 03/07/12
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
<h1>Buckets</h1>
<ul>
<g:each in="${buckets}" var="bucket">
    <li><b>${bucket.name}</b> - ${bucket.creationDate}</li>
</g:each>
</ul>
</body>
</html>