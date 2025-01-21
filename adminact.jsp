
<%
try {

	String username = request.getParameter("username");
	String password = request.getParameter("password");
	if ((username.equals("admin")) && (password.equals("admin"))) {
		response.sendRedirect("adminhome.jsp?m1=Success");
	} else {
		out.print("Sorry username or password error");
		response.sendRedirect("admin.jsp?m2=Failed");
	}
} catch (Exception e) {
	e.printStackTrace();
}
%>