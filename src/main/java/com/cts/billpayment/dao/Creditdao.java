package com.cts.billpayment.dao;

import org.springframework.data.repository.CrudRepository;

import com.cts.billpayment.entities.Credit;

public interface Creditdao extends CrudRepository<Credit, String>
{

}
