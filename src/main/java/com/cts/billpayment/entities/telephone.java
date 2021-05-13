package com.cts.billpayment.entities;


import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import javax.validation.constraints.NotEmpty;

@Entity
@Table(name ="telephone_bills")
public class telephone 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

@Column
@NotEmpty(message = "telephone number should not  be empty")
private String telephonenumber;


@Column
private String amount;
@Column
private Date billpaydate;


@Column
private String state;


@ManyToOne
private Customer customer;

@Column
private String transactionstatus;



public String getTelephonenumber() {
	return telephonenumber;
}

public void setTelephonenumber(String telephonenumber) {
	this.telephonenumber = telephonenumber;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}



public String getAmount() {
	return amount;
}

public void setAmount(String amount) {
	this.amount = amount;
}

public Date getBillpaydate() {
	return billpaydate;
}

public void setBillpaydate(String billpaydate) 
{
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Date dt = null;
	try
	{
		dt = dateFormat.parse(billpaydate);
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	this.billpaydate = dt;
}


public String getState() {
	return state;
}

public void setState(String state) {
	this.state = state;
}


public Customer getCustomeruname() {
	return customer;
}
public void setCustomeruname(Customer customeruname) {
	this.customer = customeruname;
}
public String getTransactionstatus() {
	return transactionstatus;
}

public void setTransactionstatus(String transactionstatus) {
	this.transactionstatus = transactionstatus;
}

@Override
public String toString() {
	return "electricity [id=" + id +", telephonenumber=" + telephonenumber + ", amount="
			+ amount + ", state=" + state + ", customer=" + customer + ", transactionstatus="
			+ transactionstatus + "]";
}




}
