<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/";
String dbName = "smdp";
String userId = "root";
String password = "";
String usrname=(String)session.getAttribute("username");
try {
Class.forName(driverName);

} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
PreparedStatement ps=null;
try{ 
conn = DriverManager.getConnection(connectionUrl+dbName, userId, password);
stmt=conn.createStatement();
//String sql ="SELECT * FROM student where st_enroll=";
rs = stmt.executeQuery("SELECT * FROM student WHERE st_enroll='"+usrname+"'");
while(rs.next()){

%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to IIIM Jaipur</title>
<style>
	label{font-size:20px;padding-left:540px;float:right;}
	div{float:right;}
	span{padding-right:60px;float:right;}     
	img {
		width:600px; height:100px;float:left;	
	}
	a{text-decoration: none;	}
</style>
</head>
<body>
<div>
<img src="IIIMlogo.jpg"/>
<label>Welcome ${sessionScope.username} </label><br/><span> <a href="DemoSession">LogOut</a></span>
</div>
<br/><br/><br/><br/><br/><br/><br/><br/>
<div>
	<br>
            <table cellpadding="3px" cellspacing="2px" width="1280px;">
                <tr>
                    <td colspan="2" style="color:#663300" align="center">
                        <b>Student Details</b>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="color:#663300" align="center">
                        MASTER OF COMPUTER APPLICATION
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" valign="top">
                        <table cellspacing="0" rules="all" border="1" style="width:100%;border-collapse:collapse">
		<tr>
			<td>
                                    </td>
		</tr><tr>
			<td>
                                        <table cellpadding="5px" cellspacing="5px" width="100%">
                                            <tr>
                                                <td align="left" style="color:#800000;font-weight:bold">
                                                    Name
                                                </td>
                                                <td align="left">
                                                    <%=rs.getString("st_name") %>
                                                </td>
                                                <td align="left" style="color:#800000;font-weight:bold">
                                                    Enrollment Number: 
                                                </td>
                                                <td align="left">
                                                    <%=rs.getString("st_enroll") %>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="color:#800000;font-weight:bold">
                                                    Contact No.
                                                </td>
                                                <td align="left">
                                                    <%=rs.getString("st_contact") %>
                                                </td>
                                                <td align="left" style="color:#800000;font-weight:bold">
                                                   Email Id: 
                                                </td>
                                                <td align="left">
                                                     <%=rs.getString("st_email") %>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="color:#800000;font-weight:bold">
                                                    Date Of Birth:
                                                </td>
                                                <td align="left">
                                                    <%=rs.getString("dob") %>
                                                </td>
                                                <td align="left" style="color:#800000;font-weight:bold">
                                                    Address : 
                                                </td>
                                                <td align="left">
                                                    <%=rs.getString("address") %>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="color:#800000;font-weight:bold">
                                                    Department : 
                                                </td>
                                                <td align="left">
                                                    <%=rs.getString("st_dept") %>
                                                </td>
                                                <td align="left" style="color:#800000;font-weight:bold">
                                                    Graduation : 
                                                </td>
                                                <td align="left">
                                                    <%=rs.getString("graduation") %>
                                                </td>
                                            </tr>
											<% 
												}

											} catch (Exception e) {
												e.printStackTrace();
												}
											%>
											
											
 
     
      </table></td></tr></table></td></tr></table></div>
</body>
</html>