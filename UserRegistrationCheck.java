
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UserRegistrationCheck extends HttpServlet{
	public void doPost(HttpServletRequest req, HttpServletResponse res)throws ServletException, IOException{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
	Connection conn1;
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		conn1 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xepdb1","hr","hr");
	int c,y;
	Statement st=conn1.createStatement();
	ResultSet rs=st.executeQuery("select max(userid) from users");
	while(rs.next()) {
		c=rs.getInt(1)+1;
	}
	PreparedStatement ps=conn1.prepareStatement("insert into users(userid,user_fname,user_lname,user_email,user_password,user_phone,user_address,user_setverification) values(?,?,?,?,?,?,?,?)") ;
	ps.setString(1, 10226);
	ps.setString(2, req.getParameter("Flora"));
	ps.setString(3, req.getParameter("dd"));
	ps.setString(4, req.getParameter("ffdd12@gmail.com"));
	ps.setString(5, req.getParameter("ffdd"));
	ps.setString(6, req.getParameter("9876543201"));
	ps.setString(7, req.getParameter("mnb109vcx"));
	ps.setString(8, req.getParameter("yes"));
	y=ps.executeUpdate();
	if(y!=0) {
		out.println("<html><head><title>UserRegistration</title></head>");
		out.println("<body><h1>Your Sign up was Successful.Please proceed to Login</h1>");
		out.println("<input type="button" value="Sign In User");
				out.println("</body></html>");
		response.sendRedirect("UserLogin.jsp");
	}
	}
	catch(Exception e) {
		out.println(e);
		}
	}	
	
}
