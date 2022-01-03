package com.barbershop.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.barbershop.entity.Position;
import com.barbershop.repository.PositionRepository;
import com.barbershop.service.ImpPositionService;

@Service
public class PositionService implements ImpPositionService{

	@Autowired
	private PositionRepository positionRepository;
	
	@Override
	public List<Position> findAll() {
		List<Position> entities=positionRepository.findAll();
		return entities;
	}

	@Override
	public void save(Position position) {
		// TODO Auto-generated method stub
		positionRepository.save(position);
	}

	@Override
	public void update(Position position) {
		// TODO Auto-generated method stub
		positionRepository.save(position);
	}

	@Override
	public void delete(Position position) {
		// TODO Auto-generated method stub
		positionRepository.delete(position);
	}

	
}
