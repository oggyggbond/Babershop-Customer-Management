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
@Table(name = "DICHVU")
public class ServiceEntity {
	@Id
	@GeneratedValue
	@Column(name = "MADV")
	private Integer maDv;
	@Column(name = "TENDV")
	private String tenDv;
	@Column(name = "GIA")
	private Double gia;
	@Column(name = "TRANGTHAI")
	private Boolean trangThai;
	
	@OneToMany(mappedBy = "tenDv", fetch = FetchType.EAGER)
	private Collection<Promotion> km;
	
	@OneToMany(mappedBy = "tenDv", fetch = FetchType.EAGER)
	private Collection<BillDetails> cthd; 

	public Integer getMaDv() {
		return maDv;
	}

	public void setMaDv(Integer maDv) {
		this.maDv = maDv;
	}

	public String getTenDv() {
		return tenDv;
	}

	public void setTenDv(String tenDv) {
		this.tenDv = tenDv;
	}

	public Double getGia() {
		return gia;
	}

	public void setGia(Double gia) {
		this.gia = gia;
	}

	public Boolean getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(Boolean trangThai) {
		this.trangThai = trangThai;
	}

	public Collection<BillDetails> getCthd() {
		return cthd;
	}

	public void setCthd(Collection<BillDetails> cthd) {
		this.cthd = cthd;
	}

	public Collection<Promotion> getKm() {
		return km;
	}

	public void setKm(Collection<Promotion> km) {
		this.km = km;
	}
}
