package com.cts.billpayment.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cts.billpayment.dao.Dthbilldao;
import com.cts.billpayment.dao.Dthgpaydao;
import com.cts.billpayment.entities.Dth;
import com.cts.billpayment.entities.Dthgpay;

@Service
@Component
public class DthgpayserviceImp implements Dthgpayservice {
	@Autowired
	private Dthgpaydao dtdao;
	@Autowired
	private Dthbilldao ddao;
	@Override
	public boolean verify(Dthgpay gpay) {
		Optional<Dthgpay> al=dtdao.findById(gpay.getContactNumber());
		  Dthgpay ad=al.get();
				if(ad!=null)
				{
					return ad.getUpi().equals(gpay.getUpi()) && ad.getPassword().equals(gpay.getPassword());
					
				}
				return false;
		}
			

	


	@Override
	public boolean dstatus(String billnumber) {

		Dth el=ddao.findByservicenumber(billnumber);
	
		String s=el.getTransactionstatus();
		el.setTransactionstatus("success");
		Dth e2=ddao.save(el);
		if(e2.getTransactionstatus().equals(s)) 
		{
		return false;
	}
		return true;
		}


}
