package com.javabean.LoginDaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.javabean.Interface.LoginDaoInterface;
import com.javabean.users.users;
import com.javabean.utility.ConnectionManager;

public class LoginDaoImpl implements LoginDaoInterface {

	private Connection conn=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	
	public boolean login(users user) {
		// TODO Auto-generated method stub
		try{
			System.out.println("UIUIUIUI"+user.getPassword()+" "+user.getUsername());
			conn=ConnectionManager.getConnection();
			String sql="select * from users where username=(?) and password=(?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2,user.getPassword());
			rs=ps.executeQuery();
			if (rs.next())
				return true;
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeConnection(conn);
		}
		return false;
	}

}
