package com.barbershop.service;

import java.util.List;

import com.barbershop.entity.Customer;

public interface ImpCustomerService {

	List<Customer> findAll();
	Customer findOneByEmail(String mail);
	
	void save(Customer customer);
	void update(Customer customer);
	void delete(Customer customer);
}
