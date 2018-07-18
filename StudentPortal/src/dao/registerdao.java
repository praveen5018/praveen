package dao;

import java.sql.Connection;

import java.io.File;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import userbean.userbean;

public class registerdao 

{

	public static void regsiter(userbean user) throws ClassNotFoundException , SQLException
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","praveen","praveen");
		
		PreparedStatement ps=con.prepareStatement("insert into company(uname,password,email,id,address,status) values(?,?,?,?,?,?)");
		
		ps.setString(1, user.getuname());
		
		ps.setString(2, user.getpassword());
		
		ps.setString(3, user.getemail());
		
		ps.setInt(4, user.getid());
		
		ps.setString(5, user.getaddress());		
		
		ps.setString(6, "Not Approved");	
		
		
		int i=ps.executeUpdate();		
		if(i==1)
		{
			
			
			user.setisvalid(true);
		}
		
		else
		{
			
			user.setisvalid(false);
			
		}
	}
	
}
