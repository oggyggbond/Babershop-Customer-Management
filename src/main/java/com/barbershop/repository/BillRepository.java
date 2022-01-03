package com.barbershop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.barbershop.entity.Bill;

public interface BillRepository extends JpaRepository<Bill, Integer>{
	
	@Query(value = "SELECT SUM(tongtien) FROM hoadon p WHERE CAST(p.ngay AS DATE)  = CAST(GETDATE() AS DATE)", nativeQuery = true)
	String sumOfDay();
	
	@Query(value = "SELECT SUM(tongtien) FROM hoadon p WHERE MONTH (CAST(p.ngay AS DATE))  = MONTH (CAST(GETDATE() AS DATE))", nativeQuery = true)
	String sumOfMonth();

	@Query(value = "SELECT SUM(tongtien) FROM hoadon p WHERE YEAR (CAST(p.ngay AS DATE))  =YEAR (CAST(GETDATE() AS DATE))", nativeQuery = true)
	String sumOfYear();
	
	@Query(value = "SELECT SUM(tongtien) FROM hoadon p WHERE NGAY>=? AND NGAY<=?;", nativeQuery = true)
	String sumOfDayToDay(String start,String end);

	@Modifying
	@Query(value = "insert into hoadon(tongtien,trangthai,makh,manv) values(?,?,?,?)", nativeQuery = true)
	public int addBill(String tongtien,String trangthai,String string,String manv);
	

	@Modifying
	@Query( value = "insert into ct_hoadon(madv,mahd) values(?,?)", nativeQuery = true)
	public int addBillDetails(String tongtien,String string);
	
	
	@Query(value = "SELECT * FROM HOADON WHERE mahd=(SELECT max(mahd) FROM HOADON)", nativeQuery = true)
	Bill findLastId();

}
