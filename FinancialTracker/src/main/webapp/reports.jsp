<!DOCTYPE html>
<html lang="en">
<head>
<title>Financial Tracker-Reports</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>

<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="description"
	content="Portal - Bootstrap 5 Admin Dashboard Template For Developers">
<meta name="author" content="Xiaoying Riley at 3rd Wave Media">
<link rel="shortcut icon" href="favicon.ico">

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
<link rel="shortcut icon" href="assets/images/Rupee Logo.png">

</head>

<body class="app">
	<%@ include file="dashboard.jsp"%>
	<div class="app-wrapper">

		<div class="app-content pt-3 p-md-3 p-lg-4">
			<div class="container-xl">
				<div class="row g-3 mb-4 align-items-center justify-content-between">
					<div class="col-auto">
						<h1 class="app-page-title mb-0">All Reports</h1>
					</div>


					<div class="row g-4">
						<div class="col-6 col-md-4 col-xl-3 col-xxl-2">
							<div class="app-card app-card-doc shadow-sm">
								<div class="app-card-thumb-holder p-3">
									<span class="icon-holder"> <i
										class="fas fa-file-pdf pdf-file"></i>
									</span> <a class="app-card-link-mask" href="incomereport.jsp"></a>
								</div>
								<div class="app-card-body p-3 has-card-actions">

									<h4 class="app-doc-title mb-0 text-center">
										<a href="incomereport.jsp">Income Report</a>
									</h4>
									<!--//app-doc-meta-->

								</div>
								<!--//app-card-body-->

							</div>
							<!--//app-card-->
						</div>
						<!--//col-->
						<div class="col-6 col-md-4 col-xl-3 col-xxl-2">
							<div class="app-card app-card-doc shadow-sm">
								<div class="app-card-thumb-holder p-3">
									<span class="icon-holder"> <i
										class="fas fa-file-pdf pdf-file"></i>
									</span> <a class="app-card-link-mask" href="expensereport.jsp"></a>
								</div>
								<div class="app-card-body p-3 has-card-actions">

									<h4 class="app-doc-title text-center mb-0">
										<a href="expensereport.jsp">Expense Report</a>
									</h4>
									
									<!--//app-doc-meta-->
								</div>
								<!--//app-card-body-->
							</div>
							<!--//app-card-->
						</div>
						<!--//col-->
						<div class="col-6 col-md-4 col-xl-3 col-xxl-2">
							<div class="app-card app-card-doc shadow-sm">
								<div class="app-card-thumb-holder p-3">
									<span class="icon-holder"> <i
										class="fas fa-file-pdf pdf-file"></i>
									</span> <a class="app-card-link-mask" href="investmentreport.jsp"></a>
								</div>
								<div class="app-card-body p-3 has-card-actions">

									<h4 class="app-doc-title text-center mb-0">
										<a href="investmentreport.jsp">Investment Report</a>
									</h4>
									
									<!--//app-doc-meta-->

								</div>
								<!--//app-card-body-->

							</div>
							<!--//app-card-->
						</div>
						<!--//col-->
						<div class="col-6 col-md-4 col-xl-3 col-xxl-2">
							<div class="app-card app-card-doc shadow-sm">
								<div class="app-card-thumb-holder p-3">
									<span class="icon-holder"> <i
										class="fas fa-file-pdf pdf-file"></i>
									</span> <a class="app-card-link-mask" href="loanreport.jsp"></a>
								</div>
								<div class="app-card-body p-3 has-card-actions">

									<h4 class="app-doc-title text-center mb-0">
										<a href="loanreport.jsp">Loan Report</a>
									</h4>
									
									<!--//app-doc-meta-->

								</div>
								<!--//app-card-body-->

							</div>
							<!--//app-card-->
						</div>
						<!--//col-->
						<div class="col-6 col-md-4 col-xl-3 col-xxl-2">
							<div class="app-card app-card-doc shadow-sm">
								<div class="app-card-thumb-holder p-3">
									<span class="icon-holder"> <i
										class="fas fa-file-pdf pdf-file"></i>
									</span> <a class="app-card-link-mask" href="sipreport.jsp"></a>
								</div>
								<div class="app-card-body p-3 has-card-actions">

									<h4 class="app-doc-title text-center mb-0">
										<a href="sipreport.jsp">SIP Report</a>
									</h4>
									
									<!--//app-doc-meta-->

								</div>
								<!--//app-card-body-->

							</div>
							<!--//app-card-->
						</div>
						<!--//col-->
						<div class="col-6 col-md-4 col-xl-3 col-xxl-2">
							<div class="app-card app-card-doc shadow-sm">
								<div class="app-card-thumb-holder p-3">
									<span class="icon-holder"> <i
										class="fas fa-file-pdf pdf-file"></i>
									</span> <a class="app-card-link-mask" href="emireport.jsp"></a>
								</div>
								<div class="app-card-body p-3 has-card-actions">

									<h4 class="app-doc-title text-center mb-0">
										<a href="emireport.jsp">EMI Report</a>
									</h4>
									
									<!--//app-doc-meta-->

								</div>
								<!--//app-card-body-->

							</div>
							<!--//app-card-->
						</div>
						<!--//col-->

						
					</div>
					<!--//container-fluid-->
				</div>
				<!--//app-content-->

				<footer class="app-footer">
			<div class="container text-center py-3">
				<!--/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */-->
				<small class="copyright">2023 Financial Tracker. All Rights Reserved</small>

			</div>
		</footer>
				<!--//app-footer-->

			</div>
			<!--//app-wrapper-->



			<!-- Javascript -->
			<script src="assets/plugins/popper.min.js"></script>
			<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>

			<!-- Include jsPDF library -->

			<!-- Page Specific JS -->
			<script src="assets/js/app.js"></script>


			<script>
				document
						.addEventListener(
								"DOMContentLoaded",
								function() {
									function generatePDF() {
										// Check if jsPDF is defined
										if (typeof jsPDF !== 'undefined') {
											// Create a new jsPDF instance
											const pdf = new jsPDF();

											// Add content to the PDF
											pdf.text('Income Report', 20, 20);
											pdf
													.text(
															'Date: '
																	+ new Date()
																			.toLocaleDateString(),
															20, 30);
											pdf.text('Amount: $1000', 20, 40);

											// Save the PDF
											pdf.save('income_report.pdf');
										} else {
											console
													.error('jsPDF is not defined. Make sure it is loaded.');
										}
									}
								});
			</script>
</body>
</html>

