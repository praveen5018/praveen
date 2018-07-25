package Com.java;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MainApp 

{
	
	public static void main(String[] args) {
		
		ApplicationContext app= new ClassPathXmlApplicationContext("Resource/Spring.xml");
		
		EmployeeIMP emp=(EmployeeIMP)app.getBean("empdaoimp");
		
		Employee e= new Employee();
		
		/*e.setId(125);
		
		e.setUsername("Sai");
		
		e.setPassword("sai123");
		
		e.setAddress("Suryapet");
		
		emp.insert(e);*/
		
		/*...........................*/
		
		/*emp.fetch();
		*/
		
		/*...........................*/
		
		/*e.setId(124);
		e.setUsername("ravi");
		
		e.setPassword("ravi123");
		
		e.setAddress("Nalgonda");
		
		emp.update(e);*/
		
		/*...........................*/
		
		e.setId(125);
		
		emp.delete(e);
	}

}
