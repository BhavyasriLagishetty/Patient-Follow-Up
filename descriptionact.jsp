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
    String myloc=request.getParameter("myimg");
    String m = "description";
    String q = request.getParameter("q1");
  
    String a = null;
    String b = null;
    String c = null;
            
    

    String h = "Waiting";
    
    
    try{
       
       Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
    PreparedStatement ps = con.prepareStatement("insert into cal values(?,?,?,?,?,?,?,?,?)");

        ps.setString(1,k);    
        ps.setString(2,l);
        ps.setString(3,m);
        ps.setString(4,q);
        ps.setString(5,a);
        ps.setString(6,b);
        ps.setString(7,c);
        ps.setString(8,h);
        ps.setString(9,myloc);
        ps.executeUpdate();

//out.print(Successfully Registered);

response.sendRedirect("addqq.jsp?m1=success");

}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    
   
</div>
</body>
</html>