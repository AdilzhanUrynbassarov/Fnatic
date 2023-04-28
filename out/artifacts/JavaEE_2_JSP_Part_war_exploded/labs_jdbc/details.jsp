<%@ page import="java.util.ArrayList" %>
<%@ page import="labs_jdbc.Student" %><%--
  Created by IntelliJ IDEA.
  User: adik
  Date: 4/9/23
  Time: 23:08
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
<div class="container mt-5 pb-5">
    <%
        Student student = (Student) request.getAttribute("student");
        if(student!=null) {
    %>
    <div class="row">
        <div class="col-6 mx-auto">

            <div class="row">
                <div class="col-12">
                    <label>NAME:</label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <input type="text" class="form-control" readonly value="<%=student.getName()%>">
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <label>SURNAME:</label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <input type="text" class="form-control" readonly value="<%=student.getSurname()%>">
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-12">
                    <label>BIRTHDATE:</label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-12">
                    <input type="text" class="form-control" readonly value="<%=student.getBirthdate()%> ">
                </div>
            </div>

            <div class="row mt-3">
                <div class="col-12">
                    <button type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#editStudent">
                        EDIT BOOK
                    </button>

                    <button type="button" class="btn btn-danger btn-sm ms-2" data-bs-toggle="modal" data-bs-target="#deleteStudent">
                        DELETE BOOK
                    </button>
                </div>
            </div>



            <!-- Modal -->

            <%@include file="deleteModal.jsp"%>
            <%@include file="editModal.jsp"%>



        </div>
        <%
        } else {

        %>

        <h3 class="text-center">BOOK NOT FOUND</h3>
        <%
            }
        %>
    </div>

</div>
</div>

</body>
</html>
