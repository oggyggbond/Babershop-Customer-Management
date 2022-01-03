package com.barbershop.service;

import java.util.List;

import com.barbershop.entity.Promotion;

public interface ImpPromotionService {

	List<Promotion> findAll();
	Promotion findByMaDv(Integer id,String dateKT,String dateBD);
	
	void save(Promotion promotion);
	void update(Promotion promotion);
	void delete(Promotion promotion);
}
