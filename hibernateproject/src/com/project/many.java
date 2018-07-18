package com.project;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class many {
		
	
		public static void insert(Session session) 
		
		{
			
			persons p= new persons();
			
			p.setId(104);
			
			p.setName("ravi");
			
			p.setPassword("ravi123");
			
			p.setMobile("78965951158");
			
			Transaction tr=session.beginTransaction();
			
			session.persist(p);
			
			tr.commit();
			
			
		
	}

		public static void fetch(Session session) 
		{
			
		Transaction tr=session.beginTransaction();
		
		List l=session.createQuery("from persons").list();

		Iterator itr=l.iterator();
		
		while(itr.hasNext())
		{
			persons p=(persons)itr.next();
			
			System.out.println("Userdetails");
			System.out.println("Id       :"+p.getId());
			System.out.println("Username :"+p.getName());
			System.out.println("Password :"+p.getPassword());
			System.out.println("Mobile   :"+p.getMobile());
			
		}
		
		}

		public static void update(Session session) 
		{
			
			Transaction tr=session.beginTransaction();
			
			Query q=session.createQuery("from persons where name=:user");
			
			q.setString("user", "rani");
			
			persons p=(persons)q.uniqueResult();
			
			p.setPassword("rani123");
			
			p.setMobile("7412589632");
			
			session.persist(p);
			
			tr.commit();
			
			
		}

		public static void delete(Session session) 
		
		{
			
			Transaction tr=session.beginTransaction();
			
			Query q=session.createQuery("from persons where name=:user");
			
			q.setString("user","ravi");
			
			persons p=(persons)q.uniqueResult();
			
			session.delete(p);
			
			tr.commit();
			
			
		}

	

}
