<%@page import="java.sql.*"%>
<%@page import="databasecon.Dbconnection"%>
<%@ page session="true" %>

<html>
<head>

</head>

<body>

<%
    
String pid = request.getParameter("patientid");   
String doid = request.getParameter("doctorid");
String done = "done";
    
    
String ques1 = request.getParameter("ques1");
String ques2 = request.getParameter("ques2");
String ques3 = request.getParameter("ques3");
String ques4 = request.getParameter("ques4");
String ques5 = request.getParameter("ques5");


String ans1 = request.getParameter("ans1");
String ans2 = request.getParameter("ans2");
String ans3 = request.getParameter("ans3");
String ans4 = request.getParameter("ans4");
String ans5 = request.getParameter("ans5");


String question1 = request.getParameter("question1");
String question2 = request.getParameter("question2");
String question3 = request.getParameter("question3");
String question4 = request.getParameter("question4");
String question5 = request.getParameter("question5");



String answer1 = request.getParameter("answer1");
String answer2 = request.getParameter("answer2");
String answer3 = request.getParameter("answer3");
String answer4 = request.getParameter("answer4");
String answer5 = request.getParameter("answer5");
String answer6 = request.getParameter("answer6");
String answer7 = request.getParameter("answer7");





System.out.println("question1"   +ques1);
System.out.println("question2"   +ques2);
System.out.println("question3"   +ques3);
System.out.println("question4"   +ques4);
System.out.println("question5"   +ques5);


System.out.println("ans1"   +ans1);
System.out.println("ans2"   +ans2);
System.out.println("ans3"   +ans3);
System.out.println("ans4"   +ans4);
System.out.println("ans5"   +ans5);
     
     
     
System.out.println("q1"   +question1);
System.out.println("q2"   +question2);
System.out.println("q3"   +question3);
System.out.println("q4"   +question4);
System.out.println("q5"   +question5);




System.out.println("answer1"   +answer1);
System.out.println("answer2"   +answer2);
System.out.println("answer3"   +answer3);
System.out.println("answer4"   +answer4);
System.out.println("answer5"   +answer5);


    
    
    try{
       
       Connection con=Dbconnection.getConnection();
        Statement st = con.createStatement();
        
      
    PreparedStatement pa = con.prepareStatement("update cal1 set answer = '"+ans1+"',status='"+done+"' where question = '"+ques1+"' and pid = '"+pid+"'");
    int i=pa.executeUpdate();
     
    
   
    PreparedStatement pb = con.prepareStatement("update cal1 set answer = '"+answer1+"',status='"+done+"' where question = '"+question1+"' and pid = '"+pid+"' ");
    pb.executeUpdate();
    
    
    
    
    
    PreparedStatement pc = con.prepareStatement("update cal1 set answer = '"+ans2+"',status='"+done+"' where question = '"+ques2+"' and pid = '"+pid+"' ");
    pc.executeUpdate();
    
     
    
    PreparedStatement pd = con.prepareStatement("update cal1 set answer = '"+answer2+"',status='"+done+"' where question = '"+question2+"' and pid = '"+pid+"' ");
    pd.executeUpdate();
   
    

    PreparedStatement pe = con.prepareStatement("update cal1 set answer = '"+ans3+"',status='"+done+"' where question = '"+ques3+"' and pid = '"+pid+"' ");
    pe.executeUpdate();
   
    
  
    
    PreparedStatement pf = con.prepareStatement("update cal1 set answer = '"+answer3+"',status='"+done+"' where question = '"+question3+"' and pid = '"+pid+"'");
    pf.executeUpdate();
    
    
 
     PreparedStatement pq = con.prepareStatement("update cal1 set answer = '"+ans4+"',status='"+done+"' where question = '"+ques4+"' and pid = '"+pid+"' ");
    pq.executeUpdate();
    
  
 
    
    PreparedStatement pr = con.prepareStatement("update cal1 set answer = '"+answer4+"',status='"+done+"' where question = '"+question4+"' and pid = '"+pid+"' ");
    pr.executeUpdate();
    
    
    
 
    PreparedStatement ps = con.prepareStatement("update cal1 set answer = '"+ans5+"',status='"+done+"' where question = '"+ques5+"' and pid = '"+pid+"' ");
    ps.executeUpdate();
   
    
   
    
    PreparedStatement pt = con.prepareStatement("update cal1 set answer = '"+answer5+"',status='"+done+"' where question = '"+question5+"' and pid = '"+pid+"' ");
    pt.executeUpdate();
    
   
    
    
    
    



response.sendRedirect("pharmacisthome.jsp?m3=success");

}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

    
   
</div>
</body>
</html>