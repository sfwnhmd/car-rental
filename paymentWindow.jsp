<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "login.model.LoginEMP"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Admin dashboard</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="styleAdm/index.css" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://code.jquery.com/jquery-2.1.1.js"></script>

  </head>
  <body>
    <div class="wrapper">
      <nav class="nav">
          <!--menu bar start-->
          <ul class="nav__list" role="menubar">
            <li class="nav__item ">
                <a href="/kedai_kereta_sewa_abang_2.2/CustomerController?action=listCustomer">
                <img src="styleAdm/ico/user.svg" width="30" >
            </a>
            </li>
              <li class="nav__item ">
            <a href="/kedai_kereta_sewa_abang_2.2/EmployeeController?action=listStaff">
                  <img src="styleAdm/ico/group.svg" width="30">
            </a>
            </li>
              <li class="nav__item"><a href="/kedai_kereta_sewa_abang_2.2/ReservationController?action=listBooking"><img src="styleAdm/ico/car.svg" width="40"></a></li>
              <li class="nav__item nav__item--isActive"><a
                     href="#"
                     class="nav__link focus--box-shadow"
                     role="menuitem"
                     aria-label="Payment"
                  >
                  <img src="styleAdm/ico/credit-card.svg" width="30">
                  </a>
              </li>
          </ul>
          <!--menu bar end-->
      </nav>
      <!--bahagian main-->
        <main class="main">
          <header class="header">
            <div class="header__wrapper">
              <p>Admin Dashboard</p>
            </div>
          </header>
          <section class="section">
            <header class="section__header">
              <h2 class="section__title">Payment</h2>
              <div class="section__control">
                <button
                  class=""
                  type="button"
                  aria-label="Filter projects"
                >
                </button>
                <button
                  class="section__button section__button--painted focus--box-shadow toggle-btn"
                  type="button"
                  aria-label="Add New project"
                  onclick="printDiv()"
                >
                  <img src="styleAdm/ico/printer.png" width="32">
                </button>
              </div>
            </header>
            <ul class="project" >
            <div id="printableTable">
            	    <table width="100%" class="flat-table flat-table-3">
				      <thead>
				        <tr>
				          <td>Reservation No</td>
				          <td>Receipt No</td>
				          <td>Amount Paid</td>
				          <td>Bank Name</td>
				          <td>Customer IC</td>
				        </tr>
				      <thead>
				      <tbody>
				      <c:forEach items="${reservations}" var="pay">
				        <tr>
				          <td><c:out value="${pay.reservationNum}" /></td>
				          <td> <c:out value="${pay.receiptNum}" /></td>
				          <td> RM <c:out value="${pay.amountPaid}" /></td>
				          <td>  <c:out value="${pay.bank}" /></td>
				          <td> <c:out value="${pay.custIC}" /></td>
				        </tr>
				        </c:forEach>
                 <iframe name="print_frame" width="0" height="0" frameborder="0" src="about:blank"></iframe>
				      </tbody>
				    </table>
            </div>
              
            </ul>
            <script>
            
            function printDiv() {
                window.frames["print_frame"].document.body.innerHTML = document.getElementById("printableTable").innerHTML;
                window.frames["print_frame"].window.focus();
                window.frames["print_frame"].window.print();
              }	
            
            </script>
            
            
            
            
              
 
             
            
          </section>
        </main>
      <aside class="aside">
        <section class="section">
          <div class="aside__control">
            <button
              class="aside__button focus--box-shadow"
              type="button"
              aria-label="Close profile settings"
            >

            </button>
            <button
              class="aside__button focus--box-shadow"
              type="button"
              aria-label="You have new feedback"
            >
            <a href="/kedai_kereta_sewa_abang_2.2/loginEmployee.jsp">
            <img src="styleAdm/ico/logout.svg" width="30" >
            </a>
            </button>
          </div>
          <div class="profile-main">
            <button
              class="profile-main__setting focus--box-shadow"
              type="button"
            >
              <img
                class="profile-main__photo"
                src="styleAdm/ico/index.png"
                alt="Profile photo"
              />
            </button>
            <br>
            <br>
            <% LoginEMP currentUser = (LoginEMP) session.getAttribute("currentSessionUser");%>
            <center><p class="profile-main__name" style="color: #FF67B1;">Welcome back</p></center>
            <h1 class="profile-main__name"><%= currentUser.getEmpname()%></h1>
            <br>
            <br>
            <table class="bio">
                <tr>
                    <td><h5>Employee ID</h5></td>
                </tr>
                <tr>
                    <td><h4><%= currentUser.getEmpid()%></h4></td>
                </tr>
                <tr>
                    <td><h5>Username</h5></td>
                </tr>
                <tr>
                    <td><h4><%= currentUser.getEmpusername()%></h4></td>
                </tr>
                <tr>
                    <td><h5>Phone Number</h5></td>
                </tr>
                <tr>
                    <td><h4><%= currentUser.getEmpphone()%></h4></td>
                </tr>
            </table>
            <br>
            <%-- <a class="update__bio">Edit Profile</a>--%>
          </div>
        </section>
      </aside>
    </div>
  </body>
</html>
