<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp to SMDP</title>
<style>
	h1{text-align:center;}
	.input1{width:250px;}
	.input2{width:250px;margin-left:35px;}
	.input3{width:229px;}
	span{color:red;}
	.imp{color:#b30000}
	body{
		background-image:url("blue-sky.jpg");
		background-repeat:repeat;
		background-size:1500px 800px;
	}
</style>
</head>
<body>
<div>
<h1>Welcome to IIIM SMDP Portal Registration Page</h1>
</div>
<div>
	<form method="post" action="Signup" name="mainform" >
	<fieldset>
		<legend><b>Personal Details</b></legend>
		<table>
			<tr>
				<td>Name of Student :</td><td> <input type="text" name="st_name" class="input1" maxlength="40"  required/><span id="span_1" >&nbsp;&nbsp;*</span></td>
				
			</tr>
			<tr>
					<td>IIIM Enrollment No. :</td><td> <input type="text" name="st_enroll" class="input1" maxlength="30" required/><span id="span_2" >&nbsp;&nbsp;*</span></td>
			</tr>
			<tr>
					<td>Student Mobile No. :</td> <td><input type="text" name="st_contact" class="input1" maxlength="10" required/><span id="span_3" >&nbsp;&nbsp;*</span></td>
			</tr>
			<tr>
					<td>Student E-mail ID :</td> <td><input type="email" name="st_email" class="input1" maxlength="30" required/><span id="span_4" >&nbsp;&nbsp;*</span></td>
			</tr>
			<tr>	
					<td>Image :</td><td> <input type="file" name="image" class="input1" required/><span id="span_5" >&nbsp;&nbsp;&nbsp;&nbsp;*</span></td>
			</tr>
			<tr>
					<td>Residential Address:</td><td> <input type="text" name="address" size="30" class="input1" required/><span id="span_6" >&nbsp;&nbsp;*</span></td>
			</tr>
			<tr>
					<td>Date of Birth: </td><td><input type="date" name="dob" class="input1" required/><span id="span_7" >&nbsp;&nbsp;*</span></td>
			</tr>
			<tr>
					<td>Department:</td><td> <input type="text" name="st_dept" class="input1"maxlength="10" required/><span id="span_8" >&nbsp;&nbsp;*</span></td>
			</tr>
			<tr>
					<td>Graduation Subject: </td><td><input type="text" name="graduation"  class="input1" maxlength="10" required/><span id="span_9" >&nbsp;&nbsp;*</span></td>
			</tr>
			</table>
	</fieldset><br/>
	<fieldset>
		<legend><b>Mother Details</b></legend>
			<table>
				<tr>
					<td>Mother's Name :</td><td> <input type="text" name="mt_name" class="input2" maxlength="30" required/><span id="span_10" >&nbsp;&nbsp;*</span></td>
				</tr>
				<tr>
					<td>Designation : </td><td><input type="text" name="mt_des" class="input2" maxlength="40" required/><span id="span_11" >&nbsp;&nbsp;*</span></td>
				</tr>
				<tr>
					<td>Contact :</td><td> <input type="text" name="mt_contact" class="input2" maxlength="10" required/><span id="span_12" >&nbsp;&nbsp;*</span></td>
				</tr>
				<tr>
					<td>E-mail ID :</td> <td><input type="email" name="mt_email" class="input2" maxlength="30"/><span id="span_13" ></span></td>	
				</tr>	
			</table>
		</fieldset>
	<fieldset>
		<legend><b>Father Details</b></legend>
			<table>
				<tr>
					<td>Father's Name :</td><td> <input type="text" name="ft_name" class="input2" maxlength="30" required/><span id="span_14" >&nbsp;&nbsp;*</span></td>
				</tr>
				<tr>
					<td>Designation :</td><td> <input type="text" name="ft_des" class="input2" maxlength="40" required/><span id="span_15" >&nbsp;&nbsp;*</span></td>
				</tr>
				<tr>
					<td>Contact :</td><td> <input type="text" name="ft_contact" class="input2" maxlength="10" required/><span id="span_16" >&nbsp;&nbsp;*</span></td>
				</tr>
				<tr>
					<td>E-mail ID :</td><td> <input type="email" name="ft_email" class="input2" maxlength="30"/><span id="span_17" ></span></td>
				</tr>
				</table>
	</fieldset>
	<fieldset>
			<legend><b>Guardian Details</b></legend>
				<table>
					<tr>
						<td>Local Guardian's Name :</td><td> <input type="text" name="lg_name" class="input3" maxlength="40"/><span id="span_18" ></span></td>
					</tr>
					<tr>
						<td>Contact :</td> <td><input type="text" name="lg_contact" class="input3" maxlength="10"/><span id="span_19" ></span></td>
					</tr>
					<tr>
						<td>E-mail ID :</td><td> <input type="email" name="lg_email" class="input3" maxlength="10"/><span id="span_20" ></span></td>						
					</tr>
				</table>
	</fieldset>
	<fieldset>
		<legend><b>Siblings Details</b></legend>
			<table>
				<tr>
					<td>No Of Brothers :</td><td>  <input type="text" name="brothers" class="input1" value="0" required/><span id="span_21" >&nbsp;&nbsp;*</span></td>
				</tr>
				<tr>
					<td>No Of Sisters :</td><td> <input type="text" name="sisters" class="input1" value="0" required/><span id="span_22" >&nbsp;&nbsp;*</span></td>
				</tr>
				<tr>
					<td>Signature of Parent :</td><td> <input type="file" name="parent_sign" class="input1" required/><span id="span_23" >&nbsp;&nbsp;*</span></td>
				</tr>
				<tr>
					<td>Signature of Student : </td><td><input type="file" name="student_sign" class="input1" required/><span id="span_24" >&nbsp;&nbsp;*</span></td>
				</tr>
				<tr>
						<td><span style="color:red;font-weight: bold; ">${message}</span></td>				
				</tr>
			</table>
	</fieldset>
	
	<table style="margin-left:550px;">
		<tr>
			<td style="padding-right:30px;">
				<input type="submit" value="Submit" />
			</td>
			<td>
				<input type="reset" value="Reset" />
			</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>