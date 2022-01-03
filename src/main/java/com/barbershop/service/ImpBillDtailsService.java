package com.barbershop.service;

import java.util.List;

import com.barbershop.entity.BillDetails;

public interface ImpBillDtailsService {

	List<BillDetails> findAllBillByEmail(String email);
}
