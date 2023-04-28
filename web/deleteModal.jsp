<div class="modal fade" id="deleteStudent" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/delete-student" method="post">
                <input type="hidden" name="id" value="<%=student.getId()%>">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" >Confirm Delete</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <h5 class="text-center"> Are you sure?</h5>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                    <button class="btn btn-danger">YES</button>
                </div>
            </form>
        </div>
    </div>
</div>