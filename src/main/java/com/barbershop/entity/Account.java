

package com.barbershop.entity;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TAIKHOAN")
public class Account {
	@Id
	@Column(name = "Email")
	private String email;
	@Column(name = "Password")
	private String password;
	@ManyToOne
	@JoinColumn(name = "MAQ")
	private Role maQuyen;
	
	public Account(){
		super();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Role getMaQuyen() {
		return maQuyen;
	}

	public void setMaQuyen(Role maQuyen) {
		this.maQuyen = maQuyen;
	}

}
