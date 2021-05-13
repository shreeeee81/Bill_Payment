package com.cts.billpayment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cts.billpayment.dao.Telephonedao;
import com.cts.billpayment.entities.telephone;

@Service
@Component
public class TelephonebillserviceImp implements Telephonebillservice
{
@Autowired
private Telephonedao ddao;
	@Override
	public int savebill(telephone phone) {
		telephone e= ddao.findByTelephonenumber(phone.getTelephonenumber());
		if(e==null)
		{
			telephone e1=ddao.save(phone);
			if(e1!=null)
			{
				return 1;
			}
			
	}
		return 0;
	}
}
