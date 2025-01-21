<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true"%>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");

try {

	String name = null;
	Connection con = Dbconnection.getConnection();
	Statement st = con.createStatement();
	String query = "select * from doctor where docid= '" + username + "' and password='" + password + "'";
	System.out.println("query:" + query);
	ResultSet rs = st.executeQuery(query);
	if (rs.next()) {
		name = rs.getString(2);
		session.setAttribute("name", name);
		System.out.println("User:" + name);

		response.sendRedirect("doctorhome.jsp?m1=success");
	} else {
		response.sendRedirect("doctor.jsp?m2=LoginFail");
	}
} catch (Exception e) {
	System.out.println("Error in emplogact" + e.getMessage());
}
%>