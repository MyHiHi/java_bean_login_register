package com.javabean.LoginDaoImpl;

import org.junit.Assert;
import org.junit.Test;

import com.javabean.users.users;
public class LoginDaoImplTest {
		@Test
		public void test(){
			users user=new users();
			user.setUsername("test");
			user.setPassword("test");
			LoginDaoImpl ldi=new LoginDaoImpl();
			Assert.assertEquals(true,ldi.login(user));
		}
}
