package com.cts.billpayment.dao;
import java.util.List;


import org.springframework.data.repository.CrudRepository;

import com.cts.billpayment.entities.Feedbackquestions;

public interface feedbackdao extends CrudRepository<Feedbackquestions,Integer>

{
	public List<Feedbackquestions>  findAll();
	public Feedbackquestions findByusername(String userName);


}



