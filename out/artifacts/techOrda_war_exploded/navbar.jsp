<%@ page import="db.Users" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Users currentUser = (Users) session.getAttribute("currentUser");
%>
<div class="navbar">
            <link rel="stylesheet" href="./css/style.css">
            <div>
                <strong>BITLAB SHOP</strong>
            </div>
            <div id="navbar">
                <a class="navbuttons" href="/">Top Sales</a>
                <a class="navbuttons" href="/" data-bs-toggle="modal" data-bs-target="#addTask">
                    New Sales
                </a>
                <a class="navbuttons" href="/">By Category</a>

                <%
                    if (currentUser!=null){
                %>
                <a class="navbuttons" href="/logout ">Logout</a>
                <%
                    }else {
                %>
                <a class="navbuttons" href="/login">Sign In</a>
                <%
                    }
                %>
                <div class="modal fade" id="addTask" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="staticBackdropLabel">New Item</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <form action="/add-task" method="post">
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-12">
                                            <label> Name : </label>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <input type="text" class="form-control" name="item_name">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <label> Description : </label>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <textarea class="form-control" name="item_description"></textarea>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12">
                                            <label> Price : </label>
                                        </div>
                                    </div>
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <input type="number" class="form-control" name="item_price">
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                                    <button class="btn btn-primary">Добавить</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
</div>


