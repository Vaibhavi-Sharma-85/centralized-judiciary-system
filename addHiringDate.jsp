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
<link href="<%=request.getContextPath()%>/adminResources/css/app.min.css" rel="stylesheet">
<!-- Custom Css -->
<link href="<%=request.getContextPath()%>/adminResources/css/style.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/adminResources/css/form.min.css" rel="stylesheet">
<!-- You can choose a theme from css/styles instead of get all themes -->
<link href="<%=request.getContextPath()%>/adminResources/css/all-themes.css" rel="stylesheet" />

<link
	href="<%=request.getContextPath()%>/adminResources/css/jquery.toast.min.css"
	rel="stylesheet" />
</head>

<body class="light">
	<!-- Top Bar -->

	<jsp:include page="header.jsp"></jsp:include>

	<!-- #Top Bar -->
	<!-- Left Sidebar -->

	<jsp:include page="menu.jsp"></jsp:include>

	<!-- #END# Left Sidebar -->
	<section class="content">
		<div class="container-fluid">
			<div class="block-header">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<ul class="breadcrumb breadcrumb-style ">
							<li class="breadcrumb-item">
								<h4 class="page-title">Add Hiring Date</h4>
							</li>
							<li class="breadcrumb-item bcrumb-1"><a
								href="../../index.html"> <i class="fas fa-home"></i> Home
							</a></li>
							<li class="breadcrumb-item bcrumb-2"><a href="#"
								onClick="return false;">Manage Hiring </a></li>
							<li class="breadcrumb-item active">Add Hiring Date</li>
						</ul>
					</div>
				</div>
			</div>
			<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
			<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
			<!-- Basic Validation -->

			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>
								<strong> Add Hiring Date</strong>
							</h2>
						</div>
						<div class="body">
							<f:form id="form_validation" method="POST" modelAttribute="HiringVO" action="saveHiringDate" enctype="multipart/form-data"
						onsubmit="return addhiringdate()">

								<div class="row clearfix">


									<div class="col-md-12">
										<f:select class="browser-default" path="CourtVO.id" id="courtname">
										<option selected value="none">Select Court Name</option>		
											<c:forEach items="${courtList}" var="i">
										<option value="${i.id}">${i.courtName}</option>
										</c:forEach>
										</f:select>
									</div>

									<div class="col-md-12">
										<f:select class="browser-default" path="caseVO.id" id="casenumber">
										<option selected value="none">Select Case Number</option>	
												
												<c:forEach items="${caseList}" var="i">
										<f:option value="${i.id}">${i.caseNumber}</f:option>
										</c:forEach>
										</f:select>
									</div>

									<div class="col-md-12">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons"></i>
											</span>
											<div class="form-line">
												<f:input type="date" class="form-control date"
													placeholder="Enter Hiring Date       Ex: 30/07/2016" path="hiringDate" id="hiringDate"/>
											</div>
										</div>
									</div>

									<div class="col-md-12">
										<div class="form-group form-float">
											<div class="form-line">
												<f:textarea name="description" cols="30" rows="5"
													class="form-control no-resize"  path="caseDescription" id="caseDescription"></f:textarea>
												<label class="form-label"> Case Description</label>
											</div>
										</div>
									</div>
								</div>

								<div class="row clearfix">
									<div class="col-sm-11">
										<div class="form-group form-float">
											<div class="form-line">
												<input type="text" class="form-control" name="name"
													id="casedoc"> <label class="form-label">Case
													Document Name</label>
											</div>
										</div>
									</div>

									<div class="col-md-1">
										<button type="button" onclick="fn()"
											class="btn bg-deep-purple btn-circle waves-effect waves-circle waves-float"
											onclick="fn()">
											<i class="material-icons">add</i>
										</button>
									</div>
								</div>

								<table class="table" id="t1" style="display: none;">
									<thead>
										<tr>
											<th>#</th>
											<th>Document Name</th>
											<th>Documents</th>
											<th>Action</th>
										</tr>
									</thead>
								</table>

								<button class="btn btn-primary waves-effect" type="submit">Save</button>
							</f:form>
						</div>
					</div>
				</div>
			</div>
			<!-- #END# Basic Validation -->
		</div>
	</section>
	<!-- Plugins Js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/hiringCustom.js"></script>
	
	<script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- Custom Js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/admin.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/form.min.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/bootstrap-colorpicker"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/form-validation.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.multi-select.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/advanced-form-elements.js"></script>
	
	<script
		src="<%=request.getContextPath()%>/adminResources/js/form-validation.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/toaster.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/customValidation.js "></script>
	<!-- Demo Js -->
</body>

</html>