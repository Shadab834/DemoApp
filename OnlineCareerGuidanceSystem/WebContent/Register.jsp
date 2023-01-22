<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
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
	<center><h2>Registration application</h2></center>
	<form name="form4" action="RegisterServlet" method="post" onsubmit="return validate()" >
	<table align="center" >
	<tr>
		<td>Full name</td>
		<td><input type="text" name="fname" ></td>
	</tr>	
		 
	<tr>
		<td>email</td>
		<td><input type="email" name="email" ></td>
	</tr>
	
	<tr>
		<td>username</td>
		<td><input type="text" name="username" ></td>
	</tr>
	
	<tr>
		<td>password</td>
		<td><input type="password" name="password" ></td>
	</tr>
	
	<tr>
		<td>confirm password</td>
		<td><input type="password" name="conpassword" ></td>
	</tr>
	
	<tr>
		<td><%=(request.getAttribute("errMessage")==null)? "":request.getAttribute("errMessage") %></td>
		
	</tr>
	
	<tr>
		<td></td>
		<td><input type="submit" value="Register" />
		<input type="reset" value="clear" />
		</td>
	</tr>
		
	</table>
	
	</form>
	<script type="text/javascript">
function validate()
{
	
    var a = /^[0-9]+$/;
    var b = /^[a-zA-Z0-9]+$/;
 
    var fname = document.forms.form4.fname.value;
    var email = document.forms.form4.email.value;
    var username = document.forms.form4.username.value;
    var password = document.forms.form4.password.value;

    var atpos = email.indexOf("@");
    var dotpos = email.lastIndexOf(".");
 
    if(fname==null||fname=="")
	 {
	   alert("full name cannot be blank");
	   document.forms.form4.fname.focus();
	   return false;  
	 }
    if(email==null||email=="")
	 {
	   alert("email cannot be blank");
	   document.forms.form4.email.focus();
	   return false;
	}
    if(atpos<1||dotpos<atpos+2||dotpos+2>email.length)
	 {
	   alert("invalid email address");
	   document.forms.form4.email.focus();
	   return false;
	}
    if(username==null||username=="")
	   {
	      alert("username cannot be blank");
	      document.forms.form4.username.focus();
	      return false;
	   }
    if(b.test(document.forms.form4.username.value)==false)
	   {
	     alert("username is alphanumeric");
	     document.forms.form4.username.focus();
	      return false;
	     
	   }
   if(password==null||password=="")
    {
      alert("password cannot be blank");
      document.forms.form4.password.focus();
      return false;
    }
   if(b.test(document.forms.form4.password.value)==false)
   {
     alert("password is alphanumeric");
     document.forms.form4.password.focus();
      return false;
     
   }
   if(password.length<8)
	{
	  alert("password should have more than eight characters");
	  document.forms.form4.password.focus();
	  return false;
	}
} 
 


</script>
	
</body>
</html>