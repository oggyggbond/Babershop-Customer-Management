package com.barbershop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.barbershop.entity.Account;
import com.barbershop.entity.Employee;
import com.barbershop.entity.Position;

public interface PositionRepository extends JpaRepository<Position, Integer>{

	List<Position> findAll();
	Position findOne(Integer id);
}
