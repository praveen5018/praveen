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
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","praveen","praveen");
				PreparedStatement pstmt=con.prepareStatement("select * from taskproject where username=? and password=? and status=?");
				pstmt.setString(1, user.getusername());
	            pstmt.setString(2, user.getpassword());
	            pstmt.setString(3, "activate");
	           
	            ResultSet rs=pstmt.executeQuery();
	            
	            boolean req=rs.next();
	            if(req) 
	            {
	            	user.setisvalid(true);
	            	
	            	user.setusername(rs.getString("username"));
	            	user.setpassword(rs.getString("password"));
	            	user.setemail(rs.getString("email"));
	            	user.setid(rs.getInt("id"));
	            	user.setaddress(rs.getString("address"));
	            	
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
