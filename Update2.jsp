<html>
<style>
body{
background-color:brown;

}

</style>
<body>
<%@ page import=" java.sql.*"%>
<%

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
	String query="update health set name='"+name+"',address='"+address+"',bg='"+bg+"',mi='"+mi+"',pmp='"+pmp+"'";
	Statement stmt =con.createStatement();
	int nora=stmt.executeUpdate(query);

	if(nora!=0)
		out.println("Updated susscessfully!!!!!"); 
	
%>
<br>
<br>
Press <a href="Welcome.jsp">continue</a> to procede.
<%con.close();
%>
</body>
</html>
