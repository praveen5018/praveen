<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%try{
String username=request.getParameter("user");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","anuroop","anuroop");
PreparedStatement pstmt=conn.prepareStatement("delete from problems where username=?");
pstmt.setString(1, username);
int i=pstmt.executeUpdate();
if(i==1){
	response.sendRedirect("constitutionhome.jsp");
	
}else{
	response.sendRedirect("consdivprob.jsp");
}


}catch(Exception e){
	System.out.println(e);
}
%>

</body>
</html>