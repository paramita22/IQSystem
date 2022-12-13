<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%Class.forName("oracle.jdbc.OracleDriver");
		 Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
        Statement stm=conn1.createStatement();
        Scanner sc=new Scanner(System.in);
        %>
        <style>
        .container-fluid{
        width:auto;
        background-image:url("images/Doot.png");
        position:absolute;
        }
        table{
        	margin-top:20px;
        	margin-bottom:100px;
        	height:auto;
        	width:900px;
        	margin-left:300px;
        	position:relative;
        }
            th{
                height:200px;
                width:200px;
                background-color:#e478ff;
                box-shadow: 10px 10px -5px aqua;
            }
                       tr{
                text-align: left;
                border:5px solid black;
            }
            td{
                height:50px;
                min-width:100px;
                border:5px solid black;
                background-color:#ffcccc;
                box-shadow: 2px 2px 0px -2px aquamarine;
                text-align: center;
            }
          a:hover,a:focus{
border:1px solid black;
background-color:red;
color:ffffff;
font-size:36px;
transform:perspective(5.5cm);
box-shadow:5px 5px 5px -2px rgba(128,0,128,2.5);
}
img:hover{
transform:skew(30deg,30deg);
}
#delay{
height:50px;
width:100px;
font-size:20px;
background-color:red;
display:block;
transition:width 2s,height 2s,background-color 2s,transform 2s;
}
#delay:hover{
height:200px;
width:300px;
font-size:36px;
background-color:#ffcccc;
transform:rotate(180deg);
}
          
        </style>
        <script>
            function checkSubmit(){
                var x=document.getElementById[cd].grd.value;
                if(x===true){
                    return true;
                }
                else{
                    return false;
                }
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> startCustomisedTest # SystemIQ</title>
    </head>
    <body>
        <jsp:include page="header2.jsp"></jsp:include> 
         <br/>
        <div class="container-fluid">
            <form name="startCustomised" action="CustomisedIQgradecard.jsp">
                <div class="row text-center">
                    <div class="col-xs-2">
            <%HttpSession session1=request.getSession();
            String userid=(String)session1.getAttribute("userid");
            String user_email=(String)session1.getAttribute("user_email");
            String user_phone=(String)session1.getAttribute("user_phone");
            
            out.println("Enrolment No.:"+userid);
            out.println("Email"+user_email);
            
            %></div>
               <div class="col-xs-5 col-xs-offset-1"><table style="padding-top:0px;">
                    <th><img src="images/AI11.png"/></th><th><h4 style="text-align:left;">START CUSTOMISED IQ TEST</h4></th><th></th>
                    <tr><td style="padding-left:100px;text-align:left;">[1] MANAGERIAL SKILL</td><td><a href="ManagerialSkill1.jsp"><input type="button" class="btn btn-danger" value="Start Exam 1"></a></td><td><a href="rectifiedExam1.jsp"><input type="button" value="CheckExam" onclick="checkSubmit();"></a></td></tr><br/><br/>
            <tr> <td style="padding-left:100px;text-align:left;" id="navlist">[2] BUSINESS SKILL</td><td><a href="BusinessSkills1.jsp"><input type="hidden" class="btn btn-danger" value="Start Exam 2"></a></td><td><a href="rectifiedExam2.jsp"><input type="button" value="CheckExam" onclick="checkSubmit();"></a></td></tr><br/><br/>
            <tr> <td style="padding-left:100px;text-align:left;" id="navlist">[3] FINANCIAL SKILL</td><td><a href="FinancialSkills1.jsp"><input type="button" class="btn btn-danger" value="Start Exam 3"></a></td><td><a href="rectifiedExam3.jsp"><input type="button" value="CheckExam" onclick="checkSubmit();"></a></td></tr><br/><br/>
            <tr><td style="padding-left:100px;text-align:left;" id="navlist">[4] TEACHING SKILL</td><td><a href="TeachingSkills1.jsp"><input type="hidden" class="btn btn-danger" value="Start Exam 4"></a></td><td><a href="rectifiedExam4.jsp"><input type="button" value="CheckExam" onclick="checkSubmit();"></a></td></tr><br/><br/>
            <tr><td style="padding-left:100px;text-align:left;" id="navlist">[5] SOCIAL SKILL</td><td><a href="SocialSkill1.jsp"><input type="hidden" class="btn btn-danger" value="Start Exam 5"></a></td><td><a href="rectifiedExam5.jsp"><input type="button" value="CheckExam" onclick="checkSubmit();"></a></td></tr><br/><br/>
                   </table></div></div></form></div><br/>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>