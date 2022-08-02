<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<script>
	function zoom()
	{
		document.body.style.zoom = "80%"
	}
</script>
<head>
<meta charset="ISO-8859-1">
<!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>New Customer Registration Page</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
</head>
<body onLoad="zoom()">
    <div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title" align="center">Employee Registration <a style="color: red">Form</a></h2>
                    <form method="POST" onsubmit="confirmBox()" action="EmployeeController" >
						<div class="input-group">
                            <input class="input--style-3" type="text" placeholder="ID" name="empid" required>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Name" name="empname" required>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Phone Number" name="empphone" required>
                        </div>
						<div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Username" name="empusername" required>
                        </div>
						<div class="input-group">
                            <input class="input--style-3" type="password" placeholder="Password" name="emppassword" required>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Employee/manager" name="emprole" required>
                        </div>
                        <input type="hidden"  name="managerid" value="">
                        <input type="hidden"  name="reservationnum" value="">
                        <div align="center" class="p-t-10">
                            <button class="btn btn--pill btn--green" type="submit">Register</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
	
	<script>
		function confirmBox()
		{
			alert("Registered Succesfully!");
		}
	</script>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body>
</html>