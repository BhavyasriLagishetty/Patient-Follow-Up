<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@page import="databasecon.AddDaysToDate"%>
<%@ page session="true"%>
<%
	String pid = request.getParameter("a");
	String docid = request.getParameter("b");
	String schedule = "";

	try {

		String currentDate = null;
		Connection con = Dbconnection.getConnection();
		PreparedStatement ps = null;
		Statement st = con.createStatement();
		String query = "SELECT distinct schedule, cal1.pid, cal1.doid FROM cal1 WHERE cal1.status='waiting' and cal1.schedule=curdate() and cal1.pid='"
				+ pid + "' and doid='" + docid + "'";
		ResultSet rs = st.executeQuery(query);
		if (rs.next()) {
			currentDate = rs.getString("schedule");
			schedule = AddDaysToDate.addDaysToDate(1);
			query = "update cal1 set schedule='" + schedule
					+ "' where cal1.status='waiting' and cal1.schedule=curdate() and cal1.pid='" + pid
					+ "' and doid='" + docid + "'";
			//+ patId + "',
			System.out.println("query - " + query);
			ps = con.prepareStatement(query);
			ps.executeUpdate();
			response.sendRedirect("viewques.jsp?m1=success");
		}
	} catch (Exception e) {
		System.out.println("Error in emplogact" + e.getMessage());
	}
%>