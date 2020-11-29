<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <%@ include file="leftNavBar.jsp" %>

    <!-- Page Content -->
	<div class="container mt-4">
	<h4 class="mb-4">My Orders</h4>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>Order #</th>
              <th>Ordered placed</th>
              <th>Total</th>
              <th>Status</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="align-middle">113-2690376-1668220</td>
              <td class="align-middle">Oct 29, 2020</td>
              <td class="align-middle">$31.8</td>
              <td class="align-middle">Pending...</td>
              <td class="align-middle"><a href="#" class="text-danger">Cancel Order</a></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
    <!-- /.container -->
 <%@include file="footer.jsp" %>