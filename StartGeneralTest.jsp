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
        String userid="";
        %>
        <style>
        .container-fluid{
        background-image:url("images/loginbackground.jpg");
        }
        table{
        	width:100%;
        }
            th{
                height:200px;
                width:200px;
                background-color:#ffffff;
                box-shadow: 10px 10px -5px aqua;
            }
                       tr{
                text-align: left;
                border:5px solid black;
            }
            td{
                height:50px;
                min-width:100px;
                background-color:#ffffff;
                border:5px groove #ffccff;
                box-shadow: 2px 2px 0px -2px aquamarine;
                text-align: left;
            }
            #navlist{
	display:none;
	float:right;
	background-color:grey;
	color:#9d9d9d;
	height:100px;
	width:200px;
	font-size:16px;
	padding:16px;
	}
	#navlist:hover{
	background-color:#ffcccc;
	font-size:20px;
	display:block;
	box-shadow:10px 10px 0px -2px rgba(128,128,0,2.5);
	}
	#navlist a{
	background-color:#478cc;
	display:inline-block;
	}
	#navlist a:hover{
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
        <title> startGeneralTest # SystemIQ</title>
    </head>
    <body>
        <jsp:include page="header2.jsp"></jsp:include> 
         <br/>
        <div class="container-fluid">
            <form id="startGeneral">
                <div class="row text-center">
               <table style="padding-top:0px;">
                    <tr><th><img src="images/iqs.jpg"/></th><th><h4>START General IQ Test</h4><br/>
                    <h6><b>Enter UserID sent to Your Mail</b></h6><input type="number" placeholder="userid" name="userid" id="gt" required/><br/>
                    <%userid=request.getParameter("userid");
                    ResultSet rs=stm.executeQuery("select * from users where userid="+userid);
                    while(rs.next()){
            out.println("Welcome.:\t"+rs.getString(2)+"\t"+rs.getString(3));}%></th></tr>
                    <tr><td style="padding-left:100px;">[1] COMPREHENSION AND LANGUAGE</td><td><a href="ComLang11.jsp"><input type="button" class="btn btn-danger" value="Start Exam 1"></a></td></tr>
            <tr> <td style="padding-left:100px;" >[2] SERIES SOLVING</td><td><a href="series11.jsp"><input type="button" class="btn btn-danger" value="Start Exam 2"></a></td></tr>
            <tr> <td style="padding-left:100px;">[3] PATTERNS</td><td><a href="pattern11.jsp"><input type="button" class="btn btn-danger" value="Start Exam 3"></a></td></tr>
            <tr><td style="padding-left:100px;">[4] GENERAL MATHEMATICS</td><td><a href="GM11.jsp"><input type="button" class="btn btn-danger" value="Start Exam 4"/></a></td></tr>
            <tr><td style="padding-left:100px;">[5] GAME</td><td><a href="Game1.jsp"><input type="button" class="btn btn-danger" value="Start Exam 5"></a></td></tr>
                </table></div></form></div><br/>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <%sc.close();stm.close();conn1.close();%>
</html>