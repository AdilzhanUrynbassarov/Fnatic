<%--
  Created by IntelliJ IDEA.
  User: adik
  Date: 4/20/23
  Time: 01:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="head.jsp"%>
<%@include file="navbar.jsp"%>
<div class="container mt-5">
    <div class="row">
        <div class="col-6 mx-auto">
            <form action="/add-student" method="post">
                <div class="row">
                    <div class="col-12">
                        <label>NAME:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" name="student_name">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>SURNAME:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" name="student_surname">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>BIRTHDATE:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="date" class="form-control" name="student_birthdate">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>CITY:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <select class="form-select" name="student_city">
                            <option>Almaty</option>
                            <option>Astana </option>
                            <option>Shymkent</option>
                            <option>Oral</option>
                        </select>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <button class="btn btn-success">ADD STUDENT</button>
                    </div>
                </div>


            </form>
        </div>
    </div>
</div>
