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
			<tbody>
				<tr>
					<td class="align-middle">XXX</td>
					<td class="align-middle">Master Cardiology Stethoscope 27 in
						Length</td>
					<td class="align-middle"><img src="image/pic01.jpg"
						style="width: 60px" /></td>
					<td class="align-middle">XXX</td>
					<td class="align-middle">XXX</td>
					<td class="align-middle">XXX</td>
					<td class="align-middle">XXX</td>
					<td class="align-middle">XXX</td>
					<td class="align-middle">XXX</td>
					<td class="align-middle"><a class="mr-3" href="#"><i
							class="fas fa-edit" style="color: green"></i></a> <a href="#"><i
							class="fas fa-trash-alt" style="color: red"></i></a></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<!-- /.container -->
<%@include file="footer.jsp"%>
