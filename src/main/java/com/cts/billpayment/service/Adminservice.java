package com.cts.billpayment.service;

import java.util.List;

import com.cts.billpayment.entities.Aminlogin;
import com.cts.billpayment.entities.Dth;
import com.cts.billpayment.entities.Help;
import com.cts.billpayment.entities.Vendor;
import com.cts.billpayment.entities.electricity;
import com.cts.billpayment.entities.telephone;

public interface Adminservice 
{
public boolean login(Aminlogin adminlogin);
public List<Vendor> getallvendors();
public boolean activate(String username);
public boolean deactivate(String username);
public List<electricity> getelectricbills();
public List<Dth> getdthbills();
List<Help> getallhelpList();
public List<telephone> getTelephonebills();
}
