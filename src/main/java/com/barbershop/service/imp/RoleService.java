package com.barbershop.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.barbershop.entity.Account;
import com.barbershop.entity.Role;
import com.barbershop.repository.RoleRepository;
import com.barbershop.service.ImpRoleService;

@Service
public class RoleService implements ImpRoleService{

	@Autowired
	private RoleRepository roleRepository;
	
	@Override
	public List<Role> findAll() {
		List<Role> entities=roleRepository.findAll();
		return entities;
	}

	@Override
	public void save(Role role) {
		// TODO Auto-generated method stub
		roleRepository.save(role);
	}

	@Override
	public void update(Role role) {
		// TODO Auto-generated method stub
		roleRepository.save(role);
	}

	@Override
	public void delete(Role role) {
		// TODO Auto-generated method stub
		roleRepository.delete(role);
	}

}
