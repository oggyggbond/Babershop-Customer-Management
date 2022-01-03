package com.barbershop.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "LOAIKH")
public class TypeOfCustomer {
	@Id
	@GeneratedValue
	@Column(name = "MALOAI")
	private Integer maLoai;
	@Column(name = "TENLOAI")
	private String tenLoai;
	@Column(name = "DIEUKIEN")
	private Long dieuKien;
	@OneToMany(mappedBy = "loaiKh", fetch = FetchType.EAGER)
	private Collection<Customer> kh;

	public Integer getMaLoai() {
		return maLoai;
	}

	public void setMaLoai(Integer maLoai) {
		this.maLoai = maLoai;
	}

	public String getTenLoai() {
		return tenLoai;
	}

	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}

	public Long getDieuKien() {
		return dieuKien;
	}

	public void setDieuKien(Long dieuKien) {
		this.dieuKien = dieuKien;
	}

	public Collection<Customer> getKh() {
		return kh;
	}

	public void setKh(Collection<Customer> kh) {
		this.kh = kh;
	}
}
