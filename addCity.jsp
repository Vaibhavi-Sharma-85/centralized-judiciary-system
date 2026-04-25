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
								<h4 class="page-title">Add City</h4>
							</li>
							<li class="breadcrumb-item bcrumb-1"><a
								href="../../index.html"> <i class="fas fa-home"></i> Home
							</a></li>
							<li class="breadcrumb-item bcrumb-2"><a href="#"
								onClick="return false;">Manage City </a></li>
							<li class="breadcrumb-item active">Add City</li>
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
								<strong>Add City</strong>
							</h2>
							<ul class="header-dropdown m-r--5">
							</ul>

						</div>
						<div class="body">
							<f:form class="" action="saveCity" modelAttribute="CityVO"
								method="post" onsubmit="return addCity()">

								<div class="form-group form-float">
									<div class="form-line">
										<f:select name="id" class="form-control" path="stateVO.id"
											id="statename">
											<option selected value="none">Select State</option>
											<c:forEach items="${stateList}" var="i">
												<option value="${i.id}">${i.stateName}</option>
											</c:forEach>
										</f:select>
									</div>
								</div>

								<div class="form-group form-float">
									<div class="form-line">
										<f:input path="cityName" class="form-control" name="cityName"
											id="cityName"
											onkeypress='return event.charCode>=65 && event.charCode<=90 || event.charCode>=97 && event.charCode<=122' />
										<label class="form-label">City Name</label> <span
											style="color: red; display: none" id="scn1">Enter City
											Name</span> <span style="color: red; display: none" id="scn2">Enter
											Valid City Name</span>


									</div>
								</div>

								<f:hidden path="id" />
								<f:hidden path="stateVO.id" />

								<div class="form-group form-float">
									<div class="form-line">
										<f:textarea path="cityDescription" name="cityDescription" id="cityDescription"
											cols="30" rows="5" class="form-control no-resize"></f:textarea>
										<label class="form-label">City Description</label>
									</div>
								</div>


								<button class="btn btn-primary waves-effect" type="submit">Save</button>
								
								</f:form>
						</div>

					</div>

					
				</div>
			</div>
		</div>
	</section>
	<!-- Plugins Js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<!-- Custom Js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/admin.js"></script>
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