<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>
<html lang="en">
    <head>
        <title>Patient Follow Up</title>
         </head>
    <body>
        
<script type='text/javascript'>
    function playVideo(a)
    {
        a = document.getElementById(a.value);
        b = document.getElementById("videoPlayback");
        b.innerHTML = a.innerHTML;
    }
</script>

<center>
    <h1><font color="black">User LogIN</font></h1><br>
    
  <strong><font size="3" color="black">User Type</font></strong>
        <select name="feetype" onChange="playVideo(this)">
    
    <option value="feetype" selected="" > Select:</option>
    <option value="Description" >Admin</option>
    <option value="Objective">Citizen</option>
                                          
            </select>  
  <br><r>
   <div id='Description' style='display:none'>  
    
           
<br> <form name="myform" action="Kadminact.jsp" method="post"  >
   <center>        
    <strong><font color="black">Admin User Name:</td><td><input type="text" name="username" required="" /></strong><br><br>
     <strong><font color="black">Password :</td><td><input type="password" name="password" required="" /></strong><br><br> 
    </form>
       <div align="right">
    </div>       
        <td><input type="submit" value="Log IN" style="height:30px; width:70px" />
            <input type="reset" value="Reset" style="height:30px; width:50px" /></td><br>
        <br><center>   <a href="KadminRegistartion.jsp" class="fa-gears ">Click Here for Admin Registration</a></center><br>
    </div>
                </center>                   
  </form>     
    <div id='Objective' style='display:none'>
    <br>
<center>           
 <form name="myform" action="Kcitizenact.jsp" method="post"  >
<strong><font color="black">Citizen User Name:</td><td><input type="text" name="username" required="" /></strong><br><br>
     <strong><font color="black">Password :</td><td><input type="password" name="password" required="" /></strong><br><br> 
<td><input type="submit" value="Log IN" style="height:30px; width:70px" />
    <input type="reset" value="Reset" style="height:30px; width:70px" /></td><br>
        <br><center>   <a href="KcitizenRegistartion.jsp" class="fa-gears ">Click Here for Citizen Registration</a></center><br>
        </div>
         </center>                  
</form>   
    
</div>
                          
        <div id='videoPlayback'>    
        </div>
        <br><br>

        </div>
        </div>
            
            
         