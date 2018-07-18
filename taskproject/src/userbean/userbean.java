package userbean;

import java.io.File;

public class userbean 

{
	
private String username;

private String password;

private String email;

private int id;

private String address;

private String status;

private boolean isvalid;

public String getusername()
{
	
	return username;
}

public void setusername(String username)
{
	
	this.username=username;
	
}

public String getpassword()
{
	
	return password;
}

public void setpassword(String password)

{
	this.password=password;
}
	
	public String getemail()
	{
		
		return email;
	}

	public void setemail(String email)

	{
		this.email=email;
		
}

public int getid()
{
	
	return id;
}

public void setid(int id)
{
	
	this.id=id;
	
}

public String getaddress()
{
	
	return address;
}

public void setaddress(String address)

{
	this.address=address;
	
}

public String getstatus()
{
	
	return status;
}

public void setstatus(String status)
{
	
	
	this.status=this.status;
}

public boolean isvalid ()
{
	
	return isvalid;
}

public void setisvalid(boolean isvalid)

{
	
	this.isvalid=isvalid;
}


}

