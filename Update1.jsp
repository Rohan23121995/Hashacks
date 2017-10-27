<%@ page import=" java.sql.*"%>
Enter your Details to Update
<form action="Update2.jsp" method="post">
	*Aadhar Number:   <br>         
	<%
	out.println((String)session.getAttribute("ano"));
	%>
	<br>
	*NAME:             <br>
	<input type="text" name="uname"><br>
	*Address:           <br>
	<input type="text" name="address"><br>
	*Blood Group:       <br>
	<input type="text" name="bg"><br>
	*Name of hospital in which you have insuarace?    <br>
	 <input type="text" name="mi"><br>
	*Previous Medical Problem:              <br>
	<input type="text" name="pmp"><br>
	
	<input type="submit" value="Submit" >
	
</form>