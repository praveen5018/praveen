
package databasecon;

import java.sql.Connection;

import java.sql.DriverManager;

public class Dbconnection {

    public static Connection getConnection() {
        Connection con = null;
        try {
        	
        	
        	Class.forName("oracle.jdbc.driver.OracleDriver");
    		
			Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","praveen","praveen");
        	
        	
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return con;
    }
}
