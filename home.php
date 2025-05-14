<?php
require_once('libs/dbfunctions.php');
$dbobject = new dbobject();

$crossorigin = 'anonymous';

@session_start();
if (!isset($_SESSION['username_sess'])) {
    header('location: logout.php');
}

require_once('class/menu.php');
$menu = new Menu();
$menu_list = $menu->generateMenu($_SESSION['role_id_sess']);
$menu_list = $menu_list['data'];

$sql = "SELECT bank_name,account_no,account_name FROM userdata WHERE username = '$_SESSION[username_sess]' LIMIT 1 ";
$user_det = $dbobject->db_query($sql);

header("Cache-Control: no-cache;no-store, must-revalidate");
header_remove("X-Powered-By");
header_remove("Server");
header('X-Frame-Options: SAMEORIGIN');
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

    <title>Dashboard | Vuvaa Lifestyle</title>

    <link rel="canonical" href="home.php" />
    <link rel="icon" href="img/icon.png" sizes="32x32" />

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&amp;display=swap" rel="stylesheet">

    <link class="js-stylesheet" href="css/light.css" rel="stylesheet" >
    <script src="js/settings.js" ></script>
    <script src="https://use.fontawesome.com/fdb76255c2.js"></script>

</head>

<body data-theme="default" data-layout="fluid" data-sidebar-position="left" data-sidebar-behavior="sticky">
    <div class="wrapper">
        <nav id="sidebar" class="sidebar">
            <div class="sidebar-content js-simplebar">
                <a class="sidebar-brand" href="home.php" style="width: 100%;">
                    <img src="img/logo.png" alt="Vuvaa Logo">
                </a>


                <ul class="sidebar-nav">

                    <li class="sidebar-item">
                        <a href="home" class="sidebar-link sidebar-link-active">
                            <i class="align-middle"></i> <span class="align-middle">Dashboard</span>
                            <span class="badge badge-sidebar-primary"></span>
                        </a>
                    </li>
                    <?php foreach ($menu_list as $value) :
                        if ($value['has_sub_menu'] == false) : ?>
                            <li class="sidebar-item">
                                <a href="javascript:getpage('<?php echo $value['menu_url'] ?>','page')" class="sidebar-link sidebar-link-active">
                                    <i class="align-middle" data-feather="sliders"></i> <span class="align-middle"><?php echo ucfirst($value['menu_name']) ?></span>
                                    <span class="badge badge-sidebar-primary"></span>
                                </a>
                            </li>
                        <?php elseif ($value['has_sub_menu'] == true) : ?>
                            <li class="sidebar-item" id="<?php echo $value['menu_id'] ?>">
                                <a data-bs-target="#l<?php echo $value['menu_id'] ?>" data-bs-toggle="collapse" class="sidebar-link collapsed">
                                    <i class="align-middle" data-feather="sliders"></i> <span class="align-middle"><?php echo ucfirst($value['menu_name']) ?></span>
                                </a>
                                <ul id="l<?php echo $value['menu_id'] ?>" class="sidebar-dropdown list-unstyled collapse " data-bs-parent="#sidebar">

                                    <?php foreach ($value['sub_menu'] as $value_1) : ?>
                                        <li class="sidebar-item" id="<?php echo $value_1['menu_id'] ?>"><a class="sidebar-link sidebar-link-active" href="javascript:loadNavPage('<?php echo $value_1['menu_url'] ?>','page', '<?php echo $value_1['menu_id'] ?>')"><?php echo ucfirst($value_1['name']) ?></a></li>
                                    <?php endforeach; ?>
                                </ul>
                            </li>
                    <?php endif;
                    endforeach; ?>
                </ul>
                <div class="sidebar-bottom d-none d-lg-block">
                    <div class="media">
                        <img class="rounded-circle mr-3" src="<?php echo $_SESSION['photo_path_sess']; ?>" alt="<?php echo $_SESSION['firstname_sess'] . ' ' . $_SESSION['lastname_sess']; ?>" width="40" height="40">
                        <div class="media-body">
                            <h6 style="color: white;" class="mb-1"><?php echo $_SESSION['firstname_sess'] . ' ' . $_SESSION['lastname_sess']; ?></h6>

                            <div>
                                <button class="btn btn-danger btn-block" onclick="window.location='logout.php'">Logout</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <div class="main">
            <nav class="navbar navbar-expand navbar-light navbar-bg">
                <a class="sidebar-toggle">
                    <i class="hamburger align-self-center"></i>
                </a>

                <a href="javascript:void(0)" class="d-flex mr-2">
                    <?php $state_loc = ":" . $dbobject->getitemlabel('lga', 'stateid', $_SESSION['state_id_sess'], 'State'); ?>
                    Your Role: &nbsp; <span style="font-weight:bold; color:#000"><?php echo $_SESSION['role_id_name'];
                                                                                    echo ($_SESSION['role_id_sess'] != '001') ? " from " . $_SESSION['church_name_sess'] : "";; ?><?php echo " <small style='font-size:10px; color:red'>(" . $dbobject->getitemlabel('church_type', 'id', $_SESSION['church_type_id_sess'], 'name') . ")" . $state_loc . "</small>"; ?></span>
                </a>
                <div class="navbar-collapse collapse">
                    <ul class="navbar-nav navbar-align">

                        <li class="nav-item dropdown">
                            <a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
                                <i class="align-middle" data-feather="settings"></i>
                            </a>

                            <a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
                                <img src="<?php echo $_SESSION['photo_path_sess'] ?>" class="avatar img-fluid rounded-circle mr-1" alt="<?php echo $_SESSION['firstname_sess'] . ' ' . $_SESSION['lastname_sess']; ?>" /> <span class="text-dark"><?php echo $_SESSION['firstname_sess'] . ' ' . $_SESSION['lastname_sess']; ?></span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a class="dropdown-item" href="javascript:getpage('profile.php','page')"><i class="align-middle mr-1" data-feather="user"></i> Profile</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="logout.php">Sign out</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>

            <main class="content" id="page">
                <?php

                if ($_SESSION['role_id_sess'] == "003" && ($user_det[0]['account_no'] == "00000000000" || $user_det[0]['bank_name'] == "00")) {
                    include('setup/pastor_bank_details.php');
                } else {
                ?>
                    <div class="row owl-carousel" id="">
                        <div class="col-12 col-sm-6 col-xl d-flex">
                            <div class="card flex-fill">
                                <div class="card-body py-4">
                                    <div class="media">
                                        <div class="d-inline-block mt-2 mr-3">
                                            <i class="fa fa-tree text-info" style="font-size:35px"></i>
                                        </div>
                                        <div class="media-body">
                                            <h3 class="mb-2">2.562</h3>
                                            <div class="mb-0">Tithe</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-xl d-flex">
                            <div class="card flex-fill">
                                <div class="card-body py-4">
                                    <div class="media">
                                        <div class="d-inline-block mt-2 mr-3">
                                            <!--											<i class="feather-lg text-warning" data-feather="activity"></i>-->
                                            <i class="fa fa-shopping-basket text-warning" style="font-size:35px"></i>
                                        </div>
                                        <div class="media-body">
                                            <h3 class="mb-2">17.212</h3>
                                            <div class="mb-0">Offering</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-xl d-flex">
                            <div class="card flex-fill">
                                <div class="card-body py-4">
                                    <div class="media">
                                        <div class="d-inline-block mt-2 mr-3">
                                            <!--											<i class="feather-lg text-success" data-feather="dollar-sign"></i>-->
                                            <i class="fa fa-building text-success" style="font-size:35px"></i>
                                        </div>
                                        <div class="media-body">
                                            <h3 class="mb-2">$ 24.300</h3>
                                            <div class="mb-0">Projects</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-xl d-flex">
                            <div class="card flex-fill">
                                <div class="card-body py-4">
                                    <div class="media">
                                        <div class="d-inline-block mt-2 mr-3">
                                            <!--											<i class="feather-lg text-danger" data-feather="shopping-bag"></i>-->
                                            <i class="fa fa-money text-danger" style="font-size:35px"></i>
                                        </div>
                                        <div class="media-body">
                                            <h3 class="mb-2">43</h3>
                                            <div class="mb-0">Donations</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-6 col-xl d-none d-xxl-flex">
                            <div class="card flex-fill">
                                <div class="card-body py-4">
                                    <div class="media">
                                        <div class="d-inline-block mt-2 mr-3">
                                            <i class="feather-lg text-info" data-feather="dollar-sign"></i>
                                        </div>
                                        <div class="media-body">
                                            <h3 class="mb-2">$ 18.700</h3>
                                            <div class="mb-0">Evangelism</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12 col-lg-8 d-flex">
                            <div class="card flex-fill w-100">
                                <div class="card-header">
                                    <!--									<span class="badge badge-primary float-right">Monthly</span>-->
                                    <h5 class="card-title mb-0">Total Revenue </h5>
                                </div>
                                <div class="card-body">
                                    <div class="chart chart-lg">
                                        <canvas id="chartjs-dashboard-line"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-4 d-flex">
                            <div class="card flex-fill w-100">
                                <div class="card-header">

                                    <h5 class="card-title mb-0">Pie Distribution</h5>
                                </div>
                                <div class="card-body d-flex">
                                    <div class="align-self-center w-100">
                                        <div class="py-3">
                                            <div class="chart chart-xs">
                                                <canvas id="chartjs-dashboard-pie"></canvas>
                                            </div>
                                        </div>

                                        <table class="table mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Source</th>
                                                    <th class="text-right">Revenue</th>
                                                </tr>
                                            </thead>
                                            <tbody id="tfive">

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="card flex-fill">
                            <div class="card-header">
                                <div class="card-actions float-end">
                                    <div class="dropdown position-relative">
                                        <a href="#" data-bs-toggle="dropdown" data-bs-display="static">
                                            <i class="align-middle" data-feather="more-horizontal"></i>
                                        </a>

                                        <div class="dropdown-menu dropdown-menu-end">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                        </div>
                                    </div>
                                </div>
                                <h5 class="card-title mb-0">Latest Projects</h5>
                            </div>
                            <table id="datatables-dashboard-projects" class="table table-striped my-0">
                                <thead>
                                    <tr role="row">
                                        <th>Paying Church</th>
                                        <th>Amount</th>
                                        <th>Bank</th>
                                        <th>Account Name</th>
                                        <th>Account Number</th>
                                        <th>Paymnent ID</th>
                                        <th>Paymnent Status</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $filter = ($_SESSION['role_id_sess'] == 001) ? "" : " AND church_id = '$_SESSION[church_id_sess]' OR source_acct = '$_SESSION[church_id_sess]'";
                                    $sql = "SELECT * FROM transaction_table WHERE 1 = 1 $filter ORDER BY created desc LIMIT 10";
                                    $result = $dbobject->db_query($sql);
                                    foreach ($result as $row) {
                                    ?>
                                        <tr>
                                            <td><?php echo $dbobject->getitemlabel("church_table", "church_id", $row['source_acct'], "church_name"); ?></td>
                                            <td><?php echo "&#x20a6; " . number_format($row['transaction_amount'], 2); ?></td>
                                            <td><?php $destination_bank = (isset($row['destination_bank'])) ? $row['destination_bank'] : "";
                                                echo $dbobject->getitemlabel("banks", "bank_code", $destination_bank, "bank_name"); ?></td>
                                            <td><?php $account_name = (isset($row['account_name'])) ? $row['account_name'] : "";
                                                echo $account_name; ?></td>
                                            <td><?php echo $row['destination_acct']; ?></td>
                                            <td><?php $payment_id = (isset($row['payment_id'])) ? $row['payment_id'] : "";
                                                echo $payment_id; ?></td>
                                            <td><?php echo $row['response_message']; ?></td>
                                        </tr>
                                    <?php
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                <?php
                }
                ?>
            </main>

            <footer class="footer">
                <div class="container-fluid">
                    <div class="row text-muted">
                        <div class="col-6 text-left">
                            <ul class="list-inline">

                                <li class="list-inline-item">
                                    <a class="text-muted" href="#">Help Center</a>
                                </li>

                            </ul>
                        </div>
                        <div class="col-6 text-right">
                            <p class="mb-0">
                                &copy; <?php echo date('Y'); ?> - <a target="_blank" href="home.php" class="text-muted">Vuvaa Lifestyle Website</a>
                            </p>
                        </div>
                    </div>
                </div>
            </footer>

            <div class="modal fade" id="defaultModalPrimary" tabindex="-1" role="dialog" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false">
                <div class="modal-dialog" role="document">
                    <div class="modal-content" id="modal_div">
                        <div class="modal-header">
                            <h5 class="modal-title">Default modal</h5>
                            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body m-3">
                            <p class="mb-0">Use Bootstrap’s JavaScript modal plugin to add dialogs to your site for lightboxes, user notifications, or completely custom content.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="js/app.js" ></script>
    <script src="js/sweet_alerts.js" ></script>
    <script src="js/jquery.blockUI.js" ></script>
    <script src="js/main.js" ></script>
    <script src="js/parsely.js" ></script>
    <script src="js/owl.carousel.js" ></script>
    <script>
        $(document).ready(function() {
            $.post('utilities.php', {
                op: 'Dashboard.topFiveChurches'
            }, function(dd) {
                //                console.log('record from dashbord ',dd);
                $("#tfive").html(dd.topfive);
                new Chart(document.getElementById("chartjs-dashboard-pie"), dd.pie);
            }, 'json');
            $.post('utilities.php', {
                op: 'Dashboard.remittance'
            }, function(dd) {
                console.log('record from dashbord ', dd);
                new Chart(document.getElementById("chartjs-dashboard-line"), dd)
            }, 'json')
            var ff = `<div class="col-12 col-sm-6 col-xl d-flex">
							<div class="card flex-fill">
								<div class="card-body py-4">
									<div class="media">
										<div class="d-inline-block mt-2 mr-3">
											<i class="fa fa-tree text-info" style="font-size:35px" ></i>
										</div>
										<div class="media-body">
											<h3 class="mb-2">&#8358; 2.562</h3>
											<div class="mb-0">Tithe</div>
										</div>
									</div>
								</div>
							</div>
						</div>`;
            $("#carousel_div").owlCarousel({
                jsonPath: "utilities.php?op=Dashboard.carousel",
                items: 4,
                navigation: true
            });
        })
    </script>
    <script>
        
        document.addEventListener("DOMContentLoaded", function() {
            // Bar chart
            new Chart(document.getElementById("chartjs-dashboard-bar"), {
                type: "bar",
                data: {
                    labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                    datasets: [{
                        label: "Last year",
                        backgroundColor: window.theme.primary,
                        borderColor: window.theme.primary,
                        hoverBackgroundColor: window.theme.primary,
                        hoverBorderColor: window.theme.primary,
                        data: [54, 67, 41, 55, 62, 45, 55, 73, 60, 76, 48, 79],
                        barPercentage: .325,
                        categoryPercentage: .5
                    }, {
                        label: "This year",
                        backgroundColor: window.theme["primary-light"],
                        borderColor: window.theme["primary-light"],
                        hoverBackgroundColor: window.theme["primary-light"],
                        hoverBorderColor: window.theme["primary-light"],
                        data: [69, 66, 24, 48, 52, 51, 44, 53, 62, 79, 51, 68],
                        barPercentage: .325,
                        categoryPercentage: .5
                    }]
                },
                options: {
                    maintainAspectRatio: false,
                    cornerRadius: 15,
                    legend: {
                        display: false
                    },
                    scales: {
                        yAxes: [{
                            gridLines: {
                                display: false
                            },
                            ticks: {
                                stepSize: 20
                            },
                            stacked: true,
                        }],
                        xAxes: [{
                            gridLines: {
                                color: "transparent"
                            },
                            stacked: true,
                        }]
                    }
                }
            });
        });
    </script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            $("#datetimepicker-dashboard").datetimepicker({
                inline: true,
                sideBySide: false,
                format: "L"
            });
        });
    </script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            // Pie chart
            new Chart(document.getElementById("chartjs-dashboard-pie"), {
                type: "pie",
                data: {
                    labels: ["Direct", "Affiliate", "E-mail", "Other"],
                    datasets: [{
                        data: [2602, 1253, 541, 1465],
                        backgroundColor: [
                            window.theme.primary,
                            window.theme.warning,
                            window.theme.danger,
                            "#E8EAED"
                        ],
                        borderWidth: 5,
                        borderColor: window.theme.white
                    }]
                },
                options: {
                    responsive: !window.MSInputMethodContext,
                    maintainAspectRatio: false,
                    cutoutPercentage: 70,
                    legend: {
                        display: false
                    }
                }
            });
        });
    </script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            $("#datatables-dashboard-projects").DataTable({
                pageLength: 6,
                lengthChange: false,
                bFilter: false,
                autoWidth: false
            });
        });
    </script>

</body>

</html>