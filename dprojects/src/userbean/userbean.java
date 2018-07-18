package userbean;

public class userbean 
{
	
	private String sname;
	
	private String password;
	
	private String email;
	
	private int rno;
	
	private int marks;
	
	private boolean isvalid;
	
	public String getsname() 
	
	{
		return sname;
	}
	
	public void setsname(String sname)
	
	{
		this.sname = sname;
	}
	
	public String getpassword() 
	{
		return password;
	}
	
	public void setpassword(String password) 
	
	{
		this.password = password;
	}
	
	public String getemail() 
	{
		return email;
	}
	
	public void setemail(String email) 
	
	{
		this.email = email;
	}
	
	public int getrno() 
	{
		return rno;
	}
	public void setrno(int rno) 
	{
		this.rno = rno;
	}
	
	public int getmarks() 
	{
		return marks;
	}
	public void setmarks(int marks) 
	{
		this.marks = marks;
	}
	
	
	
	public boolean isvalid ()
	
	{
		return isvalid;
	}
	
	public void setvalid(boolean isvalid) 
	
	{
		this.isvalid=isvalid;
	}
	

}
