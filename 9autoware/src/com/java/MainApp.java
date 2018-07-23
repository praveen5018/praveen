package com.java;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainApp {
	
	
	public static void main(String[] args) {
		
		
		ApplicationContext ap=new ClassPathXmlApplicationContext("resourse/spring.xml");
		
		
		car c=(car)ap.getBean("c");
		
		System.out.println(c.getCarname());
		
		System.out.println(c.getEngine().getModelyear());
		
	}

}
