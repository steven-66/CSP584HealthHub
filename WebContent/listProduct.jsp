<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<% 
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="header.jsp"%>
            <i class="far fa-user"></i> Account
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="login.jsp">Sign in</a>
            <a class="dropdown-item" href="register.jsp">Create account</a>
            <a class="dropdown-item" href="#">View Order</a>
          </div>
        </li>
        <li class="nav-item ml-3">
          <a class="nav-link text-light" href="#"
            ><i class="fas fa-shopping-cart"></i
          ></a>
        </li>
      </ul>
    </header>

    <!-- Navigation -->
    <nav
      class="navbar justify-content-center navbar-light fixed-top fixed-top-2"
    >
      <ul class="nav">
        <li class="nav-item px-3">
          <a class="nav-link active" href="#"
            ><i class="fas fa-home"></i> Home</a
          >
        </li>
        <li class="nav-item px-3">
          <a class="nav-link active" href="appointment.html"
            ><i class="fas fa-calendar-alt"></i> Schedule an Appointment</a
          >
        </li>
        <li class="nav-item px-3">
          <a class="nav-link" href="#"
            ><i class="fas fa-stethoscope"></i> Doctors</a
          >
        </li>
        <li class="nav-item px-3">
          <a class="nav-link" href="#"
            ><i class="far fa-compass"></i> Medical Services</a
          >
        </li>
        <li class="nav-item px-3">
          <a class="nav-link" href="#"
            ><i class="far fa-compass"></i> Health Clubs</a
          >
        </li>
        <li class="nav-item px-3">
          <a class="nav-link" href="#"
            ><i class="far fa-compass"></i> Hospitals</a
          >
        </li>
        <li class="nav-item dropdown px-3">
          <a
            class="nav-link dropdown-toggle"
            href="#"
            id="navbarDropdownMenuLink"
            data-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false"
            ><i class="fas fa-shopping-bag"></i>
            Product
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="ListProduct?type=vitamin">Vitamins</a>
            <a class="dropdown-item" href="ListProduct?type=medicine">Medicine</a>
            <a class="dropdown-item" href="ListProduct?type=personalcare">Personal Care</a>
            <a class="dropdown-item" href="ListProduct?type=homecare">Home Care</a>
            <a class="dropdown-item" href="ListProduct?type=nutrition">Nutrition</a>
          </div>
        </li>
      </ul>
    </nav>

    <!-- Page Content -->
    <div class="container mt-5">
      <div class="row">
        <div class="col-lg-3">
          <div class="list-group">
            <a href="ListProduct?type=vitamin" class="list-group-item">Vitamins</a>
            <a href="ListProduct?type=medicine" class="list-group-item">Medicine</a>
            <a href="ListProduct?type=personalcare" class="list-group-item">Personal Care</a>
            <a href="ListProduct?type=homecare" class="list-group-item">Home Care</a>
            <a href="ListProduct?type=nutrition" class="list-group-item">Nutrition</a>
          </div>
        </div>
        <!-- List of products -->
        <div class="col-lg-9">
          <div class="row">
          
          <!-- loop through products -->
           <c:forEach items="${products}" var="product">
	            <!-- product image -->
	            <div class="col-lg-4 col-md-6 mb-4">
	              <div class="card">
	                <img
	                  class="card-img-top"
	                  src="image/products/${product.image}" 
	                  style="height: 200px"
	                  alt=""
	                />
	                <div class="ml-4 my-1">
	                  <!-- product name -->
	                  <p class="font-weight-bold">
	                    ${product.name}
	                  </p>
	                  <!-- product price -->
	                  <p>$${product.price}</p>
	                </div>
	                <button type="button" class="btn w-75 mb-2 mx-auto">
	                  Add to Cart
	                </button>
	                <button type="button" class="btn w-75 mb-2 mx-auto">
	                  Write Review
	                </button>
	                <button type="button" class="btn w-75 mb-2 mx-auto">
	                  View Review
	                </button>
	              </div>
	            </div>
			</c:forEach>
           
          <!-- /.row -->
        </div>
        <!-- /.col-lg-9 -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->
    </div>
   <%@include file="footer.jsp" %>
