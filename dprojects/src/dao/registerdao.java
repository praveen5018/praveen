package dao;

import java.sql.Connection;


import java.sql.DriverManager;

import java.sql.PreparedStatement;

import userbean.userbean;

public class registerdao 
{

	public static void register(userbean user) 
	
	{
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","praveen","praveen");
			PreparedStatement pstmt=conn.prepareStatement("insert into profile(sname,password,email,rno,marks) values(?,?,?,?,?)");
			pstmt.setString(1, user.getsname());
			pstmt.setString(2, user.getpassword());
			pstmt.setString(3, user.getemail());
			pstmt.setInt(4, user.getrno());
			pstmt.setInt(5, user.getmarks());
			int i=pstmt.executeUpdate();
			if(i==1)
			{
			
				
				System.out.println("Student Register success");
				user.setvalid(true);
				
			}else 
			
			{
				System.out.println("Student Register not success");
				user.setvalid(false);
				
			}
			
		}catch(Exception e) 
		
		{
			System.out.println(e);
		}
		
	}

}
