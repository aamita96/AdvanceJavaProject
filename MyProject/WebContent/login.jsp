<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginForm</title>
<style>
	form{
		margin-top:50px;
		margin-left:300px;
		
		
	}
	body{
		background-image:url(iiim1.jpg);
		background-size:1360px 768px;
		background-repeat:no-repeat;
	}
	label{
		font-size:25px;width:200px;white-space: nowrap;
		}
	a{
		border-radius:5px;height:25px;padding:3px;width:200px;color:blue;
		text-decoration:none;
		
	}
	
	
	
	
	
</style>
</head>
<body > 
<form method="post" action="DemoSession">
<span style="color:red;font-weight: bold; ">${message}</span>
<table>
<tr>
	<td>
	<label>IIIM Enrollment No.</label>
	</td>
	<td>
		&nbsp;<input type="text" name="username" style="border-radius:5px;height:25px;padding:3px;width:280px;margin-bottom:10px;"/><br/>
	</td>
</tr>
<tr>
<td>
	<label>Password</label>
</td>
<td>
	&nbsp;<input type="password" name="password" style="border-radius:5px;height:25px;padding:3px;width:280px;margin-bottom:10px;"/><br/>
</td>
</tr>
<tr>
<td style="width:25px;">
	<a href="signup.jsp"> don't have registered ? click to fill form</a>
</td>
	<td>
	<br/>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" value="LOGIN" style="border-radius:5px;height:25px;padding:3px;width:200px;color:blue;"/>
	</td>
</tr>
</table>
</form>
</body>
</html>