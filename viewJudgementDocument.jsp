<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>CAFJS</title>
<!-- Favicon-->
<link rel="icon"
	href="<%=request.getContextPath()%>/adminResources/images/favicon/images/favicon.ico"
	type="image/x-icon">
<!-- Plugins Core Css -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/app.min.css"
	rel="stylesheet">
<!-- Light Gallery Css -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/lightgallery.css"
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
	<!-- Page Loader -->
	<div class="page-loader-wrapper">
		<div class="loader">
			<div class="m-t-30">
				<img class="loading-img-spin"
					src="<%=request.getContextPath()%>/adminResources/image/loading.png"
					alt="admin">
			</div>
			<p>Please wait...</p>
		</div>
	</div>
	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
	<!-- #END# Page Loader -->
	<!-- Overlay For Sidebars -->
	<div class="overlay"></div>
	<!-- #END# Overlay For Sidebars -->
	<!-- Top Bar -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- #Top Bar -->
	<!-- Left Sidebar -->
	<jsp:include page="menu.jsp"></jsp:include>
	<!-- #END# Left Sidebar -->
	<section class="content">
		<div class="container-fluid">
			<!-- Image Gallery -->
			<div class="block-header">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<ul class="breadcrumb breadcrumb-style ">
							<li class="breadcrumb-item">
								<h4 class="page-title">Judgement Document</h4>
							</li>
							<li class="breadcrumb-item bcrumb-1"><a
								href="../../index.html"> <i class="fas fa-home"></i> Home
							</a></li>
							<li class="breadcrumb-item bcrumb-2"><a href="#"
								onClick="return false;">View Judgement Info</a></li>
							<li class="breadcrumb-item active">Judgement Document</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>
								<strong>${judgementDocumentsVO.judgementInfoVO.caseVO.caseName} (${judgementDocumentsVO.judgementInfoVO.caseVO.caseNumber}) : Document</strong>
							</h2>
						</div>

						<div class="body">
							
								<table
									class="display table table-hover border table-checkable order-column m-t-20 width-per-100">
									<thead>
										<tr>
											<th>No</th>
											<th>Document</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${judgementInfoList}" var="i" varStatus="j">
										<tr>
											<td>${j.count}</td>
											<td><a
												href="<%=request.getContextPath()%>/documents/judgementdocs/${i.judgementInfoVO.caseVO.caseNumber}/${i.documentFileName}"
												target="_blank"> ${i.documentName} </a></td>
										</tr>
									</c:forEach>
									</tbody>
								</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Plugins Js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/lightgallery-all.js"></script>
	<!-- Custom Js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/image-gallery.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/admin.js"></script>
	<!-- Demo Js -->
</body>

</html>