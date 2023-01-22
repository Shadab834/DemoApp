<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student's Detail</title>
</head>

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
  
 
  <a href="Admin.jsp">Admin</a>
<div style ="float:right">
  
  <a href="Register.jsp">Register</a>
  <a href="Login.jsp">Signin</a>
  

</div>   
  
</div>

</style>
<body>
  	<center><h2>FILL UP STUDENT DETAILS</h2></center>
	<form name="form4" action="StudentServlet" method="post" >
	<table align="center" >
	<tr>
		<td>Registration No</td>
		<td><input type="text" name="registration" ></td>
	</tr>	
	<tr>
		<td>First name</td>
		<td><input type="text" name="fname" ></td>
	</tr>
	<tr>
		<td>last name</td>
		<td><input type="text" name="lname" ></td>
	</tr>
	
	<tr>
    	<td>Date of Birth</td>
    	<td><input type = "date"  name="dob" /></td>		
	</tr>
		
	<tr>
		<td>Address</td>
		<td><input type="text" name="address" ></td>
	</tr>
	
	<tr>
		<td>City</td>
		<td><input type="text" name="city" ></td>
	</tr>
	
	 <tr>
        <td>State</td>
        <td>
        <select name="state">
        <option>Select a State</option>
        <option>Andhra Pradesh</option>
        <option>Assam</option>
        <option>Arunachal Pradesh</option>
        <option>Bihar</option>
        <option>Goa</option>
        <option>Gujarat</option>
        <option>Jammu&Kashmir</option>
        <option>Jharkhand</option>
        <option>Karnataka</option>
        <option>Kerala</option>
        <option> Madhya Pradesh</option>
        <option>Maharashtra</option>
        <option>Manipur</option>
        <option>Meghalaya</option>
        <option>Mizoram</option>
        <option>Nagaland</option>
        <option>Odhisa</option>
        <option>West Bengal</option>
        <option>Tamil Nadu</option>
        <option>Himachal Pradesh</option>
        <option>Telangana</option>
        <option>Uttar Pradesh</option>
        <option>Punjab</option>
        <option>Haryana</option>
        <option>Rajasthan</option>
        <option>Chhattisgarh</option>
        <option>Sikkim</option>
        <option>Manipur</option>
        <option>Tripura</option>
       
        </select>
        </td>
     </tr>                        
		 
	<tr>
		<td>email</td>
		<td><input type="email" name="email" ></td>
	</tr>
	
	
	
	<tr>
		<td>Mobile No</td>
		<td><input type="text" name="mobile" ></td>
	</tr>
	
	<tr>
		<td>Year of Passing</td>
		<td><input type="text" name="yop" ></td>
	</tr>
	
	    
	<tr>
		<td>Qualification</td>
		<td><input type="text" name="qualification" ></td>
	</tr>
	
	<tr>
		<td>University</td>
		<td><input type="text" name="university" ></td>
	</tr>
	
	<tr>
		<td>Average Marks</td>
		<td><input type="text" name="marks" ></td>
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
</body>
</html>