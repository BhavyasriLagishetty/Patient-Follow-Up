<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    String k = request.getParameter("pid");
    String l = request.getParameter("did");
    String m = request.getParameter("solution");
  
    
    
    try{
       
       Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
    PreparedStatement ps = con.prepareStatement("insert into solution values(?,?,?)");

        ps.setString(1,k);    
        ps.setString(2,l);
        ps.setString(3,m);
    



    ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("dviewp.jsp?m5=success");

}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    
   
</div>
</body>
</html>