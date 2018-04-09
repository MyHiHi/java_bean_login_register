package com.javabean.Controller;

import javax.servlet.http.HttpServletRequest;

import com.javabean.Interface.RegAction;
import com.javabean.users.RegUsers;
import com.javabean.RegBizImpl.RegBizImpl;
public class RegActionImpl implements RegAction {


	public String execute(RegUsers user) {
		// TODO Auto-generated method stub
		RegBizImpl rbi=new RegBizImpl();
		if(rbi.register(user))
			return "LoginSuccess.jsp";
		else {
			System.out.println("********");
			return "RegisterIndex.jsp";
			//return "Index.jsp";
		}
			
	} 
	public String execute(HttpServletRequest request) {
		// TODO Auto-generated method stub
		RegBizImpl rbi=new RegBizImpl();
		RegUsers user=new RegUsers();
		user.setUsername(request.getParameter("username"));
		if(rbi.checkReg(user))
			return "该用户已存在 ";
		else
			return "该用户可以使用";
	} 

}
