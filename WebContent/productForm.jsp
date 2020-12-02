<%@ page import="service.ProductCrudService, java.util.*, bean.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>

<!-- Navigation -->
<nav
  class="navbar justify-content-center navbar-light fixed-top fixed-top-2"
  style="box-shadow: none">
  <ul class="nav ml-auto mr-5">
    <li class="nav-item px-3"><a class="btn btn-outline-success mt-2"
      href="admin.jsp"><i class="fas fa-list-ul pr-2"
        style="color: green"></i>View Product</a></li>
  </ul>
</nav>

<!-- Page Content -->
<div class="login-form-container mt-4">
	<h4 class="text-center w-75 mx-auto mb-4">Add Product</h4>
	<form action="ProductCrudProcess?method=add" method="post">
		<div class="form-group">
			<!-- Product Id -->
			<input type="text" class="form-control form-control-lg w-75 mx-auto"
				id="productid" name="productId" placeholder="Product Id" required />
			<!-- Hint text here -->
			<small class="form-text text-muted w-75 mx-auto mb-4"></small>
		</div>
		<div class="form-group">
			<!-- Product name -->
			<input type="text" class="form-control form-control-lg w-75 mx-auto"
				id="productname" name="productName" placeholder="Product Name"
				required /> <small
				class="form-text text-muted w-75 mx-auto mb-4"></small>
		</div>
		<div class="form-group">
			<!-- Price -->
			<input type="text" class="form-control form-control-lg w-75 mx-auto"
				id="productprice" name="productPrice" placeholder="Product Price" />
			<small class="form-text text-muted w-75 mx-auto mb-4"></small>
		</div>
		<div class="form-group">
			<!-- Product Image -->
			<input type="file" class="form-control form-control-lg w-75 mx-auto"
				id="productimage" name="productImage" placeholder="Choose file..."
				 /> <small
				class="form-text text-muted w-75 mx-auto mb-4"></small>
		</div>
		<div class="form-group">
			<!-- Preview Image -->
			<div class="w-75 mx-auto mb-4">
				<img src="https://placehold.it/200x200" id="preview"
					class="img-thumbnail" style="width: 200px" />
			</div>
		</div>
		<div class="form-group">
			<!-- Manufacturer -->
			<input type="text" class="form-control form-control-lg w-75 mx-auto"
				id="manufacturer" name="manufacturer" placeholder="Manufacturer"
				required /> <small
				class="form-text text-muted w-75 mx-auto mb-4"></small>
		</div>
		<div class="form-group">
			<!-- Product Condition -->
			<select id="condition" name="condition"
				class="form-control w-75 mx-auto mb-4">
				<option value="New" selected>New</option>
				<option value="Used">Used</option>
			</select>
		</div>
		<div class="form-group">
			<!-- Preview Discount -->
			<input type="text" class="form-control form-control-lg w-75 mx-auto"
				id="discount" name="discount" placeholder="Discount" required />
			<small class="form-text text-muted w-75 mx-auto mb-4"></small>
		</div>
		<div class="form-group">
			<!-- Product Catagory -->
			<select id="catagory" name="catagory"
				class="form-control w-75 mx-auto mb-4">
				<option value="Vitamin" selected>Vitamin</option>
				<option value="Medicine">Medicine</option>
				<option value="Personal Care" selected>Personal Care</option>
				<option value="Home Care">Home Care</option>
				<option value="Nutrition">Nutrition</option>
			</select>
		</div>
		<div class="form-group">
			<!-- Product Inventory -->
			<input type="text" class="form-control form-control-lg w-75 mx-auto"
				id="inventory" name="inventory" placeholder="Inventory" required />
			<small class="form-text text-muted w-75 mx-auto mb-4"></small>
		</div>
		<button type="submit" class="form-btn btn btn-block w-75 mx-auto mb-5">
			Submit</button>
	</form>
</div>
<!-- /.container -->
<script type="text/javascript">
	// scripts for previewing the image
	$(document).on("click", function() {
		var file = $(this).parents().find(".file");
		file.trigger("click");
	});
	$('input[type="file"]').change(function(e) {
		var fileName = e.target.files[0].name;
		$("#file").val(fileName);

		var reader = new FileReader();
		reader.onload = function(e) {
			// get loaded data and render thumbnail.
			document.getElementById("preview").src = e.target.result;
		};
		// read the image file as a data URL.
		reader.readAsDataURL(this.files[0]);
	});
</script>
<!-- /.container -->
<%@include file="footer.jsp"%>