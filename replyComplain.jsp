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

	<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

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
								<h4 class="page-title">Reply Complain</h4>
							</li>
							<li class="breadcrumb-item bcrumb-1"><a
								href="../../index.html"> <i class="fas fa-home"></i> Home
							</a></li>
							<li class="breadcrumb-item bcrumb-2"><a href="#"
								onClick="return false;">Manage Complain</a></li>
							<li class="breadcrumb-item active">Reply Complain</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- Basic Validation -->
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>
								<strong>Reply Complain</strong>
							</h2>
							<ul class="header-dropdown m-r--5">
						</div>
						<div class="body">
							<f:form id="form_validation" method="POST"
								action="responseComplain" modelAttribute="viewComplain">

								<div class="form-group form-float">
									<div class="form-line">
										<f:input path="complainSubject" readonly="true"
											class="form-control" name="name" />
										<label class="form-label">Subject</label>
									</div>
								</div>

								<div class="form-group form-float">
									<div class="form-line">
										<f:textarea path="complainDescription" cols="30" rows="5"
											readonly="true" class="form-control no-resize"></f:textarea>
										<label class="form-label"> Description</label>
									</div>
								</div>

								<div class="form-group form-float">
									<div class="form-line">
										<f:textarea path="complainReplay" cols="30" rows="5"
											class="form-control no-resize"></f:textarea>
										<label class="form-label"> Reply</label>
									</div>
								</div>

								<f:hidden path="id" />
								<f:hidden path="complainDate" />
								<f:hidden path="complainStatus" />
								<f:hidden path="loginVO.loginId" />
								<f:hidden path="status" />

								<button class="btn btn-primary waves-effect" type="submit">Save</button>

							</f:form>
						</div>

					</div>


				</div>
			</div>
		</div>
		</div>
		<!-- #END# Basic Validation -->

		<!-- #END# Advanced Validation -->
		<!-- Validation Stats -->

		</div>


	</section>
	<!-- Plugins Js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- Custom Js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/admin.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/form-validation.js"></script>
	<!-- Demo Js -->
</body>

</html>