package com.barbershop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.barbershop.entity.Account;
import com.barbershop.entity.Customer;

@Repository
public interface AccountRepository extends JpaRepository<Account, Integer>{

	List<Account> findAll();
	Account findOneByEmail(String mail);
}
