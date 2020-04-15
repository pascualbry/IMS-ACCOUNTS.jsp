<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Forgot Password</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel = "stylesheet" type = "text/css" href = "/Inventory/Css/Inventory_EditProduct.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>

<body>

  <div class="testbox">

    <form action="/IMS/CONTROLLER/Send_Email.jsp">
      <fieldset>
      <legend>Forgot Password</legend>

      <div>
        <label for="name">Enter your Email</label>

        <div class="name-item">
          <input type="text" id="name" name="email" placeholder="Email" >
        </div>

      </div>
        <button type="submit" class="addorder">ENTER</button>
      </fieldset>

    </form>

  </div>
  
</body>
</html>
