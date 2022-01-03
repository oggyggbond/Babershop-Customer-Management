package com.barbershop.service;

import java.util.List;

import com.barbershop.entity.Position;

public interface ImpPositionService {

	List<Position> findAll();
	void save(Position position);
	void update(Position position);
	void delete(Position position);
}
