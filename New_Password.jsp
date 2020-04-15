<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <title>Reset Password</title>
  <link rel = "icon" href = "icon.png" type = "image/x-icon">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel = "stylesheet" type = "text/css" href = "/IMS/CSS/Forgot_Password.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<%

String email = request.getParameter("email");

%>

<body>
    <div class="login" style="height: 77%;">
      <div class="imgcontainer">
        <h2>Reset your password</h2>
        <p>Please choose a new password to finish signing in.</p>

      <form style="max-width: 70%;margin-top:5%;margin-left: 15%" action="/IMS/CONTROLLER/New_Password.jsp">
        <div class="input-container">
          <input class="input-field" type="text" name="name" placeholder="Full Name">
        </div>
        <div class="input-container">
          <input class="input-field" type="text" name="username" placeholder="username">
        </div>
        <div class="input-container">
          <input class="input-field" type="text" name="contactNumber" placeholder="contactNumber">
        </div>
        <div class="input-container">
          <input class="input-field" type="password" name="password" id="password" onchange="SerialNumber()" placeholder="New Password">
        </div>
        <div class="input-container">
          <input class="input-field" type="password" name="password1" id="password1" onchange="SerialNumber()" placeholder="Re-enter new password">
        </div>
        <p id="serial"></p>
        
        <input type="hidden" name="email" value="<%=email%>" >
          
        <button type="submit" class="btna">Save</button>
      </form>
    </div>
</body>

<script>

function SerialNumber() { 
    var password = document.getElementById("password").value; 
    var password1 = document.getElementById("password1").value; 
    
    if (password != password1){
    	
        document.getElementById("serial").innerHTML = "<p class='p2'>Password does not match!</p>";
    	
    }else {
    	
        document.getElementById("serial").innerHTML = "<p class='p3'>Password match!</p>";
    	
    }
    
} 

</script>

</html>
