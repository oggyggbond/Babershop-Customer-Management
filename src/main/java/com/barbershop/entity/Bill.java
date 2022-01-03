package com.barbershop.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "HOADON")
public class Bill {
	@Id
	@GeneratedValue
	@Column(name = "MAHD")
	private Integer maHd;
	@Column(name = "NGAY")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/mm/yyyy")
	private Date ngay;
	@Column(name = "TONGTIEN")
	private Double tongTien;
	@OneToMany(mappedBy = "idBill", fetch = FetchType.EAGER)
	private Collection<BillDetails> cthd;
	@ManyToOne
	@JoinColumn(name = "MAKH")
	private Customer hoTenKh;
	@ManyToOne
	@JoinColumn(name = "MANV")
	private Employee idNV;
	

	public Integer getMaHd() {
		return maHd;
	}

	public void setMaHd(Integer maHd) {
		this.maHd = maHd;
	}

	public Date getNgay() {
		return ngay;
	}

	public void setNgay(Date ngay) {
		this.ngay = ngay;
	}

	public Double getTongTien() {
		return tongTien;
	}

	public void setTongTien(Double tongTien) {
		this.tongTien = tongTien;
	}

	public Customer getHoTenKh() {
		return hoTenKh;
	}

	public void setHoTenKh(Customer hoTenKh) {
		this.hoTenKh = hoTenKh;
	}

	public Employee getHoTenNv() {
		return idNV;
	}

	public void setHoTenNv(Employee idNV) {
		this.idNV = idNV;
	}

	public Collection<BillDetails> getCthd() {
		return cthd;
	}

	public void setCthd(Collection<BillDetails> cthd) {
		this.cthd = cthd;
	}

	public Employee getIdNV() {
		return idNV;
	}

	public void setIdNV(Employee idNV) {
		this.idNV = idNV;
	}
}
