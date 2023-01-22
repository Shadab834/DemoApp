<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Details</title>
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
  background-color: #d5f4e6;
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
</head>
<body>
<form  name="form2"  action="AdminServlet"  method="post"  onsubmit="return validate()" >
	<table align="center" >
		<tr>
			<td>Loginid</td>
			<td> <input type="text" name="loginid" /></td>
		</tr>	
		<tr>
			<td>Password</td>
			<td> <input type="password" name="password" /></td>
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
	  var a = /^[0-9]+$/;
	  var b = /^[a-zA-Z0-9]+$/;
	  
	 
	  
	   var username = document.forms.form2.username.value;
	   var password = document.forms.form2.password.value;
	   if(username==null||username=="")
	   {
	      alert("username cannot be blank");
	      document.forms.form2.username.focus();
	      return false;
	   }
   if(b.test(document.forms.form2.username.value)==false)
	   {
	     alert("username is alphanumeric");
	     document.forms.form2.username.focus();
	      return false;
	     
	   }
	   
    if(password==null||password=="")
	   {
	      alert("password cannot be blank");
	      document.forms.form2.password.focus();
	      return false;
	   }
    if(b.test(document.forms.form2.password.value)==false)
	   {
	     alert("password is alphanumeric");
	     document.forms.form2.password.focus();
	      return false;
	     
	   }
    if(password.length<8)
    	{
    	  alert("password sholud be more than 8 characters");
    	  document.forms.form2.password.focus();
    	  return false;
    	}
    }
    
    </script>
</body>
</html>