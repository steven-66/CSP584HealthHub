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
      <div class="row">
      <form action="<%=path%>/SubmitReview" method="post">
        <table class="table table-hover col-9 mx-auto">
          <thead>
            <tr>
              <th class="border-0">
                <h4>Create a review</h4>
              </th>
            </tr>
          </thead>
          <tbody>
            <tr class="align-items-center">
              <!-- Selected product image -->
              <td class="border-top-0">
                <img src="image/products/<%=request.getParameter("productImage")%>" width="72px" />
              </td>
              <!-- Selected product name -->
              <td class="border-top-0 align-middle">
              	<input type="hidden" name="productName" value="<%=request.getParameter("productName")%>">
                <%=request.getParameter("productName")%>
              </td>
            </tr>
            <tr>
              <td>
                <p class="font-weight-bold">Overall Rating</p>
              </td>
              <td>
                <select id="condition" name="rating" class="form-control">
                  <option value="5" selected>5</option>
                  <option value="4">4</option>
                  <option value="3">3</option>
                  <option value="2">2</option>
                  <option value="1">1</option>
                </select>
              </td>
            </tr>
            <tr>
              <td>
                <p class="font-weight-bold">Add a headline</p>
              </td>
              <td>
                <textarea
                  name="reviewHeadline"
                  class="form-control"
                  rows="1"
                  placeholder="What the most important for us to know?"
                  required
                ></textarea>
              </td>
            </tr>
            <tr>
              <td>
                <p class="font-weight-bold">Add a written review</p>
              </td>
              <td>
                <textarea
                  name="reviewContent"
                  class="form-control"
                  rows="4"
                  placeholder="What did you like or dislike?"
                  required
                ></textarea>
              </td>
            </tr>
            <tr>
              <td></td>
              <td class="text-right">
                <button type="submit" class="btn form-btn">Submit</button>
              </td>
            </tr>
          </tbody>
        </table>
        </form>
      </div>
    </div>
    <!-- /.container -->
  </body>
</html>
    