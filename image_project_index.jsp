<%-- 
    Document   : index
    Created on : Sep 16, 2017, 9:19:42 PM
    Author     : Dharmesh
--%>

<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Follow Up</title>
    </head>
    <body>
        
        
        <form action="FileUploadServlet" method="post" enctype="multipart/form-data">
            <table width="400px" align="center" border=2>
                <tr>
                    <td align="center" colspan="2">Form Details</td>
                </tr>
                
                <tr>
                    <td>PID</td>
                    <td>
                        <input type="text" name="pid">
                    </td>
                </tr>
                <tr>
                    <td>DOID</td>
                    <td>
                        <input type="text" name="doid">
                    </td></tr>
                <tr><td>type</td>
                    <td>
                        <input type="text" name="type">
                    </td>
                </tr>
                <tr>
                    <td>Question</td>
                    <td>
                        <input type="text" name="question">
                    </td>
                </tr>
                <tr>
                    <td>Option 1</td>
                    <td>
                        <input type="text" name="option1">
                    </td></tr>
                <tr><td>Option 2</td>
                    <td>
                        <input type="text" name="option2">
                    </td>
                </tr>
                <tr>
                    <td>Answer</td>
                    <td>
                        <input type="text" name="answer">
                    </td></tr>
                <tr><td>Status</td>
                    <td>
                        <input type="text" name="status">
                    </td>
                </tr>
                
                <tr>
                    <td>Image Link: </td>
                    <td>
                        <input type="file" name="file">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Submit"></td>
                </tr>
            </table>

        </form>

    </body>
</html>

