package servlet;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ProductCrudService;
import bean.Product;

@WebServlet("/ProductCrudProcess")
public class ProductCrudProcess extends HttpServlet {
    static ProductCrudService productCrudService = new ProductCrudService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String method = request.getParameter("method");
        if (method.equals("delete")) {
            deleteProduct(request, response);
        }
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productId = request.getParameter("id");
        productCrudService.delete(productId);
        request.getRequestDispatcher("admin.jsp").forward(request, response);
    }
}