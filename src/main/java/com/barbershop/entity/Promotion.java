package com.barbershop.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "KHUYENMAI")
public class Promotion {
	@Id
	@GeneratedValue
	@Column(name = "MAKM")
	private Integer maKm;
	@Column(name = "NGAYBD")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date ngayBd;
	@Column(name = "NGAYKT")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date ngayKt;
	@Column(name = "MOTA")
	private String moTa;
	@Column(name = "GIAMGIA")
	private String giamGia;
	
	@ManyToOne
	@JoinColumn(name = "MADV")
	private ServiceEntity tenDv;

	public Integer getMaKm() {
		return maKm;
	}

	public void setMaKm(Integer maKm) {
		this.maKm = maKm;
	}

	public Date getNgayBd() {
		return ngayBd;
	}

	public void setNgayBd(Date ngayBd) {
		this.ngayBd = ngayBd;
	}

	public Date getNgayKt() {
		return ngayKt;
	}

	public void setNgayKt(Date ngayKt) {
		this.ngayKt = ngayKt;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getGiamGia() {
		return giamGia;
	}

	public void setGiamGia(String giamGia) {
		this.giamGia = giamGia;
	}

	public ServiceEntity getTenDv() {
		return tenDv;
	}

	public void setTenDv(ServiceEntity tenDv) {
		this.tenDv = tenDv;
	}
}
