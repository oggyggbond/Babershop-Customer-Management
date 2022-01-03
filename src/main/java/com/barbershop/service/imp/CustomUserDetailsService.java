package com.barbershop.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.barbershop.entity.Account;
import com.barbershop.entity.MyUser;
import com.barbershop.repository.AccountRepository;
@Service
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private AccountRepository memberRepository;

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		Account memberEntity = memberRepository.findOneByEmail(email);
		if (memberEntity == null) {
			throw new UsernameNotFoundException("User not found");
		}
		List<GrantedAuthority> authorities = new ArrayList<>();
		authorities.add(new SimpleGrantedAuthority(memberEntity.getMaQuyen().getQuyen()));
		
		MyUser user = new MyUser(memberEntity.getEmail(), memberEntity.getPassword(), true, true, true, true,
				authorities);
		user.setEmail(memberEntity.getEmail());
		return user;
	}

}
