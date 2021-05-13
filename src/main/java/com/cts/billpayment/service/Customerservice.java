package com.cts.billpayment.service;

import java.util.List;

import com.cts.billpayment.entities.Customer;
import com.cts.billpayment.entities.Customerlogin;
import com.cts.billpayment.entities.Dth;
import com.cts.billpayment.entities.Feedbackquestions;
import com.cts.billpayment.entities.Recordbills;
import com.cts.billpayment.entities.Security1;
import com.cts.billpayment.entities.Vendor;
import com.cts.billpayment.entities.electricity;

public interface Customerservice 
{

	public int createCustomer(Customer customer);
	public boolean login(Customerlogin customerlogin) ;
	
		public Customer getCustomer(String username);
		public List<Vendor> getallvendors();

		 public Security1 getSecurity1(String mobile);
		  public Security1 getSecurity1pwd(String userId); 
		  public boolean updatePassword(Customer customer);
		  public Customer getuserdata(String userId);
		int CreateFeedback(Feedbackquestions fq);
		
	

		public List<electricity> geElectricities();
		public List<Dth> getDth();
		public List<Recordbills> getrecbills();

}
