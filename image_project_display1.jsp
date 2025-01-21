<%@page import="databasecon.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Image Show</title>
    </head>
    <body>
        <%

            String imageid = request.getParameter("pid");

            try {
                Connection con = Dbconnection.getConnection();
                Statement st = con.createStatement();
                String sql = "SELECT question,doid,filename FROM cal1 where pid='" + imageid + "'";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    String filename = rs.getString("filename");
                    String doid = rs.getString("doid");
                    String question = rs.getString("question");
                    
        %>

        <table align="center" style="width:100%">
            <tr>
                <th>Id</th>
                <th>doid</th>
                <th>question</th>
                <th>Image</th>

            </tr>
            <tr align="center">
                <td><%=imageid%></td>
                    <td><%=doid%></td>
                    <td><%=question%></td>
                <td><image src="images/<%=filename%>" width="200" height="200"/></td>

            </tr>
        </table>
        <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
    </body>
</html>
