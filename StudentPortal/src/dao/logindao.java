package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import userbean.userbean;

public class logindao 

{

	public static void login(userbean user) 
	{
			try 
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","praveen","praveen");
				PreparedStatement pstmt=conn.prepareStatement("select * from company where uname=? and password=? and status=?");
				pstmt.setString(1, user.getuname());
	            pstmt.setString(2, user.getpassword());
	            pstmt.setString(3, "Approved");
	            ResultSet rs=pstmt.executeQuery();
	            boolean req=rs.next();
	            if(req) 
	            {
	            	user.setisvalid(true);
	            	
	            	user.setuname(rs.getString("uname"));
	            	user.setpassword(rs.getString("password"));
	            	user.setstatus(rs.getString("status"));
	            }
	            else
	            {
	            user.setisvalid(false);
	            
	            
	            }
				
			}
				catch(Exception e)
				{
				System.out.println(e);
				}
			
		}
	
	
	
}
