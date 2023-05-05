<%@ page import="java.util.ArrayList" %>
<%@ page import="db.Items" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container-fluid mt-5 pb-5">
    <%
        Items item = (Items) request.getAttribute("towar");
        if (item != null) {
    %>
    <%
            }else {
    %>
    <h3 class="text-center"> You have successfully purchased the item </h3>
    <%
        }
    %>
</div>
        <script src="/js/bootstrap.bundle.js"></script>
</body>
</html>