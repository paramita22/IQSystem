<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
HttpSession session1=request.getSession();
Class.forName("oracle.jdbc.OracleDriver");
Connection conn1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
Statement st=conn1.createStatement();
String userid=(String)session1.getAttribute("userid");
ResultSet rs1=st.executeQuery("select * from customised_gradecard_generation where userid=10224");
String user_grade=(String)session.getAttribute("gc");
%>
<meta charset="ISO-8859-1">
<title>CustomisedTestIqGradeCard</title>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'performance in CustomisedIQ test'],
          ['Communication',     8],
          ['Authority',      6],
          ['Charisma',  2],
          ['Leadership', 4],
          ['Strategy',    4]
        ]);

        var options = {
          title: 'financial Performance',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>
</head>
<body>
<div class="container-fluid">
<img src="images/iqs.jpg" alt="iqlogo"/>
<div class="col-xs-4"><table>
<tr><td><h2>GRADE CARD FOR CUSTOMISED TEST</h2></td>
<td><h4>User:10224</h4></td></tr>
<tr><td><h4>User Name:Pandora Parish</h4></td>
<td><h4>Institute Name : NA</h4></td>
<tr><td style="background-color:blue;color:#ffffff;"><h4>STRENGTH<h4></h4><br/>
<h4><input type="checkbox" checked>EXCELLENT PERFORMANCE IN FINANCE</h4><br/>
</td>
<td style="background-color:pink;color:#000000;"><h4>WEAKNESS</h4><br/>
<h4><input type="checkbox" checked>MANAGERIAL CAPABILITIES LACK AUTHORITY</h4><br/>
<br/></td>
</tr>
<tr>
<td style="background-color:green;color:#ffffff;"><h4>OPPORTUNITY</h4><br/>
<h4><input type="checkbox" checked>FINANCIAL FIELD MAY BE PURSUED IN DIGITAL MODE</h4><br/></td>
<td style="background-color:red;"><h4>THREAT</h4><br/>
<h4><input type="checkbox" checked/>AUTHORITY MAY BE CHALLENGED BY POTENTIAL COMPETITORS</h4><br/>
</td>
</tr><tr><td>SUGGESTED IMPROVEMENT LINK</td><td>https://www.linkedin.com/learning/managerial-finance-foundations</td></tr>
<tr><td><a href="UserProfile1.jsp"><input type="button" class="btn btn-primary" value="Return to Profile" style="float:right;"></a></td>
<td><a href="UserLogout.jsp"><input type="button" class="btn btn-danger" value="LOGOUT" style="float:right;"></a></td></tr></table>
</div>
<div id="donutchart" style="width: 900px; height: 500px;"></div>
<input type="button" value="Download here" class="btn btn-danger" onclick="$('a#someID').attr({target: '_blank', 
    href  : 'http://localhost/directory/file.pdf'});">
</div>   
</body>
</html>