package bean;

import java.io.Serializable;

public class User implements Serializable{
	private String userName;
	private String firstName;
	private String lastName;
	private String password;
	private String usertype;
	
	public User() {}
	public User(String firstName, String lastName, String password, String usertype, String userName) {
		this.setFirstName(firstName);
		this.setLastName(lastName);
		this.password=password;
		this.usertype=usertype;
		this.setUserName(userName);
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsertype() {
		return usertype;
	}

	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}
}
