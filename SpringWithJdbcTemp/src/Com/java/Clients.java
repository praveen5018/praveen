package Com.java;

public class Clients 

{
	
	private int cid;
	
	private String cname;
	
	private String cpassword;
	
	private String ctype;
	
	private String caddress;

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCpassword() {
		return cpassword;
	}

	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}

	public String getCtype() {
		return ctype;
	}

	public void setCtype(String ctype) {
		this.ctype = ctype;
	}

	public String getCaddress() {
		return caddress;
	}

	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}


	public String toString() 
	
	{
		return "Clients [cid=" + cid + ", cname=" + cname + ", cpassword=" + cpassword + ", ctype=" + ctype
				+ ", caddress=" + caddress + "]";
	}
	

}
