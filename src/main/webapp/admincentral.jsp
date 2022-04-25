<%@page import="other.*"%>
<%@page import="entitiesadmin.*"%>
<%@page import="java.util.List"%>
<%@page import="other.User_Central"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>

	<!-- modal -->
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-bs-toggle="modal"
		data-bs-target="#exampleModal">Add</button>

	<!-- Modal -->

	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">schemes</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="CentralServlet" method="post" id="add-post-for">
						<div class="form-group">

							<input name="pTitle" type="text" placeholder="Enter post Title"
								class="form-control" />
						</div>
						<div class="form-group">
							<textarea name="pcontent" class="form-control"
								style="height: 300px;" placeholder="Enter you content"></textarea>

						</div>
						<div class="form-group">
							<textarea name="link" class="form-control" style="height: 100px;"
								placeholder="Enter you link(if any)"></textarea>

						</div>
						<div class="container">
							<button type="submit" class="btn btn-outline-primary"
								name="submit" value="add">SAVE</button>


						</div>
					</form>


				</div>

			</div>
		</div>
	</div>

	<!-- end modal -->
	<!-- Button trigger modal -->
	<!-- update -->
	<button type="button" class="btn btn-primary" data-bs-toggle="modal"
		data-bs-target="#exampleModal1">UPDATE</button>

	<!-- Modal -->
	<!-- java -->
	<%
	User_Central d = new User_Central();
	%>
	<%
	List<Admin_Central> post = d.getAllPost();
	%>

<% Admin_Central asc1;
  Object obj= request.getAttribute("central");
  asc1=(Admin_Central) obj;
//String titel=asc1.getTitle();
System.out.println(asc1);

%>
	<div class="modal fade" id="exampleModal1" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">

					<h5 class="modal-title" id="exampleModalLabel">Goverment
						Schemes</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">

					<form action="EditServlet" method="post">
					<select name ="updateid" id="id">
						<%
						for (Admin_Central p : post) {
						%>



						<option   value=<%=p.getId()%>><%=p.getId()%></option>
						<%
						}
						%>

					</select>
				
					<div class="form-group">

						<input name="pTitle" type="text" placeholder="Enter post Title" class="form-control"  />
					</div>
					<div class="form-group">

						<input name="pPost" type="text" placeholder="Enter post contanct" 
							class="form-control" />
					</div>
					<div class="form-group">

						<input name="plink" type="text" placeholder="Enter post link"
							class="form-control" />
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-outline-primary" name="submit"
						value="sendid">Edit</button>
							<button type="submit" class="btn btn-outline-primary" name="submit"
						value="sendid">Edit</button>
					<button type="submit" class="btn btn-outline-primary" name="submit"
						value="final">SAVE</button>
				</div>
				</form>
			</div>

		</div>
	</div>

	<!-- end -->

<!-- delete -->
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal2">
  Delete 
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       
					<form action="EditServlet" method="post">
					<select name ="updateid" id="id">
						<%
						for (Admin_Central p : post) {
						%>
						<option   value=<%=p.getId()%>><%=p.getId()%></option>
						<%
						}
						%>

					</select>
     	
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
       		<button type="submit" class="btn btn-outline-primary" name="submit"
						value="del">Delete</button>
      </div>
      </form>
    </div>
    			
  </div>
</div>













	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- now add post js -->
	<script type="text/javascript">

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">	
	$(document ).ready(function (e){

$("#exampleModal").on("submit",function (event){
	event.prevenDefault();
	let form =new FormData(this);
	$.ajax({
		url :"CentralServlet",
		type: "POST",
		data: form,
		success :function (data,textStatus,jqXHR){
		console.log	(data);
		if(data.trin() =='done'){
					swal("Good job!", "Saved successfully!", "success");
					}	else{
								swal("Error!", "Someting went worng!", "Error");
					
					
					}
		},
		erorr: function (jqXHR,textStatus,errorThrown){
				swal("Error!", "Someting went worng!", "Error");	
		},
		processData:false,
		ContentType:false
	)}
})




}) 

</script>

</body>
</html>