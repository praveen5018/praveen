package com.java;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainApp {
	
	
	public static void main(String[] args) {
		
		ApplicationContext ap=new ClassPathXmlApplicationContext("resourse/spring.xml");
		
		hospital h=(hospital)ap.getBean("hn");
		
	    h.printhname();
	    
	    h.printhaddress();
		
	}

}
