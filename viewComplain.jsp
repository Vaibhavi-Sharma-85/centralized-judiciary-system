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
	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

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
								<h4 class="page-title">View Complain</h4>
							</li>
							<li class="breadcrumb-item bcrumb-1"><a
								href="../../index.html"> <i class="fas fa-home"></i> Home
							</a></li>
							<li class="breadcrumb-item bcrumb-2"><a href="#"
								onClick="return false;">Manage Complain</a></li>
							<li class="breadcrumb-item active">View Complain</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- Exportable Table -->
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>
								<strong>View Complain</strong>
							</h2>
						</div>
						<div class="body">
							<div class="table-responsive">
								<table id="tableExport"
									class="display table table-hover table-checkable order-column m-t-20 width-per-100">
									<thead>
										<tr>
											<th>No</th>
											<th>UserName</th>
											<th>Type</th>
											<th>Subject</th>
											<th>Description</th>
											<th>Complaint Date</th>
											<th>Complain Reply</th>
											<th>Reply Date</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach items="${complainList}" var="p" varStatus="j">
											<tr>
												<td>${j.count}</td>
												<td>${p.loginVO.username}</td>
												<td>
													<c:if test="${p.loginVO.role eq 'ROLE_LAWYER'}">
													<button class="btn btn-warning btn-lg btn-block waves-effect"
															type="button">Lawyer</button>
													</c:if>
													<c:if test="${p.loginVO.role eq 'ROLE_USER'}">
													<button class="btn btn-info btn-lg btn-block waves-effect"
															type="button">User</button>
													</c:if>
												</td>
												<td>${p.complainSubject}</td>
												<td>${p.complainDescription}</td>
												<td>${p.complainDate}</td>
												<td>${p.complainReplay}</td>
												<td>${p.complainReplayDate}</td>
												<td><c:if test="${p.complainStatus eq 'Pending'}">

														<a href="replyComplain?id=${p.id}">
															<button class="btn bg-blue btn-lg btn-block waves-effect"
																type="button">Reply</button>
														</a>
													</c:if> <c:if test="${p.complainStatus ne 'Pending'}">
														<button
															class="btn btn-success btn-lg btn-block waves-effect"
															type="button">Resolved</button>
													</c:if></td>

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
	<!-- Demo Js -->
</body>

</html>