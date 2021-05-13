package com.cts.billpayment.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.cts.billpayment.entities.Recordbills;

public interface Recordbillsdao extends CrudRepository<Recordbills, Integer>
{

	
	Recordbills findByBillnumber(String billnumber);

	public List<Recordbills> findAll();
	

}
