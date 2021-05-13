package com.cts.billpayment.entities;

import javax.validation.constraints.NotEmpty;

public class Vendorlogin 
{
	@NotEmpty(message = "Username should not be Empty")
	private String username;
	@NotEmpty(message = "Password should not be Empty")
	private String password;

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Customerlogin [username=" + username + ", password=" + password + "]";
	}
	

}
