<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="app" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring Form Page</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
	integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
	crossorigin="anonymous"></script>
	
<style type="text/css">
	
	.radios > span > input {
		margin-right: 5px;
		margin-left: 5px;
	}
	
	.radios > input {
		margin-right: 5px;
	}
		
</style>

</head>
<body>
	
	<div class="container pt-4">
		<h1>Form Page</h1>
	</div>
	
	<div class="container mt-4">
		<sform:form modelAttribute="student">
			<div class="row ">
				<div class="col">
					<sform:label path="name" >Name</sform:label>
					<sform:input path="name" class="form-control" type="text" placeholder="Enter Student Name"/>				
				</div>

				<div class="col">
					<sform:label path="phone" >Phone</sform:label>
					<sform:input path="phone" class="form-control" type="tel" placeholder="Enter Phone Number"/>				
				</div>				

				<div class="col">
					<sform:label path="email" >Email</sform:label>
					<sform:input path="email" class="form-control" type="email" placeholder="Enter email address"/>				
				</div>				
			</div>
			
			<div class="row mt-4">
				<div class="col">
					<sform:label path="Gender" >Gender</sform:label>
					<!-- Must same value of path and dto varibales or set value  -->
					<div class="radios-box radios">
						<sform:radiobuttons path="Gender" items="${gender}" />
					</div>
				</div>
				
				<div class="col">
					<sform:label path="courses">Courses</sform:label>
					<div class="radios">
						<sform:checkboxes  items="${courses}" path="courses"/>
					</div>
				</div>
				
				<div class="col">
					<sform:label path="date">Registration Date</sform:label>
					<div class="">
					<!--   	<sform:checkbox path="courses" value="true"/>
					 	Agree Privacy
					 -->
					 <sform:input class="form-control" path="date" type="date"/>
					</div>
				</div>
			</div>	

			<div class="row mt-4 ">
				<div class="col">
					<sform:label path="remark">Remark</sform:label>
					<sform:textarea class="form-control" path="remark" placeholder="Enter remark"/>
				</div>					
			</div>				
				
				<div class="row mt-4 ">
					<div class="col">
						<input type="submit" class="btn btn-primary" value="Submit">
					</div>					
				</div>				
			
		</sform:form>
	</div>
	
	<div class="container mt-4">
		<div class="row">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Name</th>
						<th>Phone</th>
						<th>Email</th>
						<th>Date</th>
						<th>Gender</th>
						<th>Courses</th>
						<th>Remark</th>
					</tr>
				</thead>
				
				<tbody>
					<app:forEach var="data" items="${list}">
						<tr>
							<td>${data.getName()}</td>
							<td>${data.getPhone()}</td>
							<td>${data.getEmail()}</td>
							<td>${data.getDate()}</td>
							<td>${data.getGender()}</td>
							<td>${data.getCourses()}</td>
							<td>${data.getRemark()}</td>						
						</tr>
					</app:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
</body>
</html>