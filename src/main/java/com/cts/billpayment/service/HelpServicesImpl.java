package com.cts.billpayment.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cts.billpayment.dao.HelpDao;
import com.cts.billpayment.entities.Help;

@Service
@Component

public class HelpServicesImpl implements HelpService {
    @Autowired
    private HelpDao hdao;
	@Override
	public List<Help> helplist() {
	
		return hdao.findAll();
	}
	@Override
	public int savehelp(Help help) {
		Help h1=hdao.save(help);
		if(h1==null)
		{
			return 1;
		}
		return 2;
	}
}
