<%@ page import="sprint_task.Items" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: adik
  Date: 4/22/23
  Time: 03:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>

<div class="container mt-5 mb-5 mx-auto ps-sm-5 pe-sm-5">
    <div class="row text-center" >
        <h1>Welcome to BITLAB SHOP</h1>
    </div>
    <div class="row text-center">
        <p>Electronic devices with high quaility</p>
    </div>


</div>

<div class="container mt-2 mx-auto ps-sm-5 pe-sm-5">



    <div class="row row-cols-1 row-cols-md-3 g-4 pb-5">
        <%
            ArrayList<Items> items = (ArrayList<Items>)request.getAttribute("itemy");
            if (items!=null) {
                for (Items item: items) {
        %>
        <div class="col">
            <div class="card h-100">
                <div class="card-header">
                    <h3 class="text-center mt-2"><%=item.getName()%></h3>
                </div>

                <div class="card-body">
                    <h4 class="card-title text-center mt-2 pb-4 text-success">$<%=item.getPrice()%></h4>
                        <p class="card-text text-center text-wrap mx-5 px-sm-5 "><%=item.getDescription()%></p>

                </div>
                <div class="container mt-2 text-center">
                    <button class="btn btn-success mb-3" >Buy Now</button>
                </div>
            </div>
        </div>

        <%
            }
            }
        %>

    </div>
</div>


</body>
</html>
