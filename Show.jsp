<%@ page import=" java.sql.*"%>
<%
String driver_name="com.mysql.jdbc.Driver";
String user="root";
String password="root";
String url="jdbc:mysql://localhost:3306/health";
	Class.forName(driver_name);
	Connection con= DriverManager.getConnection(url,user,password);
	Statement stmt=con.createStatement();
	double ano=Double.parseDouble((String)session.getAttribute("ano"));
	String query="select * from health where aadhar_no='"+ano+"'";
	ResultSet rs=stmt.executeQuery(query);
	out.println("<table border='2' bordercolor='red' cellpading='5' cellspacing='5' width='100%' height='20%'><tr><th ><u>Aadhar Number</u></th><th ><u>Name</u></th><th ><u>Address</u></th><th ><u>Blood Group</u></th><th ><u>Medical Insuarance</u></th><th ><u>Previous Medical Problem</u></th></tr>");
	while(rs.next())
	{
		out.println("<tr><td><b>"+rs.getString(1)+"</b></td>");
		out.println("<td><b>"+rs.getString(2)+"</b></td>");
		out.println("<td><b>"+rs.getString(3)+"</b></td>");
		out.println("<td><b>"+rs.getString(4)+"</b></td>");
		out.println("<td><b>"+rs.getString(5)+"</b></td>");
		out.println("<td><b>"+rs.getString(6)+"</b></td></tr>");
	}
	con.close();
	
%>
<br>
<br>
Press <a href="Welcome.jsp">continue</a> to procede.