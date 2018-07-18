<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String k = request.getParameter("patid");
    String l = request.getParameter("docid");
    String m = "description";
    String n = request.getParameter("temp");
    String f = request.getParameter("cold");
    String h = "Waiting";
    
    
    try{
       
       Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
    PreparedStatement ps = con.prepareStatement("insert into description values(?,?,?,?,?,?)");

        ps.setString(1,k);    
        ps.setString(2,l);
        ps.setString(3,m);
        ps.setString(4,n);
        ps.setString(5,f);
        ps.setString(6,h);
        



    ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("qq.jsp?m1=success");

}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    
   
</div>
</body>
</html>