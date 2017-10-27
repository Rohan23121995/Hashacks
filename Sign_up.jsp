<%@ page import=" java.sql.*"%>
<%@ page errorPage="error.jsp"%>

<%
String  addno=request.getParameter("ano");
double ano=Double.parseDouble(addno);
String name=request.getParameter("uname");
String address=request.getParameter("address");
String bg=request.getParameter("bg");
String mi=request.getParameter("mi");
String pmp=request.getParameter("pmp");

String driver_name="com.mysql.jdbc.Driver";
String user="root";
String password="root";
String url="jdbc:mysql://localhost:3306/Health";
	Class.forName(driver_name);
	Connection con=DriverManager.getConnection(url,user,password);
	String query="insert into health values(?,?,?,?,?,?)";
	PreparedStatement ps =con.prepareStatement(query);
	ps.setDouble(1,ano);
	ps.setString(2,name);
	ps.setString(3,address);
	ps.setString(4,bg);
	ps.setString(5,mi);
	ps.setString(6, pmp);
	ps.executeUpdate();
out.println("Registered susscessfully!!!!!");
con.close();
	    
%>
<br>
Press <a href="index.html">continue</a> to procede.