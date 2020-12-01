<%@ page import="service.ProductCrudService, java.util.*, bean.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>

<!-- Navigation -->
<%@ include file="topNavBarAdmin.jsp"%>

<!-- Page Content -->
<div class="container mt-4">
	<div class="table-responsive">
		<table class="table table-striped table-sm">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Image</th>
					<th>Price</th>
					<th>Manufacturer</th>
					<th>Condition</th>
					<th>Discount</th>
					<th>Category</th>
					<th>Inventory</th>
					<th>Action</th>
				</tr>
			</thead>
			<%
			    List<Product> products = new ProductCrudService().getAllProducts();
			    pageContext.setAttribute("products", products);
			%>
			<tbody>
				<c:forEach items="${products}" var="product">
					<tr>
						<td class="align-middle">${product.id}</td>
						<td class="align-middle">${product.name}</td>
						<td class="align-middle"><img
							src="image/products/${product.image}" style="width: 60px" /></td>
						<td class="align-middle">${product.price}</td>
						<td class="align-middle">${product.manufacturer}</td>
						<td class="align-middle">${product.condition}</td>
						<td class="align-middle">${product.discount}</td>
						<td class="align-middle">${product.catagory}</td>
						<td class="align-middle">${product.inventory}</td>
						<td class="align-middle"><a class="mr-3" href="#"><i
								class="fas fa-edit" style="color: green"></i></a> <a href="#"><i
								class="fas fa-trash-alt" style="color: red"></i></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<!-- /.container -->
<%@include file="footer.jsp"%>
