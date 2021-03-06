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
@Table(name = "CHUCVU")
public class Position {

	@Id
	@GeneratedValue
	@Column(name = "MACV")
	private Integer maCv;
	@Column(name = "CHUCVU")
	private String name;
	@OneToMany(mappedBy = "chucVu", fetch = FetchType.EAGER)
	private List<Employee> nv=new ArrayList<>();

	public Integer getMaCv() {
		return maCv;
	}

	public void setMaCv(Integer maCv) {
		this.maCv = maCv;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Collection<Employee> getNv() {
		return nv;
	}

	public void setNv(List<Employee> nv) {
		this.nv = nv;
	}
	
}
