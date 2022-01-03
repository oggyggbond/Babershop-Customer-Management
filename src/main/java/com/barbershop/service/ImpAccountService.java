package com.barbershop.service;

import java.util.List;

import com.barbershop.entity.Account;

public interface ImpAccountService {

	List<Account> findAll( );
	Account findOneByEmail(String email);
	void register(Account account);
	void save(Account account);
	void update(Account account);
	void delete(Account account);
}
