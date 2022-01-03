package com.barbershop.service;

import java.util.List;

import com.barbershop.entity.ServiceEntity;

public interface ImpServiceService {

	List<ServiceEntity> findAll();
	void save(ServiceEntity service);
	void update(ServiceEntity service);
	void delete(ServiceEntity service);
}
