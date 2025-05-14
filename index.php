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
	
	<title>Login - Vuvaa Lifestyle</title>

	<link rel="canonical" href="pages-sign-in.html" />
	<link rel="shortcut icon" href="img/icon.png" sizes="32x32">

	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&amp;display=swap" rel="stylesheet">

	<link class="js-stylesheet" href="css/light.css" rel="stylesheet" >
	<script src="js/settings.js"></script>

	<!-- Add Font Awesome CSS in the head section -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

	<!-- Add the password container styles -->
	<style>
		.password-container {
			position: relative;
			width: 100%;
		}
		.password-container input {
			width: 100%;
			padding-right: 40px; /* Space for the eye icon */
		}
		.toggle-password {
			position: absolute;
			right: 10px;
			top: 50%;
			transform: translateY(-50%);
			cursor: pointer;
			display: none; /* Hidden by default */
			color: #666;
		}
		.toggle-password:hover {
			color: #333;
		}
	</style>

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
										<input type="hidden" name="op" value="Users.login">
										<div class="form-group py-3">
											<label>Email</label>
											<input class="form-control form-control-lg" type="text" name="email" required placeholder="Enter your Email" autocomplete="off" />
										</div>
										<div class="form-group">
											<label>Password</label>
											<div class="password-container">
												<input class="form-control form-control-lg" type="password" name="password" id="password" placeholder="Enter your password" />
												<i class="toggle-password fas fa-eye" data-target="password"></i>
											</div>
											<small>
												<a href="forgot_password.php">Forgot password?</a>
											</small>
										</div>
										<div>

											<!-- <div class="custom-control custom-checkbox align-items-center">
												<input type="checkbox" class="custom-control-input" value="remember-me" name="remember-me" checked>
												<label class="custom-control-label text-small">Remember me next time</label>
											</div> -->
										</div>

										<div id="server_mssg"></div>
										<div class="text-center mt-3">
											<button onclick="sendLogin('form1')" id="button" class="btn btn-lg btn-info btn-block">Sign in</button>
										</div>
										<div class="text-center mt-2">
											<small>Don't have an account? <a href="register.php">Sign up</a></small>
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
		function sendLogin(id) {
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
								window.location = 'home.php';
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

		// Function to toggle password visibility
		function togglePasswordVisibility(inputId, icon) {
			const input = icon.previousElementSibling; // Get the input directly from the icon's previous sibling
			if (input.type === 'password') {
				input.type = 'text';
				icon.classList.remove('fa-eye');
				icon.classList.add('fa-eye-slash');
			} else {
				input.type = 'password';
				icon.classList.remove('fa-eye-slash');
				icon.classList.add('fa-eye');
			}
		}

		// Add event listeners for password fields
		document.querySelectorAll('.password-container input').forEach(input => {
			const icon = input.nextElementSibling;
			
			// Show/hide eye icon based on input content
			input.addEventListener('input', function() {
				icon.style.display = this.value ? 'block' : 'none';
			});

			// Toggle password visibility when clicking the eye icon
			icon.addEventListener('click', function() {
				togglePasswordVisibility(this.dataset.target, this);
			});
		});
	</script>
</body>

</html>