package test;

import dao.UserDaoImpl;
import service.UserService;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.print(UserService.checkLogin("steve", "12345"));
	}

}
