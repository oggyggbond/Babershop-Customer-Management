package com.barbershop.entity;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "KHACHHANG")
public class Customer {

	@Id
	@GeneratedValue
	@Column(name = "MAKH")
	private Integer maKh;
	@Column(name = "HO")
	private String ho;
	@Column(name = "TEN")
	private String ten;
	@Column(name = "PHAI")
	private Boolean phai;
	@JoinColumn(name = "Email")
	private String email;
	@Column(name = "SDT")
	private String sdt;
	@ManyToOne
	@JoinColumn(name = "MALOAI")
	private TypeOfCustomer loaiKh;
	@OneToMany(mappedBy = "hoTenKh", fetch = FetchType.EAGER)
	private List<Bill> hd=new ArrayList<>();

	public Customer() {
		// TODO Auto-generated constructor stub
	}

	public Integer getMaKh() {
		return maKh;
	}

	public void setMaKh(Integer maKh) {
		this.maKh = maKh;
	}

	public String getHo() {
		return ho;
	}

	public void setHo(String ho) {
		this.ho = ho;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public Boolean getPhai() {
		return phai;
	}

	public void setPhai(Boolean phai) {
		this.phai = phai;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public TypeOfCustomer getLoaiKh() {
		return loaiKh;
	}

	public void setLoaiKh(TypeOfCustomer loaiKh) {
		this.loaiKh = loaiKh;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Collection<Bill> getHd() {
		return hd;
	}

	public void setHd(List<Bill> hd) {
		this.hd = hd;
	}
	
	public String getHt(String hoten) {
		return ho +" " + ten;
	}
}
