<%@page import="state.com.User_State"%>
<%@page import="entitiesadmin.Admin_Central"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>State</title>

<script src="https://translate.google.com/translate_a/element.js?cb=loadGoogleTranslate"></script>
<script> 
function loadGoogleTranslate() {
    new google.translate.TranslateElement("google_element");
}
</script>
<div id="google_element"></div>
</head>
<body style="background-color: bisque;">
	<%@include file ="nav_bar.jsp" %>
	<div id="carouselExampleControls" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="photo/center/second.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="photo/center/first.jpg" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="photo/center/thrid.jpg" class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="next">
			<spa n class="carousel-control-next-icon" aria-hidden="true">
			</span> <span class="visually-hidden">Next</span>
		</button>
	</div>
	<div style="margin-top-25px"></div>
<% User_State us=new User_State(); %>
<% List<Admin_Central> post=us.getAllPostState(); %>
<div class="container " style="margin-top: 5%;">
  <div class="row">
  <div class="col-6">
 
	<%
	for (Admin_Central p : post) {
		int check = p.getId();
		if (check % 2 == 1) {
	%>

      <h2><%= p.getTitle() %></h2>
 	  <p><%= p.getPost() %>    </p>
		<t> Apply here<a href ="<%= p.getLink() %>"><%= p.getTitle() %>   </a> </t>


<div style="margin-top: 2%; "></div>    

	   <%
	   }} %>
	   	   </div>
		<div class="col-6">
		
	 	<%
	for (Admin_Central p : post) {
		int check = p.getId();
		if (check % 2 == 0) {
	  	%>
	  <h2><%= p.getTitle() %></h2>
 	  <p><%= p.getPost() %>    </p>
		<t> Apply here<a href ="<%= p.getLink() %>"> <%= p.getTitle() %>  </a> </t>

	 
	<div style="margin-top: 2%; "></div>     
	<% }
		} %>
</div> 
</div>
</div>
<div style="margin-top: 2%; "></div>    
<%@include file ="footer.jsp" %>
	
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>