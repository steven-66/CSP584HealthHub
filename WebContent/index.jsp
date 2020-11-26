<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% 
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="header.jsp"%>
          <%
          	String username = (String)request.getSession().getAttribute("username");
          	if(username != null){
          		out.println("<i class='far fa-user'>" + username + "</i></a>");
          		out.println("<div class='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>"
          	            +"<a class='dropdown-item' href='LogoutServlet'>Log out</a>"
          	            +"<a class='dropdown-item' href='viewSchedule.jsp'>View Schedule</a>"
          	            +"<a class='dropdown-item' href='viewOrder.jsp'>View Order</a>"
          	          	+"</div>");
          	}else{
          		out.println("<i class='far fa-user'> Account</i></a>");
          		out.println("<div class='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>"
          	            +"<a class='dropdown-item' href='login.jsp'>Sign in</a>"
          	            +"<a class='dropdown-item' href='register.jsp'>Create account</a>"
          	            +"<a class='dropdown-item' href='admin.jsp'>Admin</a>"
          	          	+"</div>");
          	}
          %>
        </li>
        <li class="nav-item ml-3">
          <a class="nav-link text-light" href="#"><i class="fas fa-shopping-cart"></i></a>
        </li>
      </ul>
    </header>
    
    <!-- Navigation -->
    <nav
      class="navbar justify-content-center navbar-light fixed-top fixed-top-2"
    >
      <ul class="nav">
        <li class="nav-item px-3">
          <a class="nav-link active" href="#"><i class="fas fa-home"></i> Home</a>
        </li>
        <li class="nav-item px-3">
          <a class="nav-link active" href="#"><i class="fas fa-calendar-alt"></i> Schedule an Appointment</a>
        </li>
        <li class="nav-item px-3">
          <a class="nav-link" href="#"><i class="fas fa-stethoscope"></i> Find a Doctor</a>
        </li>
        <li class="nav-item px-3">
          <a class="nav-link" href="#"><i class="far fa-compass"></i> Find a Location</a>
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
            <a class="dropdown-item" href="#">Category#1</a>
            <a class="dropdown-item" href="#">Category#2</a>
            <a class="dropdown-item" href="#">Category#3</a>
          </div>
        </li>
      </ul>
    </nav>

    <!-- Page Content -->
    <div class="container">
      <!-- <div class="row">
        <div class="col-lg-3">
          <div class="list-group my-4">
            <a href="#" class="list-group-item">Appointments</a>
            <a href="#" class="list-group-item">Doctor</a>
            <a href="#" class="list-group-item">Health Hubs</a>
            <a href="#" class="list-group-item">Insurances</a>
            <a href="#" class="list-group-item">Products</a>
          </div>
        </div> -->
        <!-- /.col-lg-3 -->
        <div class="col-lg-9 mx-auto">
          <div
            id="carouselExampleIndicators"
            class="carousel slide my-4"
            data-ride="carousel"
          >
            <ol class="carousel-indicators">
              <li
                data-target="#carouselExampleIndicators"
                data-slide-to="0"
                class="active"
              ></li>
              <li
                data-target="#carouselExampleIndicators"
                data-slide-to="1"
              ></li>
              <li
                data-target="#carouselExampleIndicators"
                data-slide-to="2"
              ></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img
                  class="d-block img-fluid"
                  src="./image/event01.jpg"
                  alt="First slide"
                  style="width: 900px; height: 350px"
                />
              </div>
              <div class="carousel-item">
                <img
                  class="d-block img-fluid"
                  src="http://placehold.it/900x350"
                  alt="Second slide"
                />
              </div>
              <div class="carousel-item">
                <img
                  class="d-block img-fluid"
                  src="http://placehold.it/900x350"
                  alt="Third slide"
                />
              </div>
            </div>
            <a
              class="carousel-control-prev"
              href="#carouselExampleIndicators"
              role="button"
              data-slide="prev"
            >
              <span
                class="carousel-control-prev-icon"
                aria-hidden="true"
              ></span>
              <span class="sr-only">Previous</span>
            </a>
            <a
              class="carousel-control-next"
              href="#carouselExampleIndicators"
              role="button"
              data-slide="next"
            >
              <span
                class="carousel-control-next-icon"
                aria-hidden="true"
              ></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

          <h4 class="my-4">Recommended products for you</h4>
          
          <div class="row">
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"
                  ><img
                    class="card-img-top"
                    src="./image/pic01.jpg"
                    style="height: 200px"
                    alt=""
                /></a>
                <div class="card-body">
                  <h5 class="card-title">
                    <a href="#"
                      >Melatonin 1 mg Fast Dissolve Tablets Strawberry</a
                    >
                  </h5>
                  <p>$6.99</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted"
                    >&#9733; &#9733; &#9733; &#9733; &#9734;</small
                  >
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"
                  ><img
                    class="card-img-top"
                    src="./image/pic02.JPG"
                    style="height: 200px"
                    alt=""
                /></a>
                <div class="card-body">
                  <h5 class="card-title">
                    <a href="#">Power Extending Formula Male Enhancement</a>
                  </h5>
                  <p>$12.99</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted"
                    >&#9733; &#9733; &#9733; &#9733; &#9734;</small
                  >
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"
                  ><img
                    class="card-img-top"
                    src="./image/pic03.JPG"
                    style="height: 200px"
                    alt=""
                /></a>
                <div class="card-body">
                  <h5 class="card-title">
                    <a href="#">Melatonin Quick Dissolve 3 mg Cherry</a>
                  </h5>
                  <p>$6.99</p>
                </div>
                <div class="card-footer">
                  <small class="text-muted"
                    >&#9733; &#9733; &#9733; &#9733; &#9734;</small
                  >
                </div>
              </div>
            </div>
          </div>
          <!-- /.row -->
        </div>
        <!-- /.col-lg-9 -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container -->
 <%@include file="footer.jsp" %>
