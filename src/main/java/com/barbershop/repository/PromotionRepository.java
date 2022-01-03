package com.barbershop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.barbershop.entity.Promotion;

public interface PromotionRepository extends JpaRepository<Promotion, Integer>{

	List<Promotion> findAll();
	Promotion findOne(Integer id);
	
	@Query(value = "SELECT * FROM KHUYENMAI WHERE MADV=? AND NGAYKT>=? AND NGAYBD<=?", nativeQuery = true)
	Promotion findByMaDv(Integer id,String dateKT,String dateBD);
	
	@Query(value = "SELECT * FROM KHUYENMAI WHERE MADV=?", nativeQuery = true)
	Promotion findByMaDv(Integer id);
}
