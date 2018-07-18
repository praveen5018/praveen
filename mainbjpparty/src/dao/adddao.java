package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import userbean.userbean;

public class adddao {

	public static void add(userbean user) {
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection conn = DriverManager
        		.getConnection("jdbc:oracle:thin:@localhost:1521:xe","anuroop","anuroop");
		PreparedStatement pstmt=conn.prepareStatement("insert into condiv  values(?,?,?,?,?,?,?,?,?,?,?)");	
		pstmt.setString(1, user.getConstitution());
		pstmt.setString(2, user.getDivison());
		pstmt.setString(3, user.getFirstname());
			pstmt.setString(4, user.getLastname());
			pstmt.setString(5, user.getEmail());
			pstmt.setString(6, user.getMobile());
			pstmt.setString(7, user.getUsername());
			pstmt.setString(8, user.getPassword());
			pstmt.setString(9, user.getRepeatpassword());
			pstmt.setString(10, user.getGender());
			pstmt.setString(11, user.getType());
			
			
			
	int i=pstmt.executeUpdate();
	
	if(i==1) {
		System.out.println("add Successfully");
	}else
	{
		System.out.println("Error Occured");
	}
				
		}catch(Exception e)
		{
			System.out.println(e);
		}
		
	}

}
