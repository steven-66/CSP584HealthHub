<%@page import="bean.OrderItem"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!--header-->
<%@include file="header.jsp" %>>

<%@ include file="leftNavBar.jsp" %>
	<!-- Page Content -->
    <div class="container mt-4">
      <div class="row">
      <form action="checkout.jsp">
        <table class="table table-hover col-9 mx-auto">
          <thead>
            <tr>
              <th style="border-top: 1px solid #fff"><h4>Shopping Cart</h4></th>
            </tr>
            <tr>
              <th></th>
              <th>Quantity</th>
              <th></th>
              <th class="text-center">Price</th>
              <th class="text-center">Total</th>
            </tr>
          </thead>
          <tbody>
          <c:forEach items="${sessionScope.orderMap.values()}" var="orderItem">
            <tr>
              <td class="col-sm-8 col-md-6">
                <div class="media">
                  <a class="thumbnail pull-left" href="#">
                    <img
                      class="media-object"
                      src="image/products/${orderItem.image}"
                      style="width: 72px; height: 72px"
                      alt=""
                    />
                  </a>
                  <div class="media-body ml-2">
                    <p class="media-heading font-weight-bold">
                      <a href="<%=path%>/viewProductDetail">${orderItem.name}</a>
                    </p>
                    <p class="media-heading font-weight-bold">
                      by <a href="#">${orderItem.brand}</a>
                    </p>
                    <span>Status: </span>
                    	<c:if test="${orderItem.inventory>0}">
                    		<strong>In Stock</strong>
                    	</c:if>
                    	<c:if test="${orderItem.inventory==0}">
                    		<strong>Re-Stock in two weeks</strong>
                    	</c:if>
                  </div>
                </div>
              </td>
              <!-- Quantity -->
              
              <td class="col-sm-1 col-md-1" style="text-align: center;">
                <input
                  type="text"
                  class="form-control"
                  id="quantity"
                  name="number"
                  placeholder="1"
                  value="${orderItem.quantity}"
                />
              </td>
              <!-- Delete button -->
              <td class="col-sm-1 col-md-1">
                <button type="button" class="btn btn-link" name="del">Delete</button>
              </td>
              <!-- Price -->
              <td class="col-sm-1 col-md-1 text-center">
                <p class="btn font-weight-bold">$${orderItem.price}</p>
              </td>
              <!-- Total price -->
              <td class="col-sm-1 col-md-1 text-center">
                <p class="btn font-weight-bold">${orderItem.totalPrice}</p>
              </td>
            </tr>
            </c:forEach>
            
            <tr>
              <td> </td>
              <td> </td>
              <td> </td>
              <td class="col-sm-1 col-md-1 text-center">
                <h4>Subtotal</h4>
              </td>
              <!-- Subtotal -->
              <td class="col-sm-1 col-md-1 text-center">
                <h4><%=session.getAttribute("totalPrice")%></h4>
              </td>
            </tr>
            <tr>
              <td> </td>
              <td> </td>
              <td> </td>
              <td>
	                <button type="button" class="btn btn-default" onclick="javascript:history.back(1);">
	                  Continue Shopping
	                </button>
	             
              </td>
              <td>
                <button type="submit" class="btn btn-checkout">Checkout</button>
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