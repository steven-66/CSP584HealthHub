package test;

import java.util.ArrayList;

import bean.Product;
import dao.ProductDaoImpl;
import dao.UserDaoImpl;
import service.UserService;
import util.SaxParserDataStore;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		for(Product p : new ProductDaoImpl().getProductByCatagory("vitamin"))System.out.println(p.getId());
	}

}
