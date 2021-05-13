package com.cts.billpayment.service;


import java.util.List;

import com.cts.billpayment.entities.Dth;
import com.cts.billpayment.entities.Help;
import com.cts.billpayment.entities.Security;
import com.cts.billpayment.entities.Vendor;
import com.cts.billpayment.entities.Vendorlogin;
import com.cts.billpayment.entities.electricity;

import java.util.List;




public interface Vendorservice 
{
	public int createVendor(Vendor vendor);
	public int login(Vendorlogin vendorlogin);
		
		 public Security getSecurity(String mobile);
		  public Security getSecuritypwd(String userId); 
		  public boolean updatePassword(Vendor vendor);
		  public Vendor getuserdata(String userId);
		  public List<electricity> getelectricbills();
		  public List<Dth> getdthbills();

	public List<Vendor> getallvendors();
		public Vendor getVendor(String username);
		public int updatevendor(Vendor vendor);
		public int saveOrUpdate(Vendor vendor);
		int help(Help h);
}
