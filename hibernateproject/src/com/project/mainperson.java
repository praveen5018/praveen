package com.project;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class mainperson 
{
	public static void main(String[] args) {
	
		Configuration cfg=new Configuration();
		
		cfg.configure("hiber.cfg.xml");
		
		SessionFactory factory=cfg.buildSessionFactory();

		Session session=factory.openSession();
		
		Transaction tr=session.beginTransaction();
		
		tr.commit();
		
		
		//many.insert(session);
		
		many.fetch(session);
		
		//many.update(session);
		
		//many.delete(session);
		
		
	}
	
	
	
	
	
	

}
