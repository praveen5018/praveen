package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import userbean.userbean;

public class registerdao 

{

		public static void register(userbean user) throws ClassNotFoundException, SQLException
	
		{
			try {
			
			
		Class.forName("oracle.jdbc.driver.OracleDriver");
				
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","praveen","praveen");
		
		PreparedStatement ps=conn.prepareStatement("insert into empdata(username,password,email)values(?,?,?)");
		
		ps.setString(1, user.getusername());
		
		ps.setString(2, user.getpassword());
		
		ps.setString(3, user.getemail());
		
		ResultSet rs=ps.executeQuery();
			
			
		 boolean req=rs.next();
	     if(req) 
	     {
	     	user.setisvalid(true);
	     	
	     System.out.println("Register sucess");
	     	
	     }
	     else
	     {
	     user.setisvalid(false);
	     
	     System.out.println("Register Not sucess");
	     
	     }
		
		
			}catch(Exception e)
			{
				
				System.out.println(e);
			}
		}
		
		
	
	
	
	
}
