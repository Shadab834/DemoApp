<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login </title>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

#navbar {
  width: 100vw;
  height: 40px;
  border: 3px solid white;
  border-radius: 15px;
  background-color: #ddd;
  color: black;
}

#navbar img {
  display: block;
  width: 40px;
  height: 40px;
  margin: auto;
}
body {
  background-color: #f18973;
}

</style>


</head>
<body>
<div class="topnav">
  <a class="active" href="index.jsp">Home</a>
  
 
  <a href="Student.jsp">Student</a>
<div style ="float:right">
  
  <a href="Login.jsp">Signin</a>
  <a href="#signout">Signout</a>

</div>   
  
</div>


	
	<form name="form1" action="LoginServlet" method="post" onsubmit="return validate()">
	<table align="center" >
		<tr>
			<td>Username</td>
			<td> <input type="text" name="username" /></td>
		</tr>	
		<tr>
			<td>Password</td>
			<td> <input type="password" name="password" /></td>
		</tr>	
		<tr>
			<td><span style="color:red" ><%=(request.getAttribute("errMessage") == null) ? ""
         : request.getAttribute("errMessage")%>
					</span></td>
		</tr>	
		<tr>
			<td></td>
		    <td><input type="submit" value="Login" />	
		    <input type="reset" value="Reset" /><td>
		</tr>    
	</table>
	</form>
	<script type="text/javascript" >
	function validate()
	{
		var username=document.form1.username.value;
		var password=document.form1.password.value;
		
		if(username==null || username=="")
			{
			   alert("username cannot be blank");
			   return false;
			   
			}
		else if(password==null || password=="")
			{
				alert("password cannot be blank");
				return false;
			}
	}
</script>
	
	
</body>
</html>