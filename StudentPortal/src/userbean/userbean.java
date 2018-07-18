package userbean;

import java.io.File;

public class userbean 

{
	
private String uname;

private String password;

private String dob;

private String email;

private int id;

private String address;

private boolean isvalid;

private String status;


private String addcourse1;

private String addcourse2;

private String addcourse3;

private String addcourse4;



public String getAddcourse1() {
	return addcourse1;
}


public void setAddcourse1(String addcourse1) {
	this.addcourse1 = addcourse1;
}


public String getAddcourse2() {
	return addcourse2;
}


public void setAddcourse2(String addcourse2) {
	this.addcourse2 = addcourse2;
}


public String getAddcourse3() {
	return addcourse3;
}


public void setAddcourse3(String addcourse3) {
	this.addcourse3 = addcourse3;
}


public String getAddcourse4() {
	return addcourse4;
}


public void setAddcourse4(String addcourse4) {
	this.addcourse4 = addcourse4;
}


public String getstatus()
{
	
	return status;
}


public void setstatus(String status)
{
	
	this.status=status;
}

public String getuname()
{
	
	return uname;
}

public void setuname(String uname)
{
	
	this.uname=uname;
	
}

public String getpassword()
{
	
	return password;
}

public void setpassword(String password)

{
	this.password=password;
}
	
public String getdob()
{
	
	return dob;
}


public void setdob(String dob)
{
	
	this.dob=dob;
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

public boolean isvalid ()
{
	
	return isvalid;
}

public void setisvalid(boolean isvalid)

{
	
	this.isvalid=isvalid;
}


}

