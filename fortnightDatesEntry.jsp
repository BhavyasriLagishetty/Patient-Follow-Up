<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html >
<html>
<head>
<style>
th {
  border: 1px solid black;
}
</style>

</head>
<body>
<br/>
<br/>
<form:form name="form" method="post" action="saveDates">

<table align="center" >
<tr><th>CourseNo</th>
	<th>Fortnight</th>
	<th>Start Date</th>
	<th>End Date</th>
	<th>Service Start Date</th>
	<th>Service End Date</th>
	<th>Description</th>
</tr>
<tr><td><input type="text" name="courseno" id="courseno"></td>
<td><input type="text" name="fortnight" id="courseno"></td>
<td><input type="text" name="startDate" id="startDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="endDate" id="endDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceStartDate" id="serviceStartDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceEndDate" id="serviceEndDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="description" id="description"></td></tr>

<tr><td><input type="text" name="courseno" id="courseno"></td>
<td><input type="text" name="fortnight" id="courseno"></td>
<td><input type="text" name="startDate" id="startDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="endDate" id="endDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceStartDate" id="serviceStartDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceEndDate" id="serviceEndDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="description" id="description"></td></tr>

<tr><td><input type="text" name="courseno" id="courseno"></td>
<td><input type="text" name="fortnight" id="courseno"></td>
<td><input type="text" name="startDate" id="startDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="endDate" id="endDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceStartDate" id="serviceStartDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceEndDate" id="serviceEndDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="description" id="description"></td></tr>

<tr><td><input type="text" name="courseno" id="courseno"></td>
<td><input type="text" name="fortnight" id="courseno"></td>
<td><input type="text" name="startDate" id="startDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="endDate" id="endDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceStartDate" id="serviceStartDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceEndDate" id="serviceEndDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="description" id="description"></td></tr>

<tr><td><input type="text" name="courseno" id="courseno"></td>
<td><input type="text" name="fortnight" id="courseno"></td>
<td><input type="text" name="startDate" id="startDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="endDate" id="endDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceStartDate" id="serviceStartDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceEndDate" id="serviceEndDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="description" id="description"></td></tr>

<tr><td><input type="text" name="courseno" id="courseno"></td>
<td><input type="text" name="fortnight" id="courseno"></td>
<td><input type="text" name="startDate" id="startDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="endDate" id="endDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceStartDate" id="serviceStartDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceEndDate" id="serviceEndDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="description" id="description"></td></tr>

<tr><td><input type="text" name="courseno" id="courseno"></td>
<td><input type="text" name="fortnight" id="courseno"></td>
<td><input type="text" name="startDate" id="startDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="endDate" id="endDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceStartDate" id="serviceStartDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceEndDate" id="serviceEndDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="description" id="description"></td></tr>

<tr><td><input type="text" name="courseno" id="courseno"></td>
<td><input type="text" name="fortnight" id="courseno"></td>
<td><input type="text" name="startDate" id="startDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="endDate" id="endDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceStartDate" id="serviceStartDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceEndDate" id="serviceEndDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="description" id="description"></td></tr>

<tr><td><input type="text" name="courseno" id="courseno"></td>
<td><input type="text" name="fortnight" id="courseno"></td>
<td><input type="text" name="startDate" id="startDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="endDate" id="endDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceStartDate" id="serviceStartDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceEndDate" id="serviceEndDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="description" id="description"></td></tr>

<tr><td><input type="text" name="courseno" id="courseno"></td>
<td><input type="text" name="fortnight" id="courseno"></td>
<td><input type="text" name="startDate" id="startDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="endDate" id="endDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceStartDate" id="serviceStartDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="serviceEndDate" id="serviceEndDate" placeholder="DD-MMM-YY"></td>
<td><input type="text" name="description" id="description"></td></tr>

</table>
<div align="center">
<input type="submit" value="submit" ></div>
</form:form>
</body>
</html>
 --%>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> --%>
 <!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
<style type="text/css">
    form{
        margin: 20px 0;
    }
    form input, button{
        padding: 5px;
    }
    table{
        width: 100%;
        margin-bottom: 20px;
		border-collapse: collapse;
    }
    table, th, td{
        border: 1px solid #cdcdcd;
    }
    table th, table td{
        padding: 10px;
        text-align: left;
    }
</style>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $(".add-row").click(function(){
            var courseno = $("#courseno1").val();
            var fortnight = $("#fortnight1").val();
            var startDate = $("#startDate1").val();
            var endDate = $("#endDate1").val();
            var serviceStartDate = $("#serviceStartDate1").val();
            var serviceEndDate = $("#serviceEndDate1").val();
            var description = $("#description1").val();

            var markup = "<tr><td><input type='checkbox' name='record'></td><td><input type='text' name='courseno' value="+ courseno +"></td><td><input type='text' name='fortnight' value=" + fortnight + "></td><td><input type='text' name='startDate' value="+startDate+"></td><td><input type='text' name='endDate' value="+endDate+"></td><td><input type='text' name='serviceStartDate' value="+serviceStartDate+"></td><td><input type='text' name='serviceEndDate' value="+serviceEndDate+"></td><td><input type='text' name='description' value="+description+"></td></tr>";
            $("table tbody").append(markup);
        });
        
        // Find and remove selected table rows
        $(".delete-row").click(function(){
            $("table tbody").find('input[name="record"]').each(function(){
            	if($(this).is(":checked")){
                    $(this).parents("tr").remove();
                }
            });
        });
    });    
</script>
</head>
<body>
  <form:form name="form" method="post" action="saveDates">
<input type="text" name="courseno1" id="courseno1">
<input type="text" name="fortnight1" id="fortnight1">
<input type="text" name="startDate1" id="startDate1" placeholder="DD-MMM-YY">
<input type="text" name="endDate1" id="endDate1" placeholder="DD-MMM-YY">
<input type="text" name="serviceStartDate1" id="serviceStartDate1" placeholder="DD-MMM-YY">
<input type="text" name="serviceEndDate1" id="serviceEndDate1" placeholder="DD-MMM-YY">
<input type="text" name="description1" id="description1">
    	<input type="button" class="add-row" value="Add Row">
    <table>
        <thead>
            <tr>
                <th>Select</th>
                <th>CourseNo</th>
                <th>Fortnight</th>
                <th>Start Date</th>
                <th>End Date</th>
                <th>Service Start Date</th>
                <th>Service End Date</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
            <!--     <td><input type="checkbox" name="record"></td>
                <td>Peter Parker</td>
                <td>peterparker@mail.com</td> -->
            </tr>
        </tbody>
    </table>
        <button type="button" class="delete-row">Delete Row</button>
    
     <div align="center">
 <input type="button" class="add-row" value="Add Row" onclick="showselect()">
   
<input type="submit" value="submit" ></div>
</form:form>

</body> 
</html>
                            