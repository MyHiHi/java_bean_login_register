package com.javabean.RegBizImpl;

import org.junit.Assert;
import org.junit.Test;

import com.javabean.users.RegUsers;
import com.javabean.RegDaoImpl.RegDaoImpl;

public class RegBizImplTest {
		@Test
		public void test(){
			RegDaoImpl rdi=new RegDaoImpl();
			RegUsers user=new RegUsers();
			user.setUsername("test1");
			user.setPassword("test");
			user.setAge("test");
			user.setAddress("test");
			user.setGender("0");
			Assert.assertEquals(true,rdi.register(user));
		}
}
