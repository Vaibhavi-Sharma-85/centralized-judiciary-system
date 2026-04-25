<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>CAFJS</title>
<!-- Favicon-->
<link rel="icon" href="" type="image/x-icon">
<!-- Plugins Core Css -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/app.min.css"
	rel="stylesheet">
<!-- Custom Css -->
<link href="<%=request.getContextPath()%>/adminResources/css/style.css"
	rel="stylesheet">
<!-- You can choose a theme from css/styles instead of get all themes -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/all-themes.css"
	rel="stylesheet" />
</head>

<body class="light">
	<!-- Top Bar -->

	<jsp:include page="header.jsp"></jsp:include>

	<!-- #Top Bar -->
	<!-- Left Sidebar -->

	<jsp:include page="menu.jsp"></jsp:include>

	<!-- #END# Left Sidebar -->
	</div>
	<section class="content">
		<div class="container-fluid">
			<div class="block-header">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<ul class="breadcrumb breadcrumb-style ">
							<li class="breadcrumb-item">
								<h4 class="page-title">View Hiring Date</h4>
							</li>
							<li class="breadcrumb-item bcrumb-1"><a
								href="../../index.html"> <i class="fas fa-home"></i> Home
							</a></li>
							<li class="breadcrumb-item bcrumb-2"><a href="#"
								onClick="return false;">Manage Hiring </a></li>
							<li class="breadcrumb-item active">View Hiring Date</li>


						</ul>
					</div>
				</div>
			</div>
			<!-- Exportable Table -->


			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

					<div class="card">
						<div class="form-group form-float">
							<div class="form-line">
								<select id="caseId" class="form-control" onchange="getHiringDetails()">
									<option selected value="none">Select Case</option>
									<c:forEach items="${caseList}" var="i">
										<option value="${i.id}">${i.caseNumber}</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>


					<div class="card">
						<div class="header">
							<h2>Hiring Details</h2>
						</div>
						<div class="body">
							<div class="table-responsive">
								<table id="tableExport"
									class="display table table-hover table-checkable order-column m-t-20 width-per-100">
									<thead>
										<tr>
											<th>ID</th>
											<th>Court Name</th>
											<th>Case Number</th>
											<th>Hiring Date</th>
											<th>Case Description</th>
											<th>Case Document Name</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody id="tableBody">
										<c:forEach items="${hiringList}" var="i" varStatus="j">
											<tr>
												<td>${j.count}</td>
												<td>${i.courtVO.courtName}</td>
												<td>${i.caseVO.caseNumber}</td>
												<td>${i.hiringDate}</td>
												<td>${i.caseDescription}</td>
												<td><a href="viewHiringCaseDocument?id=${i.id}"
													target="_blank">View docs</a></td>
												<td> <a href="deleteHiring?id=${i.id}"><i class=" fa fa-trash "
														style="margin-left: 15px; font-size: 16px; color: #e56767;"></i></a>
												</td>
											</tr>
										</c:forEach>
									</tbody>

								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- #END# Exportable Table -->
		</div>
	</section>
	<!-- Plugins Js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/table.min.js"></script>
	<!-- Custom Js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/admin.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/dataTables.buttons.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/buttons.flash.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/export-tables/jszip.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/pdfmake.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/export-tables/vfs_fonts.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/buttons.html5.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/buttons.print.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery-datatable.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/hiring.js"></script>
	<!-- Demo Js -->
</body>

</html>