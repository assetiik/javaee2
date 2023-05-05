<%@ page import="java.util.ArrayList" %>
<%@ page import="db.Items" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css.css">
</head>
<body>
    <%@include file="navbar.jsp"%>
                <div class="container" style="margin-top: 60px">
                    <%ArrayList<Items> items = (ArrayList<Items>) request.getAttribute("item");%>
                    <div class="content">
                        <div class="main-text">
                            <center>
                                <div><h1>Welcome TO BITLAB SHOP</h1></div>
                                <div><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></div>
                            </center>
                        </div>
                        <div class="main-items">
                            <div class="items">
                                <% for (Items item : items) {%>
                                <div class="card bg-light mb-3"
                                     style="max-width: 18rem;box-shadow: 2px 2px 2px 2px rgba(0.6, 0.6, 0.6, 0.6);">
                                    <div class="card-header">
                                        <center><h2><%=item.getName()%>
                                        </h2></center>
                                    </div>
                                    <div class="card-body">
                                        <center>
                                            <h3 class="card-title"><%=item.getPrice()%>$</h3>
                                            <div><%=item.getDescription()%>
                                            </div>
                                        </center>
                                        <a href="/buyitem" class="btn btn-success"
                                           style="width: 16rem;margin-top: 10px">Buy Now</a>
                                    </div>
                                </div>
                                <%}%>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="/js/bootstrap.bundle.js"></script>
</body>
</html>
