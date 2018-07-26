package Com.java;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainApp 

{

	public static void main(String[] args) 
	{
		
		
		ApplicationContext app=new ClassPathXmlApplicationContext("Resource/Spring.xml");
		
			ClientIMP cs=(ClientIMP)app.getBean("clientimp");
		
		Clients c=new Clients();
		
		c.setCid(522);
		
		c.setCname("Neeru");
		
		c.setCpassword("Neeru143");
		
		c.setCtype("Java");
		
		c.setCaddress("Hyd");
		
		cs.insert(c);
		
//    	cs.fetch();
		
		/*c.setCid(521);
		
		c.setCname("prabha");
		
		c.setCpassword("neeruprabha");
		
		c.setCtype("Java");
		
		c.setCaddress("Suryapet");
		
		cs.update(c);*/
    	
    	/*c.setCid(521);
    	
    	cs.delete(c);*/
		
	}
	
	
	
}
