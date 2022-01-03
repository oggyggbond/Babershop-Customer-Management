package com.barbershop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.barbershop.entity.ServiceEntity;
import com.barbershop.entity.TypeOfCustomer;

public interface ServiceRepository extends JpaRepository<ServiceEntity, Integer>{
	
	List<ServiceEntity> findAll();
	ServiceEntity findOne(Integer id);
}
