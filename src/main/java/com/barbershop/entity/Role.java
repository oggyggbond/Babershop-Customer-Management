package com.barbershop.entity;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "QUYEN")
public class Role {
	@Id
	@GeneratedValue
	@Column(name = "MAQ")
	private Integer maQ;
	@Column(name = "QUYEN")
	private String quyen;
	@OneToMany(mappedBy = "maQuyen", fetch = FetchType.EAGER)
	private List<Account> taikhoan=new ArrayList<>();

	public Integer getMaQ() {
		return maQ;
	}

	public void setMaQ(Integer maQ) {
		this.maQ = maQ;
	}

	public String getQuyen() {
		return quyen;
	}

	public void setQuyen(String quyen) {
		this.quyen = quyen;
	}

	public Collection<Account> getTaikhoan() {
		return taikhoan;
	}

	public void setTaikhoan(List<Account> taikhoan) {
		this.taikhoan = taikhoan;
	}
}
