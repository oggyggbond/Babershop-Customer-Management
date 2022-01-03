package com.barbershop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.barbershop.entity.BillDetails;

public interface BillDetailsRepository extends JpaRepository<BillDetails, Integer>{

	@Query(value = "select ct.MACTHD,ct.MADV,ct.MAHD,ct.SOLUONG " + 
			" from CT_HOADON ct, HOADON hd, KHACHHANG kh " + 
			" where ct.MAHD=hd.MAHD and hd.MAKH=kh.MAKH and kh.email=?", nativeQuery = true)
	List<BillDetails> findAllBillByEmail(String email);
	
	
}
