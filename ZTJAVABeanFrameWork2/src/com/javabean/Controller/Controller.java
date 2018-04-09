package com.javabean.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import com.javabean.users.RegUsers;
import com.javabean.users.users;

public class Controller extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Controller() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,  response);
/*
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
		*/
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=GBK");
		response.getWriter();
		PrintWriter out = response.getWriter();
		out.println("alert('login')");
		String path = request.getServletPath();
		int len = path.length();
		int t = path.lastIndexOf("/");
		
		String subStr = path.substring(t+1,len-3);
		//System.out.println(t);
		if("login".equals(subStr))
		{
			
			users user = new users();
			String username = request.getParameter("name");
			String password = request.getParameter("password");
			user.setPassword(password);
			user.setUsername(username);
			
			request.getSession().setAttribute("user", user);
			LoginActionImpl la = new LoginActionImpl();
			request.getRequestDispatcher(la.execute(user)).forward(request, response);
		}else if ("register".equals(subStr)){
			RegUsers user = new RegUsers();
			String username = request.getParameter("name");
			String password = request.getParameter("password");
			String age = request.getParameter("age");
			String address = request.getParameter("address");
			String gender =request.getParameter("gender");
			user.setPassword(password);
			user.setUsername(username);
			user.setAge(age);
			user.setAddress(address);
			user.setGender(gender);
			request.getSession().setAttribute("user", user);
			RegActionImpl la = new RegActionImpl();
			request.getRequestDispatcher(la.execute(user)).forward(request, response);
		}else if ("checkReg".equals(subStr)) {
			RegActionImpl la = new RegActionImpl();
			out.println(la.execute(request));
		}
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
