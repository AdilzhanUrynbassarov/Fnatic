<%@ page import="java.util.ArrayList" %>
<%@ page import="labs_jdbc.Student" %>
<%@ page import="labs_jdbc.DBConnection" %>
<%@ page import="pixiv.Posts" %><%--
  Created by IntelliJ IDEA.
  User: adik
  Date: 4/20/23
  Time: 01:12
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
<div class="container">

  <div class="row mt-3">
    <div class="col-12">
      <table class="table table-striped table-hover">
        <thead>
        <tr>
          <th>ID</th>
          <th>FULL_NAME</th>
          <th>IMAGE</th>

        </tr>
        </thead>
        <tbody>
        <%
          ArrayList<Posts> posts = (ArrayList<Posts>)request.getAttribute("posty");
          if (posts!=null) {
            for (Posts post: posts) {
        %>
        <tr>
          <td><%=post.getId()%></td>
          <td><%=post.getName()%></td>
          <td><%=post.getImage()%></td>
<%--          <td><a href="/details-student?student_id=<%=post.getId()%>" class="btn btn-success btn-sm">DETAILS</a></td>--%>
        </tr>

        <%
            }
          }
        %>
        </tbody>
      </table>
    </div>
  </div>
</div>

</body>
</html>
