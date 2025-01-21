<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <!-- Title -->
        <title>Patient Follow Up</title>
        <!-- Meta -->
        
    </head>
    <%
        if (request.getParameter("m1") != null) {%>
    <script>alert('Login success');</script>
    <%}
        if (request.getParameter("m2") != null) {%>
    <script>alert('Login Failed');</script> 

    <%}
    %>
    <body>
        
            <%
            String user = session.getAttribute("name").toString();
            %>
            
            <div id="content" class="bottom-border-shadow">
                <div class="container background-white bottom-border">
                    <center><p><font size="8">Admin Home</font></p>
                    <br>
                    <h1><font color="black">Welcome Admin <%=user%></font></h1>
                    
                    <br>
                      

         
         </center>
                    <br><center> </center><br>           
                    </div>
                </div>
            </div>
        