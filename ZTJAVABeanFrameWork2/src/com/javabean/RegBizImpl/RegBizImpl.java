package com.javabean.RegBizImpl;

import com.javabean.Interface.RegBizInterface;
import com.javabean.RegDaoImpl.RegDaoImpl;
import com.javabean.users.RegUsers;

public class RegBizImpl implements RegBizInterface {
	private RegDaoImpl rdi=new RegDaoImpl();

	public boolean register(RegUsers user) {
		// TODO Auto-generated method stub
		if (rdi.register(user))
			return true;
		return false;
	}
	public boolean checkReg(RegUsers user) {
		// TODO Auto-generated method stub
		if (rdi.checkReg(user))
			return true;
		return false;
	}

}
