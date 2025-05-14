<?php
include_once("../libs/dbfunctions.php");
$dbobject = new dbobject();
$sql = "SELECT DISTINCT(State) as state,stateid FROM lga order by State";
$states = $dbobject->db_query($sql);

$sql2 = "SELECT bank_code,bank_name FROM banks WHERE bank_type = 'commercial' order by bank_name";
$banks = $dbobject->db_query($sql2);

$sql_pastor = "SELECT username,firstname,lastname FROM userdata WHERE role_id = '003'";
$pastors = $dbobject->db_query($sql_pastor);

$sql_ch_type = "SELECT id,name FROM church_type";
$church_type = $dbobject->db_query($sql_ch_type);

$sql_church = "SELECT * FROM church_table";
    $churches = $dbobject->db_query($sql_church);
$user_role = $_SESSION['role_id_sess'];
if($user_role == 001)
{
    $sql_role = "SELECT * FROM role WHERE role_id IN ('003','005','006','007') ";
}elseif($user_role == 005)
{
    $sql_role = "SELECT * FROM role WHERE role_id = '003' ";
}else
{
    $sql_role = "SELECT * FROM role WHERE role_id <> '001' AND role_id <> '$user_role' AND role_id NOT IN ('003','005','006','007')";
}

    $roles = $dbobject->db_query($sql_role);

if(isset($_REQUEST['op']) && $_REQUEST['op'] == 'edit')
{
    $username  = $_REQUEST['username'];
    $user      = $dbobject->db_query("SELECT * FROM userdata WHERE username='$username'");
    $operation = 'edit';
}
else
{
    $operation = 'new';
}
?>
 
<script>
    doOnLoad();
    var myCalendar;
function doOnLoad()
{
   myCalendar = new dhtmlXCalendarObject(["start_date"]);
   myCalendar.hideTime();
}
</script>
<style>
    #login_days>label{
        margin-right: 10px;
    }
    .asterik
    {
        color:red;
    }
</style>
<div class="modal-header">
    <h4 class="modal-title" style="font-weight:bold"><?php echo ($operation=="edit")?"Edit ":""; ?>Student Setup<div><small style="font-size:12px">All asterik fields are compulsory</small></div></h4>
    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">×</span>
    </button>
</div>
<div class="modal-body m-3 ">
    <form id="form1" onsubmit="return false" autocomplete="off">
       <input type="hidden" name="op" value="Users.saveStudent">
       <input type="hidden" name="operation" value="<?php echo $operation; ?>">
       
       <div class="row" style="<?php echo ($operation == "edit")?"display:none":""; ?>">
           <div class="col-sm-6">
                       
            <?php
            if($operation == "edit")
            {
            ?>
                <input type="hidden" name="fullname" class="form-control" value="<?php echo $username; ?>" placeholder="" autocomplete="off">
            <?php
            }
           ?>
         <div class="form-group">
                    <label class="form-label">Full Name<span class="asterik">*</span></label><small style="float:right;color:red">The student name has to be in full</small>
                    <input type="text" name="fullname" <?php echo ($operation == "edit")?"disabled":""; ?> class="form-control" value="<?php echo ($operation == "edit") ? $fullname : ""; ?>" placeholder="" autocomplete="off">
                    
                </div>
           </div>
           <div class="col-sm-6">
               <div class="form-group">
                    <label class="form-label">Phone Number<span class="asterik">*</span></label>
                    <input type="number" name="phone" value="<?php echo ($operation == "edit") ? $user[0]['lastname'] : "" ?>" class="form-control" autocomplete="off">
                </div>
                
           </div>
           
        </div>
        
            
        <div class="row">
            
            <div class="col-sm-6">
               <div class="form-group">
                    <label class="form-label">Address<span class="asterik">*</span></label>
                    <input type="text" name="address" <?php echo ($operation == "edit")?"disabled":""; ?> class="form-control" value="<?php echo ($operation == "edit") ? $address : ""; ?>" placeholder="" autocomplete="off">
                    
                </div>
           </div>
        </div>
        
      
        <div class="row">
           <div class="col-sm-12">
               <div class="form-group" >
                  <br>
                   
                </div>
            </div>
            
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div id="server_mssg"></div>
            </div>
        </div>
        <?php include("form-footer.php"); ?>
        <button id="save_facility" onclick="saveRecord1()" class="btn btn-primary">Submit</button>
    </form>
</div>
<script>
    function saveRecord1()
    {
        $("#save_facility").text("Loading......");
        var dd = $("#form1").serialize();
        $.post("utilities.php",dd,function(re)
        {
            console.log(re);
            $("#save_facility").text("Save");
            if(re.response_code == 0)
                {
                    $("#server_mssg").text(re.response_message);
                    $("#server_mssg").css({'color':'green','font-weight':'bold'});
                    getpage('manage_record.php','page');
                    setTimeout(()=>{
                        $('#defaultModalPrimary').modal('hide');
                    },1000)
                }
            else
                {
                   
                    $("#server_mssg").text(re.response_message);
                     $("#server_mssg").css({'color':'red','font-weight':'bold'});
                }
                
        },'json');
    }
    if($("#sh_display").is(':checked'))
        {
            
        }

</script>