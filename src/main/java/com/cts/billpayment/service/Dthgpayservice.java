package com.cts.billpayment.service;

import com.cts.billpayment.entities.Dthgpay;


public interface Dthgpayservice {
	public boolean verify(Dthgpay gpay);
	public boolean dstatus(String billnumber);
}
