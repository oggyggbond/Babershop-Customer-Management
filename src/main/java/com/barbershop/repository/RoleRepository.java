package com.barbershop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.barbershop.entity.Role;
import com.barbershop.entity.TypeOfCustomer;

public interface RoleRepository extends JpaRepository<Role, Integer>{

	List<Role> findAll();
}
