package com.barbershop.service;

import java.util.List;

import com.barbershop.entity.Role;

public interface ImpRoleService {

	List<Role> findAll();
	void save(Role role);
	void update(Role role);
	void delete(Role role);
}
