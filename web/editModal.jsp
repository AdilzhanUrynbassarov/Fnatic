<div class="modal fade" id="editStudent" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="staticBackdropLabel">Modal title</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                <form action="/save-student" method="post">
                    <input type="hidden" name="id" value="<%=student.getId()%>"> <!--часто используемая всеми имба фигня для того чтобы узнать сразу же допустим ID для сервлета при EDIT, особеннов в ВК -->
                    <div class="row">
                        <div class="col-12">
                            <label>NAME:</label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="text" class="form-control" name="student_name" value="<%=student.getName()%>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <label>SURNAME:</label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="text" class="form-control" name="student_surname" value="<%=student.getSurname()%>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <label>BIRTHDATE:</label>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <input type="date" class="form-control" name="student_birthdate" value="<%=student.getBirthdate()%>">
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
                                <option <%=(student.getCity().equals("Almaty")?"selected":"")%>>Almaty</option>
                                <option <%=(student.getCity().equals("Astana")?"selected":"")%>>Astana</option>
                                <option <%=(student.getCity().equals("Shymkent")?"selected":"")%>>Shymkent</option>
                                <option <%=(student.getCity().equals("Oral")?"selected":"")%>>Oral</option>
                            </select>
                        </div>
                    </div>

                    <div class="row mt-3">
                        <div class="col-12">
                            <button class="btn btn-primary">SAVE STUDENT</button>
                        </div>
                    </div>
                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>