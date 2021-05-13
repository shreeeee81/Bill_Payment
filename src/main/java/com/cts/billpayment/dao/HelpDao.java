package com.cts.billpayment.dao;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.cts.billpayment.entities.Help;

public interface HelpDao extends CrudRepository<Help,String>{
	public Help findByuserId(String userId);
public List<Help> findAll();
}


