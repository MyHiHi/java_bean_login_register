package com.javabean.Controller;

import com.javabean.Interface.LoginAction;
import com.javabean.LoginBizImpl.LoginBizImpl;
import com.javabean.users.users;

public class LoginActionImpl implements LoginAction {

	public String execute(users user) {
		// TODO Auto-generated method stub
		LoginBizImpl lbi=new LoginBizImpl();
		
		if (lbi.login(user)){
			
			return "LoginSuccess.jsp";
		}
		else
		{
			//System.out.println("***********");
			return "RegisterIndex.jsp";
		}
	}

}
