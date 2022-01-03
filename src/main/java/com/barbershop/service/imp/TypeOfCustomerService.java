package com.barbershop.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.barbershop.entity.Role;
import com.barbershop.entity.TypeOfCustomer;
import com.barbershop.repository.TypeOfCustomerRepository;
import com.barbershop.service.ImpTypeCustomerService;

@Service
public class TypeOfCustomerService implements ImpTypeCustomerService{

	@Autowired
	private TypeOfCustomerRepository typeRepository;
	
	@Override
	public List<TypeOfCustomer> findAll() {
		List<TypeOfCustomer> entities=typeRepository.findAll();
		return entities;
	}

	@Override
	public void save(TypeOfCustomer type) {
		// TODO Auto-generated method stub
		typeRepository.save(type);
	}

	@Override
	public void update(TypeOfCustomer type) {
		// TODO Auto-generated method stub
		typeRepository.save(type);
	}

	@Override
	public void delete(TypeOfCustomer type) {
		// TODO Auto-generated method stub
		typeRepository.delete(type);
	}

}
