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
<link
	href="<%=request.getContextPath()%>/adminResources/css/form.min.css"
	rel="stylesheet">
<!-- You can choose a theme from css/styles instead of get all themes -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/all-themes.css"
	rel="stylesheet" />
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
								<h4 class="page-title">Add Case Information</h4>
							</li>
							<li class="breadcrumb-item bcrumb-1"><a
								href="../../index.html"> <i class="fas fa-home"></i> Home
							</a></li>
							<li class="breadcrumb-item bcrumb-2"><a href="#"
								onClick="return false;">Manage Case</a></li>
							<li class="breadcrumb-item active">Add Case Information</li>
						</ul>
					</div>
				</div>
			</div>
			<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
			<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
			<!-- Basic Validation -->

			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>
								<strong> Add Case Information</strong>
							</h2>
						</div>
						<div class="body">
							<f:form id="form_validation" method="post"
								enctype="multipart/form-data" modelAttribute="CaseVO"
								action="saveCase" onsubmit="return addcaseInformation()">

								<div class="row clearfix">

									<div class="col-sm-6">
										<div class="form-group form-float">
											<div class="form-line">
												<f:input class="form-control" path="caseNumber"
													id="caseNumber" />
												<label class="form-label">Case Number</label>
											</div>
										</div>
									</div>

									<div class="col-sm-6">
										<div class="form-group form-float">
											<div class="form-line">
												<f:input type="text" class="form-control" path="caseName"
													id="caseName" />
												<label class="form-label">Case Name</label>
											</div>
										</div>
									</div>
								</div>

								<div class="row clearfix">

									<div class="col-md-6">

										<f:select name="id" class="browser-default" id="casetype"
											path="caseTypeVO.id">
											<option selected value="none">Select Case Type</option>

											<c:forEach items="${caseList}" var="i">
												<option value="${i.id}">${i.caseName}</option>
											</c:forEach>
										</f:select>

									</div>

									<div class="col-md-6">
										<f:select name="id" class="browser-default" path="courtVO.id"
											id="courtname">
											<option selected value="none">Select Court Name</option>

											<c:forEach items="${courtList}" var="i">
												<option value="${i.id}">${i.courtName}</option>
											</c:forEach>
										</f:select>
									</div>
								</div>

								<div class="row clearfix">
									<div class="col-md-12">
										<div class="form-group form-float">
											<div class="form-line">
												<f:textarea name="description" cols="30" rows="5"
													class="form-control no-resize" id="caseDescription"
													path="caseDescription"></f:textarea>
												<label class="form-label">Description</label>
											</div>
										</div>
									</div>
								</div>

								<div class="row clearfix">
									<div class="col-md-5">
										<select name="id1" class="browser-default" id="caselawyer">
											<option value="none" selected="selected">Select Case
												Lawyer</option>
											<c:forEach items="${lawyerList}" var="i">
												<option value="${i.id}">${i.name}</option>
											</c:forEach>
											<select>
									</div>

									<div class="col-md-1">
										<button type="button" onclick="caselaw()"
											class="btn bg-deep-purple btn-circle waves-effect waves-circle waves-float">
											<i class="material-icons">add</i>
										</button>
									</div>

									<div class="col-md-5">
										<select name="id2" class="browser-default" id="defencelawyer">
											<option value="none" selected="selected">Select
												Defence Lawyer</option>
											<c:forEach items="${lawyerList}" var="i">
												<option value="${i.id}">${i.name}</option>
											</c:forEach>
										</select>
									</div>


									<div class="col-md-1">
										<button type="button" onclick="defencelaw()"
											class="btn bg-deep-purple btn-circle waves-effect waves-circle waves-float">
											<i class="material-icons">add</i>
										</button>
									</div>
								</div>

								<div class="row clearfix">
									<div class="col-md-5">
										<table class="table" id="caselawyertb" style="display: none;">
											<thead>
												<tr>
													<th>#</th>
													<th>Case Lawyer</th>
													<th>Action</th>
												</tr>
											</thead>
										</table>
									</div>

									<div class="col-md-5" style="margin-left: 100px">
										<table class="table" id="defencelawyertb"
											style="display: none;">
											<thead>
												<tr>
													<th>#</th>
													<th>Defence Lawyer</th>
													<th>Action</th>
												</tr>
											</thead>
										</table>
									</div>
								</div>

								<div class="row clearfix">
									<div class="col-md-12">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons"></i>
											</span>
											<div class="form-line">
												<f:input type="date" class="form-control date"
													placeholder="Case File Date       Ex: 30/07/2016"
													path="caseDate" id="caseDate" />
											</div>
										</div>
									</div>
								</div>

								<div class="row clearfix">
									<div class="col-sm-12">
										<form action="#">
											<div class="file-field input-field">
												<div class="btn">
													<span>File</span> <input type="file" name="casedocument"
														id="casedocument" />
												</div>
												<div class="file-path-wrapper">
													<input class="file-path validate" type="text"
														placeholder="Upload Case Document" />
												</div>
											</div>
										</form>
										<button class="btn btn-primary waves-effect" type="submit">Save</button>
									</div>
								</div>

							</f:form>
						</div>
					</div>
				</div>
			</div>
			<!-- #END# Basic Validation -->
		</div>
	</section>
	<!-- Plugins Js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- Custom Js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/admin.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/form.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/bootstrap-colorpicker"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/form-validation.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.multi-select.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/advanced-form-elements.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/toaster.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/customValidation.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/caseCustom.js"></script>
	<!-- Demo Js -->
</body>

</html>