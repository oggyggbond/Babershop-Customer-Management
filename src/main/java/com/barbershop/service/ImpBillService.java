package com.barbershop.service;

import java.util.List;

import com.barbershop.entity.Bill;

public interface ImpBillService {

	String sumOfDay();
	List<Bill> findAll();
	String sumOfYear();
	String sumOfMonth();
	String sumOfDayToDay(String start,String end);
	void save(String tongtien,String trangthai,String string,String manv);
	void save(Bill bill);
	void update(Bill bill);
	void delete(Bill bill);
}
