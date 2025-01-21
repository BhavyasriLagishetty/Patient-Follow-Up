<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    
    String l = request.getParameter("name");
    String m = request.getParameter("phone");
    String n = request.getParameter("email");
    String f = request.getParameter("comment");
    
    
    try{
       
       Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
    PreparedStatement ps = con.prepareStatement("insert into contactus values(?,?,?,?)");

        
        ps.setString(1,l);
        ps.setString(2,m);
        ps.setString(3,n);
        ps.setString(4,f);
        



    ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("contactus.jsp?m1=success");

}

catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    
   
</div>
</body>
</html>