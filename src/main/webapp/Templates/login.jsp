<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ARS | Login</title>
<style>
body {
	background: rgb(0, 0, 0);
	background: linear-gradient(90deg, rgba(0, 0, 0, 1) 0%, rgba(0, 0, 0, 1)
		0%, rgba(255, 255, 255, 1) 0%, rgba(196, 222, 252, 1) 100%);
}

img {
	max-width: 600px;
	max-height: 750px;
	margin: 50px;
	mix-blend-mode: darken;
}
</style>
<%@include file="head.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row justify-content-center mt-4">
			<div class="col-md-6">
				<div class="card" style="width: 35rem; margin-top: 5rem;">
					<div class="card-header text-center">
						<h2>Login Here</h2>
					</div>
					<div class="card-body">
						<c:set var="msgString" value="${message}" />
						<c:if test="${not empty msgString}">
							<div class="alert alert-warning alert-dismissible fade show"
								role="alert">
								${message}
								<button type="button" class="btn-close" data-bs-dismiss="alert"
									aria-label="Close"></button>
							</div>
						</c:if>
						<form action="loginUser">
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">User
									Name</label> <input type="text" class="form-control"
									id="exampleInputEmail1" name="username" autocomplete="off">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" name="password" class="form-control"
									id="exampleInputPassword1">
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Submit</button>
								<button type="submit" class="btn btn-primary">Reset</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>