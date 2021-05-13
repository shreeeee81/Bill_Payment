package com.cts.billpayment.service;


import com.cts.billpayment.entities.Dthcredit;

public interface Dthcreditservice {
	public boolean verify(Dthcredit credit);
	public boolean dthstatus(String servicenumber);

}
