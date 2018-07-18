package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import userbean.userbean;

public class updatedao 

{

	public static void update(userbean user) 
	{
		try {
			
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","praveen","praveen ");
			PreparedStatement pstmt=con.prepareStatement("update company set password=?,email=?,id=?,address=? where uname=?");
			pstmt.setString(5, user.getuname());
			pstmt.setString(1, user.getpassword());
			pstmt.setString(2, user.getemail());
			pstmt.setInt(3, user.getid());
			pstmt.setString(4, user.getaddress());
			int i=pstmt.executeUpdate();
			if(i==1){
				System.out.println("update success");
			}else {
				System.out.println("update not success");
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
	}

	
}
