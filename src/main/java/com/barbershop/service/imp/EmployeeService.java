package com.barbershop.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.barbershop.entity.Employee;
import com.barbershop.repository.EmployeeRepository;
import com.barbershop.service.ImpEmployeeService;

@Service
public class EmployeeService implements ImpEmployeeService{

	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Override
	public List<Employee> findAll() {
		List<Employee> entities=employeeRepository.findAll();
		return entities;
	}

	@Override
	public Employee findOneByEmail(String mail) {
		return employeeRepository.findOneByEmail(mail);
	}
	
	@Override
	public void save(Employee employee) {
		// TODO Auto-generated method stub
		employeeRepository.save(employee);
	}

	@Override
	public void update(Employee employee) {
		// TODO Auto-generated method stub
		employeeRepository.save(employee);
	}

	@Override
	public void delete(Employee employee) {
		// TODO Auto-generated method stub
		employeeRepository.delete(employee);
	}
}
