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
@Table(name = "NHANVIEN")
public class Employee {

	@Id
	@GeneratedValue
	@Column(name = "MANV")
	private Integer maNv;
	@Column(name = "HO")
	private String ho;
	@Column(name = "TEN")
	private String ten;
	@Column(name = "SDT")
	private String sdt;
	@Column(name = "TRANGTHAI")
	private Boolean trangThai;
	@ManyToOne
	@JoinColumn(name = "MACV")
	private Position chucVu;
	
	@JoinColumn(name = "Email")
	private String email;
	
	@OneToMany(mappedBy = "idNV", fetch = FetchType.EAGER)
	private List<Bill> hd=new ArrayList<>();

	public Employee() {
		// TODO Auto-generated constructor stub
	}

	public Integer getMaNv() {
		return maNv;
	}

	public void setMaNv(Integer maNv) {
		this.maNv = maNv;
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

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public Boolean getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(Boolean trangThai) {
		this.trangThai = trangThai;
	}

	public Position getChucVu() {
		return chucVu;
	}

	public void setChucVu(Position chucVu) {
		this.chucVu = chucVu;
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
}
