package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import userbean.userbean;

public class login 

{
	
	public static void login(userbean user) 
	{
			try 
			{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","praveen","praveen");
				PreparedStatement pstmt=conn.prepareStatement("select * from profile where sname=? and password=?");
				pstmt.setString(1, user.getsname());
	            pstmt.setString(2, user.getpassword());
	            ResultSet rs=pstmt.executeQuery();
	            boolean req=rs.next();
	            if(req) 
	            {
	            	user.setvalid(true);
	            	user.setsname(rs.getString("sname"));
	            	user.setpassword(rs.getString("password"));
	            	user.setemail(rs.getString("email"));
	            	user.setrno(rs.getInt("rno"));
	            	user.setmarks(rs.getInt("marks"));
	            }
	            else
	            {
	            user.setvalid(false);
	            }
				
			}
				catch(Exception e)
				{
				System.out.println(e);
				}
			
		}
	

}
