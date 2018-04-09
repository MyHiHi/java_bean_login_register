package com.javabean.Controller;

import org.junit.Assert;
import org.junit.Test;

import com.javabean.LoginBizImpl.LoginBizImpl;
import com.javabean.users.users;

public class LoginActionTest {
		@Test
		public void test(){
			users user=new users();
			user.setUsername("test1");
			user.setPassword("test1");
			LoginActionImpl lai=new LoginActionImpl();
			Assert.assertEquals("index.jsp", lai.execute(user));
		}
}
