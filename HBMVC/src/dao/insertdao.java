package dao;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import userbean.userbean;

public class insertdao 
{

	public static void insert(userbean user) 
	{
		
		Configuration cfg= new Configuration();
		
		cfg.configure("hibernate.cfg.xml");
		
		SessionFactory factory=cfg.buildSessionFactory();  
		
	    Session session=factory.openSession();
	    
	    Transaction t=session.beginTransaction();
	 
	    session.save(user);
	    
	    t.commit();
	   
	}
	

}
