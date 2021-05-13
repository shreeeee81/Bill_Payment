package com.cts.billpayment.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cts.billpayment.dao.Recordbillsdao;
import com.cts.billpayment.entities.Dth;
import com.cts.billpayment.entities.Recordbills;
@Service
@Component
public class RecordbillsserviceImp implements Recordbillsservice
{
@Autowired
private Recordbillsdao rbdao;
	@Override
	public int savebills(Recordbills recordbill)
	{
		Recordbills rb= rbdao.findByBillnumber(recordbill.getBillnumber());
		if(rb==null)
		{
			Recordbills rb1=rbdao.save(recordbill);
			if(rb1!=null)
			{
				return 1;
			}
			
	}
		return 0;
	}
	
	@Override
	public List<Recordbills> getRecordbills1() {
		
		Iterable<Recordbills> rlist=rbdao.findAll();
		return (List<Recordbills>) rlist;
	}
}

	


