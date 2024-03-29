package com.cts.billpayment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cts.billpayment.dao.Dthbilldao;
import com.cts.billpayment.dao.HelpDao;
import com.cts.billpayment.dao.Vendordao;
import com.cts.billpayment.dao.ebilldao;
import com.cts.billpayment.entities.Dth;
import com.cts.billpayment.entities.Help;
import com.cts.billpayment.entities.Security;
import com.cts.billpayment.entities.Vendor;
import com.cts.billpayment.entities.Vendorlogin;
import com.cts.billpayment.entities.electricity;
@Service
@Component
public class VendorserviceImp implements Vendorservice
{
 @Autowired
 private Vendordao vendordao;
 @Autowired
private ebilldao edao;
 @Autowired
 private Dthbilldao ddao;
 private HelpDao hdao;
	@Override
	public int createVendor(Vendor vendor) {
		Vendor v=vendordao.findByUsername(vendor.getUsername());
		if(v==null)
		{
			Vendor v1=vendordao.save(vendor);
			if(v1!=null)
			{
				
			
			return 1;
			}
		}
		else
		{
			return 2;
		}
		return 0;
	}

	@Override
	public int login(Vendorlogin vendorlogin) {

		   Vendor v = vendordao.findByUsername(vendorlogin.getUsername());
		    if(v==null)
		    {
		    	return 0; // not registered
		    }else
		    {
		    	 if(v.getStatus().equals("deactive"))
		    	 {
		    		 return 1; // not yet activated
		    	 }
		    	 else {
		    	if(v.getPassword().equals(vendorlogin.getPassword()) && v.getStatus().equals("active"))
		    	{
		    		
		    		return 2 ; // login success;
		    	}
		    	else
		    	{
		    		return 3; //  invalid password
		    	}
		    	 }
		    }
		
		
		
	}

	

	@Override
	public Security getSecurity(String mobile) {
		 return vendordao.getSecurityCredentials(mobile); }
	 
	

	@Override
	public Security getSecuritypwd(String userId) {
		return vendordao.getSecuritypassword(userId);
	}

	@Override
	public boolean updatePassword(Vendor vendor) {
Vendor be1 = vendordao.save(vendor);
		
		if(be1!=null) {
			
			return true;
		}
		else {
			return false;
		}
	}

	@Override
	public Vendor getuserdata(String userId) {
		
		return vendordao.getVendor(userId);
	}

	@Override
	public List<electricity> getelectricbills() {
		
		Iterable<electricity> list=edao.findAll();
		return (List<electricity>) list;
	}

	@Override
	public List<Dth> getdthbills() {
		
		Iterable<Dth> list=ddao.findAll();
		return (List<Dth>) list;
	}
	public Vendor getVendor(String username) {
		
		return vendordao.findByUsername(username);
		
	}

	
	@Override
	public int saveOrUpdate(Vendor vendor) {
		 Vendor v=vendordao.save(vendor);
		 if(v!=null)
		 {
			 return 1;
		 }
		 else return 0;
		

	
		
	}

	@Override
	public int updatevendor(Vendor vendor) {
		// TODO Auto-generated method stub
	
		return 0;
		
	}

	@Override
	public List<Vendor> getallvendors() {
		// TODO Auto-generated method stub
		return vendordao.findAll();
	}

	@Override
	public int help(Help h) {
		Help h1=hdao.save(h);
		if(h1!=null) {
		return 1;
		}
		else
		{
			return 2;
			
		}
	}	

}
