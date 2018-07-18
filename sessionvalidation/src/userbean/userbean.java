package userbean;

public class userbean 

{
	
	private String username;
	
	private String password;
	
	private String email;
	
	private boolean isvalid;
	
	public String  getusername()
	{
		
		return username;
	}
	
	public void setusername(String username)
	{
		
		this.username=username;
		
	}
	

	public String  getpassword()
	{
		
		return password;
	}
	
	public void setpassword(String password)
	{
		
		this.password=password;
		
	}


	public String  getemail()
	{
		
		return email;
	}
	
	public void setemail(String email)
	{
		
		this.email=email;
		
	}

	public boolean isvalid()
	{
		
		return isvalid;
	}
	
	
	public void setisvalid(boolean isvalid)
	{
		
		this.isvalid=isvalid;
	}
	

}


