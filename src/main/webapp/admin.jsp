<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<style >
body{
background-image: url('loginphoto.jpg');
background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover; 
}
li{
display :block;
float :left;
/* background :blue; */
color :white;
margin-right:10px;

}
ul{
width:100%;
/* background:red; */
height: 20px;
text-align : center;


}

</style>
</head>
<body >


     

<ul>
 <div class="container">
  <div class="row">
 <div class="col">

<!-- <li class ="nav-item" > -->

<a class="nav-link" href="admincentral.jsp">Central change</a>
</li>
</div>
<!-- <br><br> -->
<div class="col">
<!-- <li class="nav-item"> -->
<a class="nav-link" href="adminstate.jsp">State change</a>
</li>
</div>
<div class="col">
<!-- <li class="nav-item"> -->
<a class="nav-link" href="/">E-commerce change</a>
</li>
</div>
</div>
</div>
</ul>

</body>
</html>