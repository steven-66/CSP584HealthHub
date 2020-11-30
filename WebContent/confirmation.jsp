<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ include file="header.jsp"%>
            <i class="far fa-user"></i> Account
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="login.jsp">Sign in</a>
            <a class="dropdown-item" href="register.jsp">Create account</a>
            <a class="dropdown-item" href="viewOrder.jsp">View Order</a>
          </div>
        </li>
        <li class="nav-item ml-3">
          <a class="nav-link text-light" href="#"
            ><i class="fas fa-shopping-cart"></i
          ></a>
        </li>
      </ul>
    </header>
  <%@ include file="leftNavBar.jsp" %>
    <!-- Page Content -->
    <div class="container mt-4">
      <div class="text-center mb-2"><i class="fas fa-shopping-bag"></i></div>
      <div class="h3 text-center mb-4">Thanks for your order!</div>
      <p class="text-center pb-4" style="border-bottom: 1px solid #b8c1ec">
        We're processing your order now, here are the details
      </p>
      <div class="p-3 mb-4">
        <div class="row">
          <p class="col-6 font-weight-bold text-right">
            Confirmation email will be sent to
          </p>
          <p class="col-6">judy667@gmail.com</p>
        </div>
        <div class="row">
          <p class="col-6 font-weight-bold text-right">Order number</p>
          <p class="col-6">10293822112</p>
        </div>
        <div class="row">
          <p class="col-6 font-weight-bold text-right">Order date</p>
          <p class="col-6">23 Nov 2020 22:47</p>
        </div>
        <div class="row">
          <p class="col-6 font-weight-bold text-right">
            Estimated delivery date
          </p>
          <p class="col-6">25 Nov 2020</p>
        </div>
        <div class="row">
          <p class="col-6 font-weight-bold text-right">Order details</p>
          <div class="col-6">
            <div class="row">
              <p class="col-4">Subtotal before tax</p>
              <p class="col-2 text-right">$22.8</p>
            </div>
            <div class="row">
              <p class="col-4">Tax</p>
              <p class="col-2 text-right">$2.2</p>
            </div>
            <div class="row">
              <p class="col-4">Total</p>
              <p class="col-2 text-right">$25</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /.container -->
 <%@include file="footer.jsp" %>
    