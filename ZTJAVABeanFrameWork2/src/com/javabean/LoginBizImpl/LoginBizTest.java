package com.javabean.LoginBizImpl;
import org.junit.Assert;
import org.junit.Test;

import com.javabean.LoginDaoImpl.LoginDaoImpl;
import com.javabean.users.users;
public class LoginBizTest {
		@Test
		public void test(){
			users user=new users();
			user.setUsername("test");
			user.setPassword("test");
			LoginDaoImpl ldi=new LoginDaoImpl();
			Assert.assertEquals(true, ldi.login(user));
		}
}
