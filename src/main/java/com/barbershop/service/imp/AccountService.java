package com.barbershop.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.barbershop.entity.Account;
import com.barbershop.repository.AccountRepository;
import com.barbershop.service.ImpAccountService;

@Service
public class AccountService implements ImpAccountService{

	@Autowired
	private AccountRepository accountRepository;
	
	@Override
	public List<Account> findAll() {
		List<Account> entities=accountRepository.findAll();
		return entities;
	}

	@Override
	public void register(Account account) {
		account.setPassword(encode(account.getPassword()));
		accountRepository.save(account);
	}

	public String encode(String pass) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(12); // Strength set as 12 
		String encodedPassword =encoder.encode(pass);
		return encodedPassword;
	}

	@Override
	public Account findOneByEmail(String email) {
		return accountRepository.findOneByEmail(email);
	}

	@Override
	public void save(Account account) {
		// TODO Auto-generated method stub
		account.setPassword(encode(account.getPassword()));
		accountRepository.save(account);
	}

	@Override
	public void update(Account account) {
		// TODO Auto-generated method stub
		account.setPassword(encode(account.getPassword()));
		accountRepository.save(account);
	}

	@Override
	public void delete(Account account) {
		// TODO Auto-generated method stub
		accountRepository.delete(account);
	}
}
