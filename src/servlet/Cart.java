package servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.OrderItem;
@WebServlet("/Cart")
public class Cart extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String productName = request.getParameter("productName");
		String id = request.getParameter("productId");
		String image = request.getParameter("productImage").trim();
		int inventory = Integer.parseInt(request.getParameter("productInventory"));
		double price = Double.parseDouble(request.getParameter("productPrice"));
		String brand = request.getParameter("productBrand");
		Utilities utilities = new Utilities(request, response);
		OrderItem orderItem = new OrderItem(id, productName, price, image, brand, inventory);
		utilities.addToCart(orderItem);
		response.sendRedirect("cart.jsp");
	}
}
