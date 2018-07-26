package Com.java;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;

import org.springframework.jdbc.core.JdbcTemplate;

public class ClientIMP implements ClientDao

{
	private JdbcTemplate jdbctemp;
	

	public JdbcTemplate getjdbctemp()
	{
		
		
		return jdbctemp;
	}
	
	public void setjdbctemp(JdbcTemplate jdbctemp)
	{
		
		this.jdbctemp=jdbctemp;
	}

	public void insert(Clients client) 
	{
		
		String query="insert into clients(cid,cname,cpassword,ctype,caddress)values(?,?,?,?,?)";
		
		Object[] args=new Object[]
				
				{
						client.getCid(),client.getCname(),client.getCpassword(),client.getCtype(),client.getCaddress()};
		
		int i=jdbctemp.update(query, args);
		
		if(i==1)
		{
			
			System.out.println("Insert Sucess");
		}
		
		else {
			
			System.out.println("Insert Not Sucess");
		}
	}


	public List<Clients>fetch() 
	{
	
		String query="select * from clients";
		
		List<Clients> le=new ArrayList<>();
		
		List<Map<String,Object>> l=jdbctemp.queryForList(query);
		
		for(Map<String, Object> M : l)
		{
		
			Clients c= new Clients();
			
			c.setCid(Integer.parseInt(String.valueOf(M.get("cid"))));
			
			c.setCname(String.valueOf(M.get("cname")));
			
			c.setCpassword(String.valueOf(M.get("cpassword")));
			
			c.setCtype(String.valueOf(M.get("ctype")));
			
			c.setCaddress(String.valueOf(M.get("caddress")));
			
			le.add(c);
		}
		
		System.out.println(le);
		
		return le;
	}


	public void update(Clients client) 
	{
		
		String query="update clients set cname=?, cpassword=?,ctype=?,caddress=? where cid=?";
		
		Object[] args=new Object[]
				
{client.getCname(),client.getCpassword(),client.getCtype(),client.getCaddress(),client.getCid()};
		
		int i=jdbctemp.update(query, args);
		
		if(i==1)
		{
			System.out.println("Update Sucess");
			
		}else
		{
			System.out.println("Update Not Sucess");
		}
		
	}


	public void delete(Clients client) 
	
	{
	
		String query="delete from clients where cid=?";
		
		Object[] args= new Object[]{client.getCid()};
		
		
		int i=jdbctemp.update(query, args);
		
		if(i==1)
		{
			
			System.out.println("Delete Sucess");
		}else
		{
			
			
			System.out.println("Delete Not Sucess");
		}
		
	}

}
