package dao;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import userbean.userbean;

public class updatedao {

	public static void update(userbean user) 
	
	
	{
		
		Configuration cfg=new Configuration();

		cfg.configure("hibernate.cfg.xml");
		
		SessionFactory factory=cfg.buildSessionFactory();
		
		Session session3=factory.openSession();
		
		Transaction tr=session3.beginTransaction();
		
		Query query=session3.createQuery("from userbean where id=:idd");
		
		query.setInteger("idd",user.getId());
		
		userbean user1=(userbean)query.uniqueResult();
		user1.setUsername(user.getUsername());
		user1.setPassword(user.getPassword());
		user1.setEmail(user.getEmail());
		user1.setId(user.getId());
		session3.update(user1);
		
		tr.commit();
		
		
	}

}
