package com.gss.web.common.service;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;

class MemberServiceImplTest {
	
	@Autowired
	private PasswordEncoder ps;

	@Test
	void test() {
		String pw = ps.encode("1234");
		System.out.println(pw);
	}

}
