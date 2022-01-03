package com.barbershop.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.barbershop.entity.ServiceEntity;
import com.barbershop.repository.ServiceRepository;
import com.barbershop.service.ImpServiceService;

@Service
public class ServiceService implements ImpServiceService{

	@Autowired
	private ServiceRepository serviceRepository;
	
	@Override
	public List<ServiceEntity> findAll() {
		List<ServiceEntity> entities=serviceRepository.findAll();
		return entities;
	}

	@Override
	public void save(ServiceEntity service) {
		// TODO Auto-generated method stub
		serviceRepository.save(service);
	}

	@Override
	public void update(ServiceEntity service) {
		// TODO Auto-generated method stub
		serviceRepository.save(service);
	}

	@Override
	public void delete(ServiceEntity service) {
		// TODO Auto-generated method stub
		serviceRepository.delete(service);
	}
}
