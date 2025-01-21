
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	
	var x=1
	function appendRow()
	{
	   var d = document.getElementById('div');
	   d.innerHTML += "<input type='text' id='tst"+ x++ +"'><br >";
	}
	
	function div(){
		document.getElementById('select').style.display = 'block';
	}
	
	function addrow(id){
		if(id.value=='Object'){
			
		}else if(id.value=='Description'){
			var d = document.getElementById('div1');
			   d.innerHTML += "<input type='text' id='tst"+ x++ +"'><br >";
		}
	}
</script>
<body>
<div id="div">
 <button onclick ="div()" value="Add Row">Add Row</button>
 <button onclick ="appendRow()" value="Add Row">Add Row button</button>
 </div>
 
 <div id="select" style="display: none">
 	<select id="sel" onchange="addrow(this)">
 		<option >--Select--</option>
		  <option id="object" >Object</option>
		  <option id="desc" >Description</option>
</select>
 </div>
 
 <div id="div1">
 </div>
</body>
</html>