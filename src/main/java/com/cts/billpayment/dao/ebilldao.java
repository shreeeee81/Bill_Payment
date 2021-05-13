package com.cts.billpayment.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.cts.billpayment.entities.Dth;
import com.cts.billpayment.entities.electricity;

public interface ebilldao extends CrudRepository<electricity, Integer>
{

	electricity findByBillnumber(String billnumber);
	public List<electricity> findAll();
   
}
