<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>
        <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        try{

        String name=null;
        String patid=null;
        Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from patient where patid= '"+username+"' and password='"+password+"'");
        if(rs.next())
        {
        name = rs.getString(2);
        patid = rs.getString(1);
        session.setAttribute("name",name);
         session.setAttribute("patid",patid);
        

        response.sendRedirect("patienthome.jsp?m1=success");
        }
        else 
        {
        response.sendRedirect("patient.jsp?m2=LoginFail");
        }
        }
        catch(Exception e)
        {
        System.out.println("Error in emplogact"+e.getMessage());
        }
        %>