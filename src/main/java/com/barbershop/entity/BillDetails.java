package com.barbershop.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "CT_HOADON")
public class BillDetails {
	@Id
	@GeneratedValue
	@Column(name = "MACTHD")
	private Integer maCthd;
	@ManyToOne
	@JoinColumn(name = "MADV")
	private ServiceEntity tenDv;
	@ManyToOne
	@JoinColumn(name = "MAHD")
	private Bill idBill;
	@Column(name = "SOLUONG")
	private Integer soLuong;

	public Integer getMaCthd() {
		return maCthd;
	}

	public void setMaCthd(Integer maCthd) {
		this.maCthd = maCthd;
	}

	public ServiceEntity getTenDv() {
		return tenDv;
	}

	public void setTenDv(ServiceEntity tenDv) {
		this.tenDv = tenDv;
	}

	public Integer getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(Integer soLuong) {
		this.soLuong = soLuong;
	}

	public Bill getIdBill() {
		return idBill;
	}

	public void setIdBill(Bill idBill) {
		this.idBill = idBill;
	}
}
