package servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
@WebServlet("/CartUpdate")
public class CartUpdate extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		String productName = request.getParameter("productName");
		String method = request.getParameter("method");
		Utilities utilities = new Utilities(request, response);
		if(method.equals("updateQuantity")) {
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			utilities.updateCartQuantity(productName, quantity);
	        response.setContentType("application/JSON");
	        response.setCharacterEncoding("UTF-8");
	        try {
				response.getWriter().write("success");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else if(method.equals("deleteProduct")){
			utilities.deleteProductFromCart(productName);
		}
	}
}
