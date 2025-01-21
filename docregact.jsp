<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true"%>

<html>
<head>

</head>

<body>

	<%
		String k = request.getParameter("id");
		String l = request.getParameter("username");
		String m = request.getParameter("password");
		String n = request.getParameter("email");
		String f = request.getParameter("mobile");

		try {

			Connection con = Dbconnection.getConnection();
			Statement st = con.createStatement();
			PreparedStatement ps = con.prepareStatement("insert into doctor values(?,?,?,?,?)");

			ps.setString(1, k);
			ps.setString(2, l);
			ps.setString(3, m);
			ps.setString(4, n);
			ps.setString(5, f);

			ps.executeUpdate();

			//out.print(Successfully Registered);

			response.sendRedirect("viewdoctor.jsp?m1=success");

		} catch (Exception e1) {
			out.println(e1.getMessage());
		}
	%>



	</div>
</body>
</html>