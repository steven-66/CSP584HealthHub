<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<% 
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>Health Hub Homepage</title>
    <!-- Link to font awesome CDN -->
    <link
      href="https://use.fontawesome.com/releases/v5.0.4/css/all.css"
      rel="stylesheet"
    />
    <!-- Link to bootstrap CDN -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet" />
    <!-- Import font awesome CDN -->
    <script src="https://use.fontawesome.com/6373855059.js"></script>
    <!-- Link to bootstrap CDN -->
    <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
  </head>

  <body>
    <!-- Header-->
    <header class="navbar navbar-expand fixed-top justify-content-between">
      <a class="navbar-brand text-light">Health Hub</a>
      <form id="search-form" class="form-inline">
        <input
          id="search-input"
          class="form-control form-control-sm mr-sm-2"
          type="search"
          placeholder="Search"
          aria-label="Search"
        />
        <button id="search-btn" class="btn btn-sm my-sm-0" type="submit">
          <i class="fas fa-search"></i>
        </button>
      </form>
      <ul class="navbar-nav flex-row">
        <li class="nav-item dropdown mr-3">
          <a
            class="nav-link dropdown-toggle text-light"
            href="#"
            id="navbarDropdownMenuLink"
            data-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false"
          >
            <i class="far fa-user"></i> Account
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="login.html">Sign in</a>
            <a class="dropdown-item" href="register.html">Create account</a>
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
    <!-- Footer -->
    <footer class="py-4">
      <div class="container">
        <p class="m-0 text-center text-white">
          Copyright &copy; Health Hub 2020
        </p>
      </div>
      <!-- /.container -->
    </footer>
  </body>
</html>
