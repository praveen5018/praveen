package com.java;

public class flipkart 

{
	
	private courier courier;

	public courier getCourier() {
		return courier;
	}

	public flipkart(courier courier)
	{
		
		this.courier=courier;
	}

	public void purchase()
	{	
		
	int orderid= 654321;
	
	courier.deliver(orderid);
	
	
	}

}
