<%@ page import="Database.Variable_Order"%>
<%@ page import="Database.Variable_Brand"%>
<%@ page import="Database.Variable_Category"%>
<%@ page import="Database.Variable_Product"%>
<%@ page import="Database.Variable_Serial"%>
<%@ page import="CRUD.Get_Value"%>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
  <title>Account</title>
  <link rel = "icon" href = "icon.png" type = "image/x-icon"> 
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel = "stylesheet" type = "text/css" href = "/IMS/CSS/Accounts.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script type="text/javascript" src="sort-table.js"></script>
  <script src="/IMS/JS/search.js"></script>
  <script src="/IMS/JS/pagenumber.js"></script>
  <script src="/IMS/JS/sort-table.js"></script>
</head>

<body>
<div class="navbar">
  <div class="heading">
    <a href="/IMS/DASHBOARD/Dashboard.jsp">ORDER<br/>TRACKING<br/>SYSTEM</a>
  </div>
  <ul>
    <li class="unactive">
      <a href="/IMS/DASHBOARD/Dashboard.jsp">
      <div class="icon">
        <i class="fa fa-tachometer" aria-hidden="true"></i>
      </div>
      <div class="name" data-text="Dashboard">Dashboard</div>
      </a>
    </li>

    <li class="unactive">
      <a href="/IMS/PURCHASING/Purchasing.jsp">
      <div class="icon">
        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
      </div>
      <div class="name" data-text="Purchasing">Purchasing</div>
      </a>
    </li>

    <li class="unactive">
      <div class="dropdown">
        <button onclick="myFunction()" class="dropbtn">
          <div class="icon">
            <i class="fa fa-cubes" aria-hidden="true"></i>
          </div>
          <div class="name" data-text="Inventory">Inventory <i class="fa fa-angle-down" aria-hidden="true" font-size="14"></i></div>
        </button>
        <div id="myDropdown" class="dropdown-content">
          <a href="/IMS/INVENTORY/Brand.jsp">Brand</a>
          <a href="/IMS/INVENTORY/Category.jsp">Category</a>
          <a href="/IMS/INVENTORY/Product.jsp">Product</a>
          <a href="/IMS/INVENTORY/Archive.jsp">Archive</a>
        </div>
      </div>
    </li>

    <li class="unactive">
      <a href="/IMS/QUALITYCONTROL/QCG.jsp">
      <div class="icon">
        <i class="fa fa-check-square-o" aria-hidden="true"></i>
      </div>
      <div class="name" data-text="Quality Control">Quality Control</div>
      </a>
    </li>

    <li class="unactive">
      <a href="/IMS/DELIVERY/Delivery.jsp">
      <div class="icon">
        <i class="fa fa-truck" aria-hidden="true"></i>
      </div>
      <div class="name" data-text="Delivery">Delivery</div>
      </a>
    </li>

    <li class="unactive">
      <a href="/IMS/REPORTS/Reports.jsp">
      <div class="icon">
        <i class="fa fa-line-chart" aria-hidden="true"></i>
      </div>
      <div class="name" data-text="Reports">Reports</div>
      </a>
    </li>

    <li class="unactive">
      <div class="dropdown">
        <button onclick="myFunction()" class="dropbtn">
          <div class="icon">
            <i class="fa fa-cog" aria-hidden="true"></i>
          </div>
          <div class="name" data-text="Settings">Settings <i class="fa fa-angle-down" aria-hidden="true" font-size="14"></i></div>
        </button>
        <div id="myDropdown" class="dropdown-content">
          <a class="active"><i class="fa fa-user" aria-hidden="true" font-size="14"></i>&nbsp;&nbsp;&nbsp;&nbsp;Account</a>
          <a href="/IMS/Login.jsp"><i class="fa fa-sign-out" aria-hidden="true" font-size="14"></i>&nbsp;&nbsp;&nbsp;&nbsp;Logout</a>
        </div>
      </div>
    </li>
  </ul>
</div>

<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>

<div class="body">
  <div class="search">
    <a class="modalb" href="#popupadd">Add Account</a>
  </div>

