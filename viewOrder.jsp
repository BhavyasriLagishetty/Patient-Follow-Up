<%@page import="java.sql.*"%>
<%@page import="java.io.File"%>
<%@page import="databasecon.AddDaysToDate"%>
<%@page import="databasecon.Dbconnection"%>
<%@page import="javax.servlet.ServletContext"%>
<%@ page session="true"%>

<%
	ServletContext servletContext = getServletContext();
	String contextPath = servletContext.getRealPath(File.separator);
	System.out.println("contextPath - " + contextPath);

	String status = "Waiting";
	String values = request.getParameter("values");
	String patId = request.getParameter("patId");
	String docId = request.getParameter("docId");
	String medicationDuration = request.getParameter("medicationDuration");
	String schedule = AddDaysToDate.addDaysToDate(Integer.parseInt(medicationDuration));
	String questionsArray[] = values.split(":");
	String query = "";

	try {
		Connection con = Dbconnection.getConnection();
		PreparedStatement ps = null;
		for (String s : questionsArray) {
			if (!s.equals(",")) {
				System.out.println("s - " + s);
				String questions[] = s.split(",");
				for (int i = 0; i < questions.length; i++) {
					query = "";
					questions[i].trim();
					if (questions[i].equals("Objective")) {
						query = "insert into cal1(pid,doid,type,question,current_input,option1,option2,medicationDuration,status,schedule) values('"
								+ patId + "','" + docId + "','" + questions[i++] + "','" + questions[i++]
								+ "','" + questions[i++] + "','" + questions[i++] + "','" + questions[i] + "','"
								+ medicationDuration + "','" + status + "','" + schedule + "')";
						System.out.println("query - " + query);
						ps = con.prepareStatement(query);
						ps.executeUpdate();
					} else if (questions[i].equals("Descriptive")) {
						query = "insert into cal1(pid,doid,type,question,current_input,medicationDuration,status,schedule) values('"
								+ patId + "','" + docId + "','" + questions[i++] + "','" + questions[i++]
								+ "','" + questions[i] + "','" + medicationDuration + "','" + status + "','"
								+ schedule + "')";
						System.out.println("query - " + query);
						ps = con.prepareStatement(query);
						ps.executeUpdate();
					}
					System.out.println(questions[i]);
				}
			}
		}
		// out.print("Sorry username or password error");
		response.sendRedirect("z.jsp?m1=success&patId="+patId+"&docId="+docId);

	} catch (Exception e) {
		e.printStackTrace();
	}
%>

