<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String k = request.getParameter("a");
    String l = request.getParameter("b");
    String m = request.getParameter("c");
    String n = request.getParameter("d");
    String o = "Done";
  
    
    
    try{
       
       Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
    PreparedStatement ps = con.prepareStatement("insert into answers values(?,?,?,?)");

        ps.setString(1,k);    
        ps.setString(2,l);
        ps.setString(3,m);
        ps.setString(4,n);    
        ps.executeUpdate();
    
    
        PreparedStatement pst=con.prepareStatement("update objective set status='"+o+"' where question='" + m + "' ");
        int i=pst.executeUpdate();



response.sendRedirect("viewques.jsp?m1=success");

}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    
   
</div>
</body>
</html>