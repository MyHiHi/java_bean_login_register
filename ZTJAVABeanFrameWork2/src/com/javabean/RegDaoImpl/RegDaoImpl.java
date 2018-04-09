package com.javabean.RegDaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.javabean.Interface.RegDaoInterface;
import com.javabean.users.RegUsers;
import com.javabean.utility.ConnectionManager;

public class RegDaoImpl implements RegDaoInterface {
	private Connection conn=null;
	private PreparedStatement ps=null;
	private int rs=0;

	public boolean register(RegUsers user) {
		try{
			conn=ConnectionManager.getConnection();
			String sql="insert into users  values(?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2,user.getPassword());
			ps.setString(3, user.getAge());
			ps.setString(4,user.getAddress());
			ps.setString(5,user.getGender());
			rs=ps.executeUpdate();
			if (rs>0)
				return true;
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
//			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeConnection(conn);
		}
		return false;
	}
	
	public boolean checkReg(RegUsers user) {
		try{
			ResultSet rs=null;
			conn=ConnectionManager.getConnection();
			String sql="select * from users where name=(?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			rs=ps.executeQuery();
			if (rs.next())
				return true;
		}catch(Exception e){
			e.printStackTrace();
		}
		finally{
//			ConnectionManager.closeResultSet(rs);
			ConnectionManager.closeStatement(ps);
			ConnectionManager.closeConnection(conn);
		}
		return false;
	}

}
