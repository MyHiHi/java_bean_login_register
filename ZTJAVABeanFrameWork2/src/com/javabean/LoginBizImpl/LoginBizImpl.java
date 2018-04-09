package com.javabean.LoginBizImpl;

import com.javabean.Interface.LoginBizInterface;
import com.javabean.LoginDaoImpl.LoginDaoImpl;
import com.javabean.users.users;

public class LoginBizImpl implements LoginBizInterface {

	private LoginDaoImpl ldi=new LoginDaoImpl();

	public boolean login(users user) {
		// TODO Auto-generated method stub
		
		if (ldi.login(user))
			return true;
		return false;
	}

}
