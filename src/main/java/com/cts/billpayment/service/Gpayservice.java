package com.cts.billpayment.service;


import com.cts.billpayment.entities.Gpay;

public interface Gpayservice 
{
	public boolean verify(Gpay gpay);
	public boolean status(String billnumber);
	
}
