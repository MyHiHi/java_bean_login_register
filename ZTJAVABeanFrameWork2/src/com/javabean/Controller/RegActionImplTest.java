package com.javabean.Controller;

import org.junit.Assert;
import org.junit.Test;

import com.javabean.users.RegUsers;

public class RegActionImplTest {
	@Test
	public void test(){
		RegUsers user=new RegUsers();
		user.setUsername("test1");
		user.setPassword("test1");
		user.setAge("12");
		user.setAddress("test1");
		user.setGender("0");
		RegActionImpl rai=new RegActionImpl();
		Assert.assertEquals("LoginSuccess.jsp", rai.execute(user));
	}
}
