package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import userbean.userbean;

public class problemdao {

	public static void problem(userbean user) {
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
	         Connection conn = DriverManager
	        		.getConnection("jdbc:oracle:thin:@localhost:1521:xe","anuroop","anuroop");
			PreparedStatement pstmt=conn.prepareStatement("insert into problems  values(?,?,?,?,?,?,?)");
			pstmt.setString(1, user.getConname());
			pstmt.setString(2, user.getDivname());
			pstmt.setString(3, user.getUsername());
			pstmt.setString(4, user.getMobile());
			pstmt.setString(5, user.getProblem());
			pstmt.setString(6, user.getMessage());
			pstmt.setString(7, user.getStatus());
			int i=pstmt.executeUpdate();
			
			if(i==1) {
				System.out.println("add Successfully");
			}else
			{
				System.out.println("Error Occured");
			}
			
		}catch(Exception e)
		{
			
		}
		
	}

}
