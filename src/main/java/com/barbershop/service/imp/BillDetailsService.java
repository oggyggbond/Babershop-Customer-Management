package com.barbershop.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.barbershop.entity.BillDetails;
import com.barbershop.repository.BillDetailsRepository;
import com.barbershop.service.ImpBillDtailsService;

@Service
public class BillDetailsService implements ImpBillDtailsService{

	@Autowired
	private BillDetailsRepository billRepo;

	@Override
	public List<BillDetails> findAllBillByEmail(String email) {
		List<BillDetails> entities=billRepo.findAllBillByEmail(email);
		return entities;
	}

}
