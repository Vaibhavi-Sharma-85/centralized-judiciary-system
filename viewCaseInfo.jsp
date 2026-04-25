<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
								<h4 class="page-title">View Case Information</h4>
							</li>
							<li class="breadcrumb-item bcrumb-1"><a
								href="../../index.html"> <i class="fas fa-home"></i> Home
							</a></li>
							<li class="breadcrumb-item bcrumb-2"><a href="#"
								onClick="return false;">Manage Case </a></li>
							<li class="breadcrumb-item active">View Case Information</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- Exportable Table -->
			<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>
								<strong>View Case Information</strong>
							</h2>
						</div>
						<div class="body">
							<div class="table-responsive">
								<table id="tableExport"
									class="display table table-hover table-checkable order-column m-t-20 width-per-100">
									<thead>
										<tr>
											<th>ID</th>
											<th>Case Number</th>
											<th>Case Name</th>
											<th>Case Type</th>
											<th>Court Name</th>
											<th>Case Description</th>
											<th>CaseFile Date</th>
											<th>Case Document</th>
											<th>Action</th>

										</tr>
									</thead>

									<tbody>
										<c:forEach items="${caseList}" var="i" varStatus="j">
											<tr>
												<td>${j.count}</td>
												<td>${i.caseNumber}</td>
												<td>${i.caseName}</td>
												<td>${i.caseTypeVO.caseName}</td>
												<td>${i.courtVO.courtName}</td>
												<td>${i.caseDescription}</td>
												<td>${i.caseDate}</td>
													<td>
													<a href="<%=request.getContextPath()%>/documents/caseInfo/${i.caseFileName}" target="blank">view</a>
												</td>
												<td>	
												 <a	href="deleteCaseInfo?id=${i.id}"><i class=" fa fa-trash "
														style="margin-left: 15px; font-size: 16px; color: #e56767;"></i></a>

													<i data-toggle="modal" data-target="#exampleModal-4"
													onclick="viewLawyerDetails(${i.id})" class="fas fa-info" title="view lawyer details"
													style="margin-left: 15px; font-size: 16px; cursor: pointer;"></i></td>
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



	<!-- ####################### Modal Start ########################3 -->

	<div class="modal fade" id="exampleModal-4" tabindex="-1" role="dialog"
		aria-labelledby="ModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="ModalLabel">Lawyer Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>

						<div class="row">
							<div class="col-6">
								<h4>Prosecution</h4>
								<div class="form-group m-0" id="prosecutionDetails"></div>
							</div>
							<div class="col-6">
								<h4>Defence</h4>
								<div class="form-group m-0" id="defenceDetails"></div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- ####################### Modal End ########################3 -->



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
		src="<%=request.getContextPath()%>/adminResources/js/custom/lawyer.js"></script>
	<!-- Demo Js -->
</body>

</html>