package com.javabean.Controller;

import org.junit.Assert;
import org.junit.Test;

import com.javabean.users.users;
public class LoginActionImplTest {
		@Test
		public void test(){
			LoginActionImpl lai=new LoginActionImpl();
			users user=new users();
			user.setPassword("test");
			user.setUsername("test");
			Assert.assertEquals("LoginSuccess.jsp", lai.execute(user));
		}
}