<div id="popupadd" class="overlay">
  <div class="popup">
    <a class="close" href="#">&times;</a>
      <div class="addheader2"><i class="fa fa-plus-circle" aria-hidden="true"></i>&nbsp;&nbsp;Add Account</div>
        <div class="orderrr2">
          <form action="/IMS/CONTROLLER/Invite_Email.jsp">
            <label class="coc-block-label2" for="ordernum">Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <div class="coc-block2">
              <input class="coc-input2" type="email" name="email" required="">
            </div>
            <br>
            <label class="coc-block-label2" for="ordernum">Role&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <div class="coc-block2">
                <select style="width: 230px;" name="userType" required class="coc-input2">
                  <option selected value="" disabled selected class="city">----------SELECT----------</option>
                  <option value="po">Accounting</option>
                  <option value="qcg">QCG</option>
                  <option value="fdg">FDG</option>
                </select>
            </div>
        </div>
        <div class="addnav">
          <button type="submit" class="addorder"><i class="fa fa-check-circle" aria-hidden="true"></i>&nbsp;&nbsp;Add</button>
        </div>
        </form>
  </div>
</div>


<!-- table -->

<table id="tablepaging" class="js-sort-table" align="center">
    <thead>
      <tr>
        <th onclick="sortTable(0)">Username</th>
        <th onclick="sortTable(1)">Name</th>
        <th onclick="sortTable(2)">Email</th>
        <th colspan="3" onclick="sortTable(3)">Team Role</th>
        <th onclick="sortTable(4)"></th>
      </tr>
    </thead>

    <tbody>

<%

Get_Value obj_Get_Value = new Get_Value();

List<Variable_Order> list = obj_Get_Value.QCG();

Iterator<Variable_Order> it_list = list.iterator();

while (it_list.hasNext()) {
	
	Variable_Order obj_Variable_Order = new Variable_Order();
	
	obj_Variable_Order = it_list.next();
	
	if (obj_Variable_Order.getUserType().equals("qcg")){
		
	
%>		
	
  	<form action="/IMS/ACCOUNT/Accounts1.jsp">
      <tr>
        <td><%=obj_Variable_Order.getUsername() %></td>
		<td><%=obj_Variable_Order.getName() %></td>
		<td><%=obj_Variable_Order.getEmail() %></td>
		<td><input onclick="return false" type="checkbox" value="<%=obj_Variable_Order.getName() %>" name="name" onChange="this.form.submit()">Accounting</td>
        <td><input onclick="return false" checked type="checkbox">QCG</td>
        <td><input onclick="return false" type="checkbox" value="<%=obj_Variable_Order.getUsername()%>" name="username" onChange="this.form.submit()">FDG</td>
        <td><a class="view" href="/IMS/ACCOUNT/Accounts1.jsp">Delete</a></td>
      </tr>
    </form>
	
<%	
	
}else if (obj_Variable_Order.getUserType().equals("fdg")){
	
%>	
	
  	<form action="/IMS/ACCOUNT/Accounts1.jsp">
      <tr>
        <td><%=obj_Variable_Order.getUsername() %></td>
		<td><%=obj_Variable_Order.getName() %></td>
		<td><%=obj_Variable_Order.getEmail() %></td>
		<td><input onclick="return false" type="checkbox" value="<%=obj_Variable_Order.getName() %>" name="name" onChange="this.form.submit()">Accounting</td>
        <td><input onclick="return false" type="checkbox" value="<%=obj_Variable_Order.getContactNumber()%>" name="contactNumber" onChange="this.form.submit()">QCG</td>
        <td><input onclick="return false" checked type="checkbox">FDG</td>
        <td><a class="view" href="/IMS/ACCOUNT/Accounts1.jsp">Delete</a></td>
      </tr>
    </form>


<%

}else if(obj_Variable_Order.getUserType().equals("po")){

%>

  	<form action="/IMS/ACCOUNT/Accounts1.jsp">
      <tr>
        <td><%=obj_Variable_Order.getUsername() %></td>
		<td><%=obj_Variable_Order.getName() %></td>
		<td><%=obj_Variable_Order.getEmail() %></td>
		<td><input onclick="return false" checked type="checkbox">Accounting</td>
        <td><input onclick="return false" type="checkbox" value="<%=obj_Variable_Order.getContactNumber()%>" name="contactNumber" onChange="this.form.submit()">QCG</td>
        <td><input onclick="return false" type="checkbox" value="<%=obj_Variable_Order.getUsername()%>" name="username" onChange="this.form.submit()">FDG</td>
        <td><a class="view" href="/IMS/ACCOUNT/Accounts1.jsp">Delete</a></td>
      </tr>
    </form>

<%

	}
	
}
	
%>
     

    </tbody>
  </table>
</div>
</div>
</body>
</html>
