<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Financial Tracker-Investment Report</title>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Portal - Bootstrap 5 Admin Dashboard Template For Developers">
<meta name="author" content="Xiaoying Riley at 3rd Wave Media">
<link rel="shortcut icon" href="assets/images/Rupee Logo.png">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous">
	
</script>
<!-- FontAwesome JS-->
<script defer src="assets/plugins/fontawesome/js/all.min.js"></script>
<!-- App CSS -->
<link id="theme-style" rel="stylesheet" href="assets/css/portal.css">
</head>
<body>
<%@ include file="dashboard.jsp"%>
<div class="app-wrapper">
					<form name="expensereport" action="view_report.jsp" method="post">

		<div class="d-flex justify-content-center gap-4 mt-5">
				<div class="d-flex justify-content-center mt-5">
					<input type="hidden" name="UserID" value="<%= session.getAttribute("UserID") %>">
					<button  type="submit" name="submit" value="Total Investment" class="btn btn-success text-light">View Full Report</button>
				</div>
				<div class="d-flex justify-content-center mt-5">
					<button  type="button" class="btn btn-success text-light"
						data-bs-toggle="modal" data-bs-target="#exampleModal">Custom Report</button>
				</div>
		</div>
		

		<!-- Button trigger modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">

						<h1 class="modal-title fs-1" id="exampleModalLabel">View Custom Report</h1>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
						<div class="modal-body">
							<div class="d-flex justify-content-between">
								<label>From Date</label> <input type="date" id="dateid" name="from-date">
							</div>
							<div class="d-flex justify-content-between mt-3">
								<label>To Date</label> <input type="date" id="dateid" name="to-date">
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">Close</button>
							<button type="submit" name="submit" value="Total Datewise Investment" class="btn btn-success text-light">View</button>						</div>
				</div>
			</div>
		</div>
							</form>
		
		<footer class="app-footer">
			<div class="container text-center py-3">
				<small class="copyright">2023 Financial Tracker. All Rights Reserved</small>
			</div>
		</footer>
	</div>
</body>
</html>