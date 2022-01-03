package com.barbershop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.barbershop.entity.Account;
import com.barbershop.entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Integer>{

	List<Customer> findAll();
	Customer findOneByEmail(String mail);
	
}
