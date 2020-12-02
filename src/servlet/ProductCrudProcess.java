package servlet;

import java.io.IOException;
import java.util.*;

import javax.servlet.RequestDispatcher;
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

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equals("showNewForm")) {
            showNewForm(request, response);
        } else if (action.equals("addProduct")) {
            addProduct(request, response);
        } else if (action.equals("deleteProduct")) {
            deleteProduct(request, response);
        } else if (action.equals("showEditForm")) {
            showEditForm(request, response);
        } else if (action.equals("updateProduct")) {
            updateProduct(request, response);
        }

    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("productForm.jsp").forward(request, response);
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
        Product product = new Product(productId, productName, Double.parseDouble(productPrice), productImage,
                productBrand, productCondition, Double.parseDouble(productDiscount), productCatagory,
                Integer.parseInt(productInventory));
        productCrudService.add(product);
        response.sendRedirect("admin.jsp");
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productId = request.getParameter("id");
        productCrudService.delete(productId);
        response.sendRedirect("admin.jsp");
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productId = request.getParameter("id");
        Product existingProduct = productCrudService.getProductObjById(productId);
        RequestDispatcher dispatcher = request.getRequestDispatcher("productForm.jsp");
        request.setAttribute("product", existingProduct);
        dispatcher.forward(request, response);
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response)
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
        Product product = new Product(productId, productName, Double.parseDouble(productPrice), productImage,
                productBrand, productCondition, Double.parseDouble(productDiscount), productCatagory,
                Integer.parseInt(productInventory));
        productCrudService.update(product);
        response.sendRedirect("admin.jsp");
    }

}