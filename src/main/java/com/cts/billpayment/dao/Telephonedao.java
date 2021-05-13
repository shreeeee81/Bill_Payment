package com.cts.billpayment.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.cts.billpayment.entities.telephone;

public interface Telephonedao extends CrudRepository<telephone, Integer>
{

	telephone findByTelephonenumber(String telephonenumber);
	public List<telephone> findAll();
   
}
