package com.cts.billpayment.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cts.billpayment.dao.Dthbilldao;
import com.cts.billpayment.dao.Gpaydao;
import com.cts.billpayment.dao.ebilldao;
import com.cts.billpayment.entities.Dth;
import com.cts.billpayment.entities.Gpay;
import com.cts.billpayment.entities.electricity;
@Service
@Component
public class GpayserviceImp implements Gpayservice 
{
	@Autowired
	private Gpaydao gdao;
	@Autowired
	private ebilldao edao;
	
	@Override
	public boolean verify(Gpay gpay) {
		Optional<Gpay> al=gdao.findById(gpay.getContactNumber());
  Gpay ad=al.get();
		if(ad!=null)
		{
			return ad.getUpi().equals(gpay.getUpi()) && ad.getPassword().equals(gpay.getPassword());
			
		}
		return false;
}
	

	@Override
	public boolean status(String billnumber) {
		electricity el=edao.findByBillnumber(billnumber);
		
		String s=el.getTransactionstatus();
		el.setTransactionstatus("success");
		electricity e2=edao.save(el);
		if(e2.getTransactionstatus().equals(s)) 
		{
		return false;
	}
		return true;
		}


	

}
