package com.cts.billpayment.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "vendors_details")
public class Vendor {
	// vendor details
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(unique = true)
	@NotEmpty(message = "User Name should not  be empty")
	private String username;

	@Column(unique = true)
	@NotEmpty(message = "vendor name should not  be empty")
	private String companyname;
	@Column
	@Pattern(regexp = "[6789][0-9]{9}", message = "Invalid Mobile")

	private String mobile;

	@Column(unique = true)
	@NotEmpty(message = "password should not  be empty")
	private String password;
	@Column
	private String confirmationpassword;
	@Column
	private String address;
	@Column
	private String category;
	@Column
	private String maplocation;

	public String getMaplocation() {
		return maplocation;
	}

	public void setMaplocation(String maplocation) {
		this.maplocation = maplocation;
	}

	@Column
	private String secretquestion;
	@Column
	private String answer;

	@Column
	private String status;
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "s_no", referencedColumnName = "id")
	private Security security;

	public Security getSecurity() {
		return security;
	}

	public void setSecurity(Security security) {
		this.security = security;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCompanyname() {
		return companyname;
	}

	public String getConfirmationpassword() {
		return confirmationpassword;
	}

	public void setConfirmationpassword(String confirmationpassword) {
		this.confirmationpassword = confirmationpassword;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSecretquestion() {
		return secretquestion;
	}

	public void setSecretquestion(String secretquestion) {
		this.secretquestion = secretquestion;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Vendor [id=" + id + ", username=" + username + ", companyname=" + companyname + ", mobile=" + mobile
				+ ", password=" + password + ", confirmationpassword=" + confirmationpassword + ", address=" + address
				+ ", secretquestion=" + secretquestion + ", answer=" + answer + ", status=" + status + ", security="
				+ security + "]";
	}

}
