package com.cts.billpayment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cts.billpayment.dao.Customerdao;
import com.cts.billpayment.dao.Dthbilldao;
import com.cts.billpayment.dao.HelpDao;
import com.cts.billpayment.dao.Recordbillsdao;
import com.cts.billpayment.dao.Vendordao;
import com.cts.billpayment.dao.ebilldao;
import com.cts.billpayment.dao.feedbackdao;
import com.cts.billpayment.entities.Customer;
import com.cts.billpayment.entities.Customerlogin;
import com.cts.billpayment.entities.Dth;
import com.cts.billpayment.entities.Feedbackquestions;
import com.cts.billpayment.entities.Recordbills;
import com.cts.billpayment.entities.Security1;
import com.cts.billpayment.entities.Vendor;
import com.cts.billpayment.entities.electricity;

@Service
@Component
public class CustomerserviceImp implements Customerservice
{
	@Autowired
   private Customerdao customerdao;
  
	@Autowired
	private Vendordao vendordao;

	@Autowired 
	private feedbackdao fdao;
	@Autowired 
	private HelpDao hdao;
	

@Autowired
private ebilldao edao;
@Autowired
private Dthbilldao ddao;
@Autowired
private Recordbillsdao recbildao;

	@Override
	public int createCustomer(Customer customer) 
	{
		Customer c= customerdao.findByUsername(customer.getUsername());
		if(c==null)
		{
			Customer c1=customerdao.save(customer);
			if(c1!=null)
			{
				return 1;
			}
			else
			{
				return 2;
			}
		}
				return 0;
	}
    @Override
	public boolean login(Customerlogin customerlogin) {

        Customer c = customerdao.findByUsername(customerlogin.getUsername());
        
        if(c!=null)
        {
        	return c.getPassword().equals(customerlogin.getPassword());
        }
	
	return false;
}

		
	@Override
	public Customer getCustomer(String username) {
		// TODO Auto-generated method stub
		return customerdao.findByUsername(username);
	}
	@Override
	public List<Vendor> getallvendors() 
	{
	
		
		return vendordao.findAll();
	}
	@Override
	public Security1 getSecurity1(String mobile) {
		 return customerdao.getSecurity1Credentials(mobile); }
	@Override
	public Security1 getSecurity1pwd(String userId) {
		return customerdao.getSecurity1password(userId);
	}
	@Override
	public boolean updatePassword(Customer customer) {
       Customer be1 = customerdao.save(customer);
		
		if(be1!=null) {
			
			return true;
		}
		else {
			return false;
		}
	}
	@Override
	public Customer getuserdata(String userId) {
		return customerdao.getCustomer(userId);
	}


	public int CreateFeedback(Feedbackquestions fq) {
		Feedbackquestions f=fdao.findByusername(fq.getUsername());
		if(f==null) {
		Feedbackquestions f1=fdao.save(fq);
		if(f1!=null) {
			return 1;
		}else {
			return 2;
		}
		
	}
		return 0;
	}
	
	public List<electricity> geElectricities() {
		
		return edao.findAll();
	}
	@Override
	public List<Dth> getDth() {
		
		return ddao.findAll();

	}
	@Override
	public List<Recordbills> getrecbills() {
		return recbildao.findAll();
	}

}
