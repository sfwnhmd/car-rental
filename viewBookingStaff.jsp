<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Booking Details for Staff</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap Table with Search Column Feature</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<script>
$(document).ready(function(){
	// Activate tooltips
	$('[data-toggle="tooltip"]').tooltip();
    
	// Filter table rows based on searched term
    $("#search").on("keyup", function() {
        var term = $(this).val().toLowerCase();
        $("table tbody tr").each(function(){
            $row = $(this);
            var name = $row.find("td:nth-child(2)").text().toLowerCase();
            console.log(name);
            if(name.search(term) < 0){                
                $row.hide();
            } else{
                $row.show();
            }
        });
    });
});
</script>




    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Dashboard</title>

    <!-- Fontfaces CSS-->
    <link href="css3/font-face.css" rel="stylesheet" media="all">
    <link href="vendor3/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor3/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor3/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor3/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor3/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor3/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor3/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor3/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor3/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor3/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor3/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css3/theme.css" rel="stylesheet" media="all">

</head>
<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">

                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="index3.php">Customer</a>
                                </li>
                                <li>
                                    <a href="index3 - Copy.php">Shoe</a>
                                </li>
                                <li>
                                    <a href="index3 - Copy (2).php">Transaction History</a>
                                </li>
                                <li>
                                    <a href="index.html">Report</a>
                                </li>
                            </ul>
                            <a class="js-arrow" href="#">
                                <i class="fas fa-desktop"></i>UI Elements</a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="button.html">Button</a>
                                </li>
                                <li>
                                    <a href="badge.html">Badges</a>
                                </li>
                                <li>
                                    <a href="tab.html">Tabs</a>
                                </li>
                                <li>
                                    <a href="card.html">Cards</a>
                                </li>
                                <li>
                                    <a href="alert.html">Alerts</a>
                                </li>
                                <li>
                                    <a href="progress-bar.html">Progress Bars</a>
                                </li>
                                <li>
                                    <a href="modal.html">Modals</a>
                                </li>
                                <li>
                                    <a href="switch.html">Switchs</a>
                                </li>
                                <li>
                                    <a href="grid.html">Grids</a>
                                </li>
                                <li>
                                    <a href="fontawesome.html">Fontawesome Icon</a>
                                </li>
                                <li>
                                    <a href="typo.html">Typography</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
			<h2>Staff Section</h2>
                <a href="#">
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-tachometer-alt"></i>Menu</a>
                              <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="customerRegister.jsp">Employee</a>
                                </li>
                                <li>
                                    <a href="/kedai_kereta_sewa_abang_2.0/ReservationController?action=listBooking">Booking History</a>
                                </li>
                                <li>
                                    <a href="payprint.html">Payment Report</a>
                                </li>
                            </ul>
                        </li>
                     
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            
                            <form class="form-header" action="" method="post">
                                <input class="au-input au-input--xl" type="text" name="search" placeholder="Search for datas &amp; reports..." />
                                <button class="au-btn--submit" type="submit">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form>
                            <div class="header-button">
                            
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                       
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">john doe</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                               
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">john doe</a>
                                                    </h5>
                                                    <span class="email">johndoe@example.com</span>
                                                </div>
                                            </div>
                                    
                                            <div class="account-dropdown__footer">
                                                <a href="loginEmployee.jsp">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->
			
	        <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
			   <div class="container-lg">
			    <div class="row">
                        <div class="col-sm-6">
                            <h2><a href="/kedai_kereta_sewa_abang_2.0/ReservationController?action=listBooking">Booking <b>Details</b></a></h2>
                        </div>
                        <div class="col-sm-6">
                            <div class="search-box">
                                <div class="input-group">								
                                    <input type="text" id="search" class="form-control" placeholder="Search by Customer ID">
                                    <span class="input-group-addon"><i class="material-icons">&#xE8B6;</i></span>
                                </div>
                            </div>
                        </div>
                    </div>
        <div class="table-responsive">
            <div class="table-wrapper">			
                <div class="table-title">
                   
                </div>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th style="width: 22%" >Reservation No</th>
                            <th style="width: 22%" >Customer ID</th>
                            <th>Pick up Date</th>
							<th>Pick up Time</th>
							<th>Pick up Location</th>
							<th>Return Date</th>
							<th>Return Time</th>
							<th>Return Location</th>
							<th>Total Hours</th>
							<th>Total Price</th>
                            <th>Reservation Date</th>
                            <th>Reservation Time</th>
                            <th>Booking Status</th>
                            <th>Receipt No</th>
							<th>Bank</th>
							<th>Amount Paid</th>
							<th>Payment Date</th>
							<th>EMP ID</th>
							<th>Plate No</th>
							
                        </tr>
                    </thead>
                    <tbody>
		           	<c:forEach items="${reservations}" var="reservation">
			        	<tr>
			            	<td><c:out value="${reservation.reservationNum}" /></td>                                   
			                <td><c:out value="${reservation.pickupDate}" /></td>
			                <td><c:out value="${reservation.pickupTime}" /></td>
			                <td><c:out value="${reservation.pickupLocation}" /></td>  
			                 <td><c:out value="${reservation.returnDate}" /></td>                                 
			                <td><c:out value="${reservation.returnTime}" /></td>
			                <td><c:out value="${reservation.returnLocation}" /></td>
			                <td><c:out value="${reservation.totalHours}" /></td>                                   
			                <td><c:out value="${reservation.totalPrice}" /></td>
			                <td><c:out value="${reservation.reservationDate}" /></td>
			                <td><c:out value="${reservation.reservationTime}" /></td>                                   
			                <td><c:out value="${reservation.bookingStatus}" /></td>
			                <td><c:out value="${reservation.receiptNum}" /></td>
			                <td><c:out value="${reservation.bank}" /></td>                                   
			                <td><c:out value="${reservation.amountPaid}" /></td>
			                <td><c:out value="${reservation.paymentDate}" /></td>
			                <td><c:out value="${reservation.empID}" /></td>                                   
			                <td><c:out value="${reservation.custIC}" /></td>
			                <td><c:out value="${reservation.plateNum}" /></td>
			                                                
			            
			                    
			            </tr>
		        	</c:forEach>
						
                       
                    </tbody>
                </table>
            </div>
        </div>        
    </div>     
     </div>
    </div>
</div>  

      
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="vendor3/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="vendor3/bootstrap-4.1/popper.min.js"></script>
    <script src="vendor3/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="vendor3/slick/slick.min.js">
    </script>
    <script src="vendor3/wow/wow.min.js"></script>
    <script src="vendor3/animsition/animsition.min.js"></script>
    <script src="vendor3/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="vendor3/counter-up/jquery.waypoints.min.js"></script>
    <script src="vendor3/counter-up/jquery.counterup.min.js">
    </script>
    <script src="vendor3/circle-progress/circle-progress.min.js"></script>
    <script src="vendor3/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="vendor3/chartjs/Chart.bundle.min.js"></script>
    <script src="vendor3/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="js3/main.js"></script>

</body>
</html>