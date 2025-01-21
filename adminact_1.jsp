<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>



<%
    
    String k = request.getParameter("patid");
    String l = request.getParameter("docid");
    String myloc=request.getParameter("myimg");
    String m = "objective";
    String n = request.getParameter("question");
    String f = request.getParameter("option1");
    String h = request.getParameter("option2");
    String a = null;
    String i = "Waiting";
    
    
    try{
       
       Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
    PreparedStatement ps = con.prepareStatement("insert into cal values(?,?,?,?,?,?,?,?,?)");

        ps.setString(1,k);    
        ps.setString(2,l);
        ps.setString(3,m);
        ps.setString(4,n);
        ps.setString(5,f);
        ps.setString(6,h);
        ps.setString(7,a);
        ps.setString(8,i);
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

