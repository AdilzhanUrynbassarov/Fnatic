<%@ page import="java.util.ArrayList" %>
<%@ page import="labs_jdbc.Student" %>
<%@ page import="labs_jdbc.DBConnection" %><%--
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
                        <th>NAME</th>
                        <th>SURNAME</th>
                        <th>BIRTHDATE</th>
                        <th>CITY</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        ArrayList<Student> students = (ArrayList<Student>)request.getAttribute("studenty");
                        if (students!=null) {
                            for (Student student: students) {
                    %>
                    <tr>
                        <td><%=student.getId()%></td>
                        <td><%=student.getName()%></td>
                        <td><%=student.getSurname()%></td>
                        <td><%=student.getBirthdate()%></td>
                        <td><%=student.getCity()%></td>
                        <td><a href="/details-student?student_id=<%=student.getId()%>" class="btn btn-success btn-sm">DETAILS</a></td>
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
