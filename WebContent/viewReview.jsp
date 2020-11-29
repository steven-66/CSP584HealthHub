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
      <h4 class="mb-4">View Reviews</h4>
      <!-- review 01 -->
      <div class="rounded p-3 mb-4" style="border: 1px solid #b8c1ec">
        <div class="row">
          <!-- customer name -->
          <div class="col-4">Jessica Liu</div>
        </div>
        <div class="row">
          <div class="col-4">
            <span>Overall Rating: </span>
            <!-- rating point -->
            <span>5</span>
          </div>
        </div>
        <div class="row">
          <!-- review headline -->
          <div class="col-8 font-weight-bold">Great For Boosting Immune!!</div>
        </div>
        <div class="row">
          <!-- review content -->
          <div class="col-8">
            Yes! This combined with a 2000mcg sublingual b12 tablet and my
            energy has returned to that of my childhood!
          </div>
        </div>
      </div>
    </div>
    <!-- /.container -->
 <%@include file="footer.jsp" %>
    