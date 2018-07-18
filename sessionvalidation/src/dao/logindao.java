package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import userbean.userbean;

public class logindao 

{

	public static void login(userbean user) throws ClassNotFoundException, SQLException
	
	
	
	{
		try {
		
		
	Class.forName("oracle.jdbc.driver.OracleDriver");
			
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","praveen","praveen");
	
	PreparedStatement ps=conn.prepareStatement("select * from empdata where username=? and password=?");
	
	ps.setString(1, user.getusername());
	
	ps.setString(2, user.getpassword());
	
	ResultSet rs=ps.executeQuery();
		
		
	 boolean req=rs.next();
     if(req) 
     {
     	user.setisvalid(true);
     	user.setusername(rs.getString("username"));
     	
     	user.setpassword(rs.getString("password"));
     	
     	user.setemail(rs.getString("email"));
     	
     	
     }
     else
     {
     user.setisvalid(false);
     }
	
	
		}catch(Exception e)
		{
			
			System.out.println(e);
		}
	}
	
	

}
