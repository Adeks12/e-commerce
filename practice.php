<?php
session_start();

include_once("libs/dbfunctions.php");

$dbobject = new dbobject();

// echo $dbobject->generateHTTP();
header("Cache-Control: no-cache;no-store, must-revalidate");
header_remove("X-Powered-By");
header_remove("Server");
header('X-Frame-Options: SAMEORIGIN');

$crossorigin = 'anonymous';
?>
<!DOCTYPE html>
<html lang="en">


<meta http-equiv="content-type" content="text/html;charset=UTF-8" />

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Bootstrap 5 Admin &amp; Dashboard Template">
	<meta name="author" content="Bootlab">
	<meta http-equiv="Cache-control" content="no-cache;no-store">
	
	<title>Vuvaa Lifestyle</title>

	<link rel="canonical" href="pages-sign-in.html" />
	<link rel="shortcut icon" href="img/icon.png" sizes="32x32">

	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&amp;display=swap" rel="stylesheet">

	<link class="js-stylesheet" href="css/light.css" rel="stylesheet" >
	<script src="js/settings.js"></script>


</head>

<body>
	<main class="main d-flex w-100">
		<div class="container d-flex flex-column">
			<div class="row py-5 mb-2">
				<div class="col-sm-12 col-md-8 col-lg-6 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">

						<div class="text-center mt-4">
							<h1 class="h2">Welcome to The Vuvaa Lifestyle Website</h1>
							<p class="lead">
								Sign in to your account
							</p>
						</div>

						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
									<div class="text-center">
										<img src="img/icon.png" alt="Chris Wood" class="img-fluid rounded" width="132" height="132" />
									</div>
									<form id="form1" onsubmit="return false" autocomplete="off">
										<input type="hidden" name="op" value="Users.comment">
										<div class="form-group py-3">
											<label>Insert Comment</label>
											<input class="form-control form-control-lg" type="text" name="comment" required placeholder="Enter your comment" autocomplete="off" />
										</div>
										<div id="server_mssg" class="red"> </div>
										<div class="text-center mt-3">
											<button onclick="sendComment('form1')" id="button" class="btn btn-lg btn-info btn-block">Comment</button>
										</div>
									</form>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</main>

	<script src="js/jquery-3.6.0.min.js" ></script>
	<script src="js/jquery.blockUI.js" ></script>
	<script src="js/parsely.js" ></script>

	<script src="js/sweet_alerts.js" ></script>
	<script src="js/main.js" ></script>
	<script>
		function sendComment(id) {
			var forms = $('#' + id);
			forms.parsley().validate();
			if (forms.parsley().isValid()) {
				$.blockUI();
				var data = $("#" + id).serialize();

				$.ajax({
					type: "post",
					url: "utilities_default.php",
					data: data,
					dataType: "json",
					beforeSend: function() {
						$.blockUI({
							message: "Processing..... Please wait...",
						});
					},
					success: function(data) {
						$.unblockUI();

						if (data.response_code == 0) {
							$("#button").attr("disabled", true);
							$("#server_mssg").text(data.response_message);
							setTimeout(() => {
								window.location = 'index.php';
							}, 2000);
						} else {
							regenerateCORS();
							$("#server_mssg").html(data.response_message);
						}
					},
					error: function(data) {
						regenerateCORS();
						$.unblockUI();
						$("#server_mssg").html("Unable to process request at the moment! Please try again");
					},
				});
			}
		}
	</script>
</body>

</html>