<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>

<html>
<body>
<%
     
	     	String cname=request.getParameter("cname");
            String pass=request.getParameter("pass");
            String email=request.getParameter("T3");
            String mobile=request.getParameter("T4");
            String loca=request.getParameter("T5");
            String dob=request.getParameter("T6");
            String add=request.getParameter("T8");
            String gen=request.getParameter("select5");
            String pin=request.getParameter("T9");
            
           
           
            

String ccat="Student";

               

		
		try
		{
	
	/*	PreparedStatement pst2=connection.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?,?,?,?)");

		pst2.setString(1,cname);
           pst2.setString(2,pass);
           pst2.setString(3,bg);
           pst2.setString(4,dname);
           pst2.setString(5,email);  
         pst2.setString(6,mobile);  
         pst2.setString(7,loca);   
        pst2.setString(8,dob); 
          pst2.setString(9,age);	  
          pst2.setString(10,add);	 
          pst2.setString(11,gen);	 
          pst2.setString(12,pin);	 
		pst2.executeUpdate();*/



 Statement st=connection.createStatement();

st.executeUpdate("insert into  user (uname,password,email,mobile,location,dob,address,gender,pincode,sk) values ('"+cname+"','"+pass+"','"+email+"','"+mobile+"','"+loca+"','"+dob+"','"+add+"','"+gen+"','"+pin+"','Rejected')");





		out.print("USER REGISTERED SUCCESSFULLY");
		
		%><p><a href="index.html">Back</a></p>

</body>
</html>

	<% 	}
	  
	catch(SQLException e)
        {
		out.print(e.getMessage());
	    }  
           %>
