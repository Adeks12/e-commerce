<?php
session_start();

include_once("libs/dbfunctions.php");

$dbobject = new dbobject();

// Get default role for registration
$sql = "SELECT role_id FROM role WHERE role_name LIKE '%user%' OR role_name LIKE '%customer%' LIMIT 1";
$default_role = $dbobject->db_query($sql);
$role_id = isset($default_role[0]['role_id']) ? $default_role[0]['role_id'] : '';

header("Cache-Control: no-cache;no-store, must-revalidate");
header_remove("X-Powered-By");
header_remove("Server");
header('X-Frame-Options: SAMEORIGIN');

$crossorigin = 'anonymous';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Responsive Bootstrap 5 Admin &amp; Dashboard Template">
    <meta name="author" content="Bootlab">
    <meta http-equiv="Cache-control" content="no-cache;no-store">

    <title>Register - Vuvaa Lifestyle</title>

    <link rel="shortcut icon" href="img/icon.png" sizes="32x32">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&amp;display=swap" rel="stylesheet">
    <link class="js-stylesheet" href="css/light.css" rel="stylesheet">
    <script src="js/settings.js"></script>
</head>

<body>
    <main class="main d-flex w-100">
        <div class="container d-flex flex-column">
            <div class="row py-5 mb-2">
                <div class="col-sm-12 col-md-8 col-lg-6 mx-auto d-table h-100">
                    <div class="d-table-cell align-middle">

                        <div class="text-center mt-4">
                            <h1 class="h2">Create Your Account</h1>
                            <p class="lead">
                                Fill in your details to register
                            </p>
                        </div>

                        <div class="card">
                            <div class="card-body">
                                <div class="m-sm-4">
                                    <div class="text-center">
                                        <img src="img/icon.png" alt="Vuvaa Logo" class="img-fluid rounded" width="132"
                                            height="132" />
                                    </div>
                                    <form id="registerForm" onsubmit="return false" autocomplete="off">
                                        <input type="hidden" name="op" value="Users.register">
                                        <input type="hidden" name="role_id" value="<?php echo $role_id; ?>">
                                        <div class="form-row row">
                                            <div class="form-group col-md-6 py-2">
                                                <label>First Name</label>
                                                <input class="form-control form-control-lg" type="text"
                                                    name="first_name" required placeholder="First name"
                                                    autocomplete="off" />
                                            </div>
                                            <div class="form-group col-md-6 py-2">
                                                <label>Last Name</label>
                                                <input class="form-control form-control-lg" type="text" name="last_name"
                                                    required placeholder="Last name" autocomplete="off" />
                                            </div>
                                        </div>
                                        <div class="form-row row">
                                            <div class="form-group col-md-6 py-2">
                                                <label>Gender</label>
                                                <select class="form-control form-control-lg" name="sex" required>
                                                    <option value="">Select sex</option>
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-md-6 py-2">
                                                <label>Phone Number</label>
                                                <input class="form-control form-control-lg" type="tel" name="phone" required
                                                    placeholder="Enter your phone number" autocomplete="off" />
                                            </div>
                                        </div>
                                        <div class="form-group py-2">
                                            <label>Username</label>
                                            <input class="form-control form-control-lg" type="text" name="username"
                                                required placeholder="Choose a username" autocomplete="off" />
                                        </div>
                                        <div class="form-group py-2">
                                            <label>Email</label>
                                            <input class="form-control form-control-lg" type="email" name="email"
                                                required placeholder="Enter your email" autocomplete="off" />
                                        </div>
                                        
                                        <div class="form-group py-2">
                                            <label>Shipping Address</label>
                                            <input class="form-control form-control-lg" type="text" name="shipping_address"
                                                required placeholder="Enter your shipping address" autocomplete="off" />
                                        </div>
                                        <div class="form-group py-2">
                                            <label>Password</label>
                                            <input class="form-control form-control-lg" type="password" name="password"
                                                required placeholder="Create a password" autocomplete="off" />
                                        </div>
                                        <div class="form-group py-2">
                                            <label>Confirm Password</label>
                                            <input class="form-control form-control-lg" type="password"
                                                name="confirm_password" required placeholder="Confirm your password"
                                                autocomplete="off" />
                                        </div>
                                        <div class="form-group form-check py-2">
                                            <input type="checkbox" class="form-check-input" id="terms" name="terms"
                                                required>
                                            <label class="form-check-label" for="terms">
                                                I agree to the <a href="terms.php" target="_blank">Terms and
                                                    Conditions</a>
                                            </label>
                                        </div>
                                        <div id="register_mssg"></div>
                                        <div class="text-center mt-3">
                                            <button onclick="sendRegister('registerForm')" id="registerBtn"
                                                class="btn btn-lg btn-success btn-block">Register</button>
                                        </div>
                                        <div class="text-center mt-2">
                                            <small>Already have an account? <a href="index.php">Sign in</a></small>
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

    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/jquery.blockUI.js"></script>
    <script src="js/parsely.js"></script>
    <script src="js/sweet_alerts.js"></script>
    <script src="js/main.js"></script>
    <script>
        function sendRegister(id) {
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
                    beforeSend: function () {
                        $.blockUI({
                            message: "Processing..... Please wait...",
                        });
                    },
                    success: function (data) {
                        $.unblockUI();
                        if (data.response_code == 0) {
                            $("#registerBtn").attr("disabled", true);
                            $("#register_mssg").text(data.response_message);
                            setTimeout(() => {
                                window.location = 'index.php';
                            }, 2000);
                        } else {
                            regenerateCORS();
                            $("#register_mssg").html(data.response_message);
                        }
                    },
                    error: function (data) {
                        regenerateCORS();
                        $.unblockUI();
                        $("#register_mssg").html(
                            "Unable to process request at the moment! Please try again");
                    },
                });
            }
        }
    </script>
</body>

</html>