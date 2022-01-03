package com.barbershop.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.barbershop.entity.Bill;
import com.barbershop.entity.Employee;
import com.barbershop.repository.BillRepository;
import com.barbershop.service.ImpBillService;

@Service
public class BillService implements ImpBillService{

	@Autowired
	private BillRepository billRepository;
	
	@Override
	public String sumOfDay() {
		return billRepository.sumOfDay();
	}

	@Override
	public List<Bill> findAll() {
		// TODO Auto-generated method stub
		return billRepository.findAll();
	}

	@Override
	public String sumOfYear() {
		// TODO Auto-generated method stub
		return billRepository.sumOfYear();
	}

	@Override
	public String sumOfMonth() {
		// TODO Auto-generated method stub
		return billRepository.sumOfMonth();
	}

	@Override
	public void save(String tongtien, String trangthai, String string, String manv) {
		billRepository.addBill(tongtien, trangthai, string, manv);
		
	}

	@Override
	public String sumOfDayToDay(String start, String end) {
		// TODO Auto-generated method stub
		return billRepository.sumOfDayToDay(start,end);
	}

	@Override
	public void save(Bill bill) {
		// TODO Auto-generated method stub
		billRepository.save(bill);
	}

	@Override
	public void update(Bill bill) {
		// TODO Auto-generated method stub
		billRepository.save(bill);
	}

	@Override
	public void delete(Bill bill) {
		// TODO Auto-generated method stub
		billRepository.delete(bill);
	}


}
