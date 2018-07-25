package Com.java;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class EmployeeIMP implements EmployeeDao
{

	public DataSource datasource;
	
	public DataSource getDatasource() 
	
	{
		return datasource;
	}


	public void setDatasource(DataSource datasource) 
	{
		this.datasource = datasource;
	}


	public void insert(Employee employee) 
	
	{
		try {
			
			Connection con=datasource.getConnection();
			
			PreparedStatement ps=con.prepareStatement("insert into spwt(id,username,password,address)values(?,?,?,?)");
			
			ps.setInt(1, employee.getId());
			
			ps.setString(2, employee.getUsername());
			
			ps.setString(3, employee.getPassword());
			
			ps.setString(4, employee.getAddress());
			
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				System.out.println("Insert Sucess");
				
			}
			
			else {
				
				System.out.println("Insert Not Sucess");
			}
			
		}catch(Exception e)
		{
			
			
			System.out.println(e);
		}
		
	}

	
	public List<Employee> fetch()
	{
		
		List<Employee> le=new ArrayList<>();
		
		try {
			
			Connection con=datasource.getConnection();
			
			PreparedStatement ps=con.prepareStatement("select * from spwt");
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				
			Employee e=new Employee();
			
			e.setId(rs.getInt("id"));
			
			e.setUsername(rs.getString("username"));
				
			e.setPassword(rs.getString("password"));
			
			e.setAddress(rs.getString("address"));
			
			le.add(e);
			
			}
			
			
			System.out.println(le);
			
		}catch(Exception e)
		{
			
			
			System.out.println(e);
		}
		
		
		return le;
	}

	
	public void update(Employee employee) 
	{
	
		try {
			
			Connection con=datasource.getConnection();
			
			PreparedStatement ps=con.prepareStatement("update spwt set username=?,password=?,address=? where id=?");
			
			
			ps.setString(1, employee.getUsername());
			
			ps.setString(2, employee.getPassword());
			
			ps.setString(3, employee.getAddress());
			
			ps.setInt(4, employee.getId());
			
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				
				
				System.out.println("Update Sucess");
			}
			else
			{
				
				
				System.out.println("Update Not Sucess");
			}
			
			
		}catch(Exception e)
		{
			
			
			System.out.println(e);
		}
	
	}

	
	public void delete(Employee employee) 
	
	{
		try {
			
			
			Connection con=datasource.getConnection();
			
			PreparedStatement ps=con.prepareStatement("delete from spwt where id=?");
			
			ps.setInt(1, employee.getId());
			
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				
				System.out.println("Delete Sucess");
			}
			
			else {
				System.out.println("Delete not Sucess");
			}
			
		}catch(Exception e)
		{
			
			System.out.println(e);
		}
		
		
	}

}
