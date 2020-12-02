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

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        addProduct(request, response);
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productId = request.getParameter("id");
        productCrudService.delete(productId);
        response.sendRedirect("admin.jsp");
    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productId = request.getParameter("productId");
        String productName = request.getParameter("productName");
        String productPrice = request.getParameter("productPrice");
        String productImage = request.getParameter("productImage");
        String productBrand = request.getParameter("manufacturer");
        String productCondition = request.getParameter("condition");
        String productDiscount = request.getParameter("discount");
        String productCatagory = request.getParameter("catagory");
        String productInventory = request.getParameter("inventory");
        Product product = new Product();
        product.setId(productId);
        product.setName(productName);
        product.setPrice(Double.parseDouble(productPrice));
        product.setImage(productImage);
        product.setManufacturer(productBrand);
        product.setCondition(productCondition);
        product.setDiscount(Double.parseDouble(productDiscount));
        product.setCatagory(productCatagory);
        product.setInventory(Integer.parseInt(productInventory));
        productCrudService.add(product);
        response.sendRedirect("admin.jsp");
    }
}