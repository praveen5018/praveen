package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import userbean.userbean;

public class coursedao 

{
	public static void course(userbean user) throws SQLException, ClassNotFoundException 
	
	{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","praveen","praveen");
		
		PreparedStatement ps=con.prepareStatement("insert into addcourse(course1,course2,course3,course4)values(?,?,?,?)");
		
		ps.setString(1, user.getAddcourse1());
		
		ps.setString(2, user.getAddcourse2());
		
		ps.setString(3, user.getAddcourse3());
		
		ps.setString(4, user.getAddcourse4());
		
		int i=ps.executeUpdate();
		
		if(i==0)
		{
			System.out.println("Addcourse Sucess");
			
			user.setisvalid(true);
			
		}
		
		else {
			
			
			
			user.setisvalid(false);
			
		}
	}

}
