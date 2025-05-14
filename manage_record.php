<?php
include_once("libs/dbfunctions.php");
//var_dump($_SESSION);
?>
<style>

</style>
<div class="card">
    <div class="card-header">
        <h5 class="card-title">Student List</h5>
        <h6 class="card-subtitle text-muted">The report contains Students that have been setup in the system.</h6>
    </div>
    <div class="card-body">
        <div class="row">
            <?php
            if ($_SESSION['role_id_sess'] == 003 || $_SESSION['role_id_sess'] == 001 || $_SESSION['role_id_sess'] == 005) {
            ?>
                <div class="col-sm-2">
                    <a class="btn btn-warning" onclick="loadModal('setup/student.php','modal_div')" href="javascript:void(0)" data-toggle="modal" data-target="#defaultModalPrimary">Create Student</a>
                </div>
            <?php
            }
            ?>
        </div>

        <div id="datatables-basic_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
            <div class="row">
                <div class="col-sm-3">
                    <label for=""></label>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 table-responsive">
                    <table id="page_list" class="table table-striped" style="width:100%">

                        <thead>
                            <tr role="row">
                                <!-- <th>S/N</th> -->
                                <th>S/N</th>
                                <th>Full Name</th>
                                <th>Phone</th>
                                <th>Address</th>
                                <th style="width:500px">Action</th>
                                <th>Created</th>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!--<script src="../js/sweet_alerts.js"></script>-->
<!--<script src="../js/jquery.blockUI.js"></script>-->
<script>
    var table;
    var editor;
    var op = "Users.studentlist";
    $(document).ready(function() {
        table = $("#page_list").DataTable({
            "sDom": '<"top"i>rt<"bottom"flp><"clear">',
            processing: true,
            columnDefs: [{
                    orderable: false,
                    targets: 0
                },
                {
                    width: "3100",
                    targets: "3"
                }
            ],
            serverSide: true,
            paging: true,
            oLanguage: {
                sEmptyTable: "No record was found, please try another query"
            },
            ajax: {
                url: "utilities.php",
                type: "POST",
                data: function(d, l) {
                    d.op = "Users.studentlist";
                    d.li = Math.random();
                },
                error: function(xhr, error, thrown) {
                    console.error('DataTables error:', error, thrown);
                    alert('Error loading data. Please try again.');
                }
            }
        });

        // Remove any existing click handlers first
        $(document).off('click', '.btn-danger');
        
        // Add the click handler
        $(document).on('click', '.btn-danger', function(e) {
            e.preventDefault();
            e.stopPropagation();
            var studentId = $(this).data('student-id');
            console.log('Delete button clicked for student:', studentId);
            deleteStudent(studentId);
        });
    });

    function do_filter() {
        table.draw();
    }

    function editStudent(studentId) {
        loadModal('setup/student.php?op=edit&username=' + studentId, 'modal_div');
    }

    function deleteStudent(studentId) {
    if (confirm('Are you sure you want to delete this student?')) {
        $.ajax({
            url: 'utilities.php',
            type: 'POST',
            data: {
                op: 'Users.deleteStudent',
                student_id: studentId
            },
            dataType: 'json',
            beforeSend: function() {
                // Optional: show loader
            },
            success: function(response) {
                if (response.response_code == 0) {
                    alert('Student deleted successfully');
                    getpage('manage_record.php', 'page');
                    // table.ajax.reload(null, false);
                } else {
                    alert('Error: ' + response.response_message);
                }
            },
            error: function(xhr, status, error) {
                console.error('Delete error:', error);
                alert('An error occurred while deleting the student.');
            }
        });
    }
}

</script>