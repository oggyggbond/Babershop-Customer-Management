package com.barbershop.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.barbershop.entity.Promotion;
import com.barbershop.repository.PromotionRepository;
import com.barbershop.service.ImpPromotionService;

@Service
public class PromotionService implements ImpPromotionService{

	@Autowired
	private PromotionRepository promotionRepository;
	
	@Override
	public List<Promotion> findAll() {
		List<Promotion> entities=promotionRepository.findAll();
		return entities;
	}
	@Override
	public Promotion findByMaDv(Integer id, String dateKT, String dateBD) {
		// TODO Auto-generated method stub
		return promotionRepository.findByMaDv(id, dateKT,dateBD);
	}
	@Override
	public void save(Promotion promotion) {
		// TODO Auto-generated method stub
		promotionRepository.save(promotion);
	}
	@Override
	public void update(Promotion promotion) {
		// TODO Auto-generated method stub
		promotionRepository.save(promotion);
	}
	@Override
	public void delete(Promotion promotion) {
		// TODO Auto-generated method stub
		promotionRepository.delete(promotion);
	}

}
