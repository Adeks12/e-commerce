<?php
include_once("libs/dbfunctions.php");
$dbobject = new dbobject();
$sql = "SELECT DISTINCT(State) as state,stateid FROM lga  order by State";
$states = $dbobject->db_query($sql);

$sql = "SELECT * FROM church_type WHERE id NOT IN ('5','1')";
$c_type = $dbobject->db_query($sql);

$sql = "SELECT * FROM church_table";
$churches = $dbobject->db_query($sql);

?>
  <style>
    fieldset 
    { 
    display: block;
    margin-left: 2px;
    margin-right: 2px;
    padding-top: 0.35em;
    padding-bottom: 0.625em;
    padding-left: 0.75em;
    padding-right: 0.75em;
    border: 1px solid #ccc;
    }
    
    legend
    {
        font-size: 14px;
        padding: 5px;
        font-weight: bold;
    }
</style>
   <div class="card">
    <div class="card-header">
        <h5 class="card-title">Transaction List</h5>
        <h6 class="card-subtitle text-muted">The report contains distribution of each collection that has been posted.</h6>
    </div>
    <div class="card-body">
     <?php
        if(!isset($_REQUEST['c_type']))
        {
    ?>
          <div class="row">
              <div class="col-sm-4">
                  <fieldset class="form-group">
                      <legend style="color:red; font-weight:bold">Filter Options</legend>
                      <label for="branch_filter">
                         <input type="radio" onclick="hide_div(this)" id="branch_filter" name="filter" checked value="branch">&nbsp;Church Branch
                      </label>&nbsp;&nbsp;&nbsp;&nbsp;
                      <label for="c_type_filter">
                          <input type="radio" id="c_type_filter" onclick="hide_div(this)" name="filter" value="church_type">&nbsp;Church Type
                      </label>
                      <input type="hidden" id="filter" value="branch">
                  </fieldset>
              </div>
          </div>
      <?php
        }else
        {
            echo '<input type="hidden" id="filter" value="church_type">';
        }
      ?>
       <div class="row" style="margin-bottom:20px">
             <div class="col-sm-2">
                 <label for="state">State:</label>
                 <select onchange="churchByState(this.value)" id="state" class="form-control">
                     <option value="">:: ALL STATE ::</option>
                     <?php
                     foreach($states as $row)
                     {
                         echo "<option value='".$row['stateid']."'>".$row['state']."</option>";
                     }
                     ?>
                 </select>
             </div>
             <div class="col-sm-3" id="churches_div">
                 <label for="region" style="color:blue">Church:</label>
                 <select id="churches" class="form-control">
                     <option value="">:: ALL Churches ::</option>
                     <?php
                        foreach($churches as $row)
                        {
                            echo "<option value='".$row['church_id']."'>".$row['church_name']."</option>";
                        }
                     ?>
                 </select>
             </div>
<!--
             <div class="col-sm-2">
                 <label for="lga">LGA:</label>
                 <select id="lga-fd" class="form-control">
                     <option value="">:: ALL Local Government ::</option>
                 </select>
             </div>
-->
             <div class="col-sm-2" id="region_div" style="display:none">
                 <label for="region" style="color:blue">Church Type:</label>
                 <select id="region" class="form-control">
                     <option value="">:: ALL Church Types ::</option>
                     <?php
                        foreach($c_type as $row)
                        {
                            echo "<option value='".$row['id']."'>".$row['name']."</option>";
                        }
                     ?>
                 </select>
             </div>
             
             <div class="col-sm-2">
                 <label for="region">Collection Flow:</label>
                 <select id="payment" class="form-control">
                     <option value="">:: ALL Collections ::</option>
                     <option value="received">Received Collections</option>
                     <option value="paid">Paid Collections</option>
                 </select>
             </div>
             <div class="col-sm-2">
                 <label for="search">&nbsp;</label>
                 <button onclick="do_filter()" id="search" class="btn btn-info btn-block">Search</button>
             </div>
         </div>
        <div id="datatables-basic_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
            <div class="row">
                <div class="col-sm-12 table-responsive">
                    <table id="page_list" class="table table-striped " >
                        <thead>
                            <tr role="row">
                                <th>S/N</th>
                                <th>Paying Church</th>
                                <th>Recieving Church</th>
                                <th>Church Body</th>
                                <th>Recieving Account No.</th>
                                <th>Recieving Bank Name</th>
                                <th>Recieving Account Name</th>
                                <th>Amount to Recieve</th>
                                <th>Payment ID</th>
                                <th>Description</th>
                                <th>Payment Status Code</th>
                                <th>Payment Status Message</th>
                                <th>Percentage Share</th>
                                <th>Action</th>
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
  var op = "Transaction.transactionList";
  $(document).ready(function() {
    table = $("#page_list").DataTable({
      processing: true,
      columnDefs: [{
        orderable: false,
        targets: 0
      }],
      serverSide: true,
      paging: true,
      oLanguage: {
        sEmptyTable: "No record was found, please try another query"
      },

      ajax: {
        url: "utilities.php",
        type: "POST",
        data: function(d, l) {
          d.op = op;
          d.li = Math.random();
          d.state    = $("#state").val();
          d.payment  = $("#payment").val();
          d.filter   = $("#filter").val();
          d.churches = $("#churches").val();
          d.region = $("#region").val();
//          d.end_date = $("#end_date").val();
        }
      }
    });
  });

  function do_filter() {
    table.draw();
  }
    function hide_div(el)
    {
        if(el.id == "branch_filter")
        {
            $("#churches_div").show();
            $("#region_div").hide();
            $("#filter").val(el.value);
        }else{
            $("#churches_div").hide();
            $("#region_div").show();
            $("#filter").val(el.value);
        }
    }
    
    function getModal(url,div)
    {
//        alert('dfd');
        $('#'+div).html("<h2>Loading....</h2>");
//        $('#'+div).block({ message: null });
        $.post(url,{},function(re){
            $('#'+div).html(re);
        })
    }
    function fetchLga(el)
    {
        $("#lga-fd").html("<option>Loading Lga</option>");
        $.post("utilities.php",{op:'Church.getLga',state:el},function(re){
//            $("#lga-fd").empty();
            console.log(re);
            $("#lga-fd").html(re.state);
            $("#church_id").html(re.church);
            
        },'json');
    }
    function churchByState(el)
    {
        
        $.post("utilities.php",{op:'Church.churchByState',state:el},function(re){
//            $("#lga-fd").empty();
            console.log(re);
            $("#churches").empty();
            $("#churches").html(re);
            
        });
    }
</script>