package com.barbershop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.barbershop.entity.Account;
import com.barbershop.entity.Position;
import com.barbershop.entity.TypeOfCustomer;

@Repository
public interface TypeOfCustomerRepository extends JpaRepository<TypeOfCustomer, Integer>{

	List<TypeOfCustomer> findAll();
	TypeOfCustomer findOne(Integer id);
}
