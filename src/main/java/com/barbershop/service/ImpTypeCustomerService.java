package com.barbershop.service;

import java.util.List;

import com.barbershop.entity.TypeOfCustomer;

public interface ImpTypeCustomerService {

	List<TypeOfCustomer> findAll();
	
	void save(TypeOfCustomer type);
	void update(TypeOfCustomer type);
	void delete(TypeOfCustomer type);
}
