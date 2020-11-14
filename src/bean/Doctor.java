package bean;

public class Doctor {
	private String name;
	private String specilization;
	private String phoneNum;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Doctor() {
		
	}
	public Doctor(String name, String specilization, String phoneNum, String address, String zipcode) {
		this.name = name;
		this.specilization = specilization;
		this.phoneNum = phoneNum;
		this.address = address;
		this.zipcode = zipcode;
	}
	public String getSpecilization() {
		return specilization;
	}
	public void setSpecilization(String specilization) {
		this.specilization = specilization;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	private String address;
	private String zipcode;
}
