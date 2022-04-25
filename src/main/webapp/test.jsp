<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="other.*"%>
<%@page import="entitiesadmin.*"%>
<%@page import="java.util.List;"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	PostDaocentral  pd=new PostDaocentral ();
	User_Central d = new User_Central();
	List<Admin_Central> post =pd.getAllCategories();
	%>
	<%
	for (Admin_Central p : post) {
	%>
	<h3><%= p.getTitle() %></h3>
	<p><%=   p.getPost() %></p>
	<a><%=   p.getLink() %></a>
	<%
	}
	%>
</body>
</html>