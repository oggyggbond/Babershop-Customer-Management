package com.barbershop.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.barbershop.entity.Customer;
import com.barbershop.repository.CustomerRepository;
import com.barbershop.service.ImpCustomerService;

@Service
public class CustomerService implements ImpCustomerService{

	@Autowired
	private CustomerRepository customerRepository;
	
	@Override
	public List<Customer> findAll() {
		List<Customer> entities=customerRepository.findAll();
		return entities;
	}

	@Override
	public Customer findOneByEmail(String mail) {
		return customerRepository.findOneByEmail(mail);
	}

	@Override
	public void save(Customer customer) {
		// TODO Auto-generated method stub
		customerRepository.save(customer);
	}

	@Override
	public void update(Customer customer) {
		// TODO Auto-generated method stub
		customerRepository.save(customer);
	}

	@Override
	public void delete(Customer customer) {
		// TODO Auto-generated method stub
		customerRepository.delete(customer);
	}
}
