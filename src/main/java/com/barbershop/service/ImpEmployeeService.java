package com.barbershop.service;

import java.util.List;

import com.barbershop.entity.Employee;

public interface ImpEmployeeService {

	List<Employee> findAll();
	Employee findOneByEmail(String mail);
	void save(Employee employee);
	void update(Employee employee);
	void delete(Employee employee);
}
