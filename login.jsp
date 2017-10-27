<%@ page import=" java.sql.*"%>

<%
String  addno=request.getParameter("ano");
double ano=Double.parseDouble(addno);
%>
<% 
String driver_name="com.mysql.jdbc.Driver";
String user="root";
String password="root";
String url="jdbc:mysql://localhost:3306/Health";
	Class.forName(driver_name);
	Connection con=DriverManager.getConnection(url,user,password);
	Statement stmt=con.createStatement();
	String query="select * from health where aadhar_no='"+ano+"'";
	ResultSet rs =stmt.executeQuery(query);
	    if(rs.next()) 
		{
			session.setAttribute("ano", addno);
	 %>
	 
	 <jsp:forward page="Welcome.jsp"/>
	 <% 
		}
		else
		{
			out.println(" user not found register first");
			%>
			<a href="Sign_up.html">Sign up</a>
			
			<% 
		}
		con.close();
	    
%>