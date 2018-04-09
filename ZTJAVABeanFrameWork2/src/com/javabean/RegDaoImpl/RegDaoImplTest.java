package com.javabean.RegDaoImpl;

import org.junit.Assert;
import org.junit.Test;

import com.javabean.users.RegUsers;

public class RegDaoImplTest {
	@Test
	public void test(){
		RegUsers user=new RegUsers();
		user.setUsername("test1");
		user.setPassword("test");
		user.setAge("test");
		user.setAddress("test");
		user.setGender("1");
		RegDaoImpl ldi=new RegDaoImpl();
		Assert.assertEquals(true,ldi.register(user));
	}
}
