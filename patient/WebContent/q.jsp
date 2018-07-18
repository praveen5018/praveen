<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>


 
<script type='text/javascript'>
    function playVideo(a)
    {
        a = document.getElementById(a.value);
        b = document.getElementById("videoPlayback");
        b.innerHTML = a.innerHTML;
    }
</script>

<center>
 <%
                
ResultSet rs=null;
 try{
       
        
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        rs=st.executeQuery("select * from patient");
}catch(Exception e){
    e.printStackTrace();
    }
%>
            
<h1><font color="black">Add Questionary</font></h1>
                    
                    
                     <form name="myform" action="questionaryact.jsp" method="post"  >
   
          
       
       <strong><font size="3" color="black">Select Patient</font></strong>
      
            <select name="facet" required>
                <option value="">Select</option>
                <%
                while(rs.next()){
                %>
                <option value="<%=rs.getString("patid")%>"><%=rs.getString("patid")%></option>
               

                <%}%>
            </select>
            <br><br>

<%
                
ResultSet rs1=null;
 try{
       
        
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        rs1=st.executeQuery("select * from doctor");
}catch(Exception e){
    e.printStackTrace();
    }
%>
            
            
      <strong><font size="3" color="black">Select Doctor</font></strong>

            <select name="e1" required>
                <option value="">Select</option>
                <%
                while(rs1.next()){
                %>
               
                <option value="<%=rs1.getString("docid")%>"><%=rs1.getString("docid")%></option>
                

                <%}%>
            </select>
     


            <br><br>




    
         <strong><font size="3" color="black">Type</font></strong>
        <select name="feetype" onChange="playVideo(this)">
    
    <option value="feetype" selected="" > Select:</option>
    <option value="Description" >Description</option>
    <option value="Objective">Objective</option>
                                          
            </select>

    <div id='Description' style='display:none'>
    <br>
    <br>
        <font color="black"> Temperature :</td><td><input type="text" name="temp" required="" /><br><br>
    <font color="black">Cold :</td><td><input type="cold" name="password" required="" />
    </form>
                  
    <div align="right">
    </div>  
            
            
 <td><input type="submit" value="Submit" style="height:30px; width:70px" />
        <input type="reset" value="Reset" style="height:30px; width:50px" /></td>
    </div>
                            
  </form>     
         


    <div id='Objective' style='display:none'>
    <br><br>
    <font color="black"> Question :</td><td><input type="text" name="question" required="" /><br><br><br>
    <font color="black">Option1 :</td><td><input type="password" name="option1" required="" /> <br><br> 
        <font color="black">Option2 :</td><td><input type="password" name="option2" required="" /> 
    </div>
                          
                        
    
    <div id='videoPlayback'>    
    </div>
         <br><br>

 
                     </form>
            </center>