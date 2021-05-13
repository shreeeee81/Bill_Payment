package com.cts.billpayment.service;



import java.util.List;

import com.cts.billpayment.entities.Recordbills;
import com.cts.billpayment.entities.electricity;

public interface Recordbillsservice
{
public int savebills(Recordbills recordbill);

public List<Recordbills> getRecordbills1();
}
