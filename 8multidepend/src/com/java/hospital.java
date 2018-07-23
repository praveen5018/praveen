package com.java;

public class hospital {
	
	
	private String[] hname;
	
	private hdetails[] hdetails;

	public String[] getHname() {
		return hname;
	}

	public void setHname(String[] hname) {
		this.hname = hname;
	}

	public hdetails[] getHdetails() {
		return hdetails;
	}

	public void setHdetails(hdetails[] hdetails) {
		this.hdetails = hdetails;
	}
	
	
	public void printhname()
	{
		
		for(String hn:hname)
		{
			
			System.out.println(hn);
			
		}
		
	}
	
	
	public void printhaddress() {
		
		for(hdetails hd:hdetails)
		{
			
			System.out.println(hd);
		}
	}
	

}
