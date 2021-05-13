package com.cts.billpayment.service;


import com.cts.billpayment.entities.Credit;


public interface Creditservice
{
	public boolean verify(Credit credit);
	public boolean status(String billnumber);
	}
