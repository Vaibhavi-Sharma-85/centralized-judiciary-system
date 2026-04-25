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
								<h4 class="page-title">Add Lawyer</h4>
							</li>
							<li class="breadcrumb-item bcrumb-1"><a
								href="../../index.html"> <i class="fas fa-home"></i> Home
							</a></li>
							<li class="breadcrumb-item bcrumb-2"><a href="#"
								onClick="return false;">Manage Lawyer</a></li>
							<li class="breadcrumb-item active">Add Lawyer</li>
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
								<strong>Add Lawyer</strong>
							</h2>
						</div>
						<div class="body">
							<f:form action="saveLawyer" method="POST"
								modelAttribute="addLawyer" enctype="multipart/form-data"
								onsubmit="return addLawyer()">

								<div class="row clearfix">
									<div class="col-md-3">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">person</i>
											</span>
											<div class="form-line">
												<f:input path="name" class="form-control date"
													placeholder="Name" id="name"></f:input>
												<!--  <input type="text" class="form-control date"
													placeholder="Name">-->
											</div>
										</div>
									</div>

									<div class="col-md-3">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">email</i>
											</span>
											<div class="form-line">
												<f:input path="loginVO.username" class="form-control email"
													placeholder="Ex: example@example.com" id="email"></f:input>
												<!-- <input type="text" class="form-control email"
													placeholder="Ex: example@example.com"> -->
											</div>
										</div>
									</div>

									<div class="col-md-3">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">phone_iphone</i>
											</span>
											<div class="form-line">
												<f:input path="phoneNo"
													class="form-control mobile-phone-number"
													placeholder="Ex: +91 00000 00000" id="phoneNo"></f:input>
												<!-- 	<input type="text" class="form-control mobile-phone-number"
													placeholder="Ex: +91 00000 00000"> -->
											</div>
										</div>
									</div>

									<div class="col-md-3">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">phone</i>
											</span>
											<div class="form-line">
												<f:input path="officeNo"
													class="form-control mobile-phone-number"
													placeholder="Ex: (000) 000-000" id="officeNo"></f:input>
												<!--  <input type="text" class="form-control mobile-phone-number"
													placeholder="Ex: (000) 000-000">-->
											</div>
										</div>
									</div>
								</div>

								<div class="row clearfix">

									<div class="col-sm-3 mt-4 ml-4">
										<div class="form-group">

											<label> <f:radiobutton path="gender"
													class="with-gap gender" checked="checked" value="male" /> <span>Male</span>
											</label> <label class="ml-4"> <f:radiobutton path="gender"
													class="with-gap gender" value="female" /> <span>Female</span>
											</label>
										</div>
									</div>

									<div class="col-md-4 mt-3">
										<div class="input-group">
											<span class="input-group-addon"> <i
												class="material-icons">date_range</i>
											</span>
											<div class="form-line">
												<f:input path="dateOfBirth" id="dateOfBirth"
													class="form-control date" placeholder="Date Of Birth"></f:input>
												<!-- <input type="text" class="form-control date"
													placeholder="Date Of Birth">- -->
											</div>
										</div>
									</div>

									<div class="col-sm-4">
										<div class="file-field input-field">
											<div class="btn">
												<span>File</span> <input type="file" name="photo"
													id="lawyerPhoto">
											</div>
											<div class="file-path-wrapper">

												<input class="file-path validate" type="text"
													placeholder="Upload Your Photo">
											</div>
										</div>
									</div>

								</div>

								<div class="row clearfix">
									<div class="col-sm-6">
										<div class="file-field input-field">
											<div class="btn">
												<span>File</span> <input type="file"
													name="barcouncilercerti" id="barcouncilercerti">
											</div>
											<div class="file-path-wrapper">
												<input class="file-path validate" type="text"
													placeholder="Bar Counciler Certi /Licence ">
											</div>
										</div>
									</div>

									<div class="col-md-6 mt-3">
										<f:select class="browser-default" path="specializationVO.id"
											id="specailization">
											<option selected value="none">Select Specialization</option>
											<c:forEach items="${specializationList}" var="i">
												<option value="${i.id}">${i.specialization}</option>
											</c:forEach>
										</f:select>
									</div>
								</div>

								<div class="row clearfix">
									<div class="col-md-11">
										<select class="browser-default" id="Selectdegree">
											<option value="none" selected="selected">Select
												Degree</option>
											<c:forEach items="${degreeList}" var="i">
												<option value="${i.id}">${i.degree}</option>
											</c:forEach>
										</select>
									</div>

									<div class="col-md-1">
										<button type="button" onclick=" fn()"
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
											<th>Degree</th>
											<th>Certi.</th>
											<th>Action</th>
										</tr>
									</thead>
								</table>

								<button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>
							</f:form>
						</div>
					</div>
				</div>
			</div>
			<!-- #END# Basic Validation -->
		</div>
	</section>
	<!-- Plugins Js -->
	lawyerCustom.js
	<script
		src="<%=request.getContextPath()%>/adminResources/js/lawyerCustom.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/lawyer.js"></script>
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
		src="<%=request.getContextPath()%>/adminResources/js/toastDemo.js"></script>

	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/toaster.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/customValidation.js"></script>
	<!-- Demo Js -->
	<script type="text/javascript">
	
	 $("#phoneNo,#officeNo").on("keypress keyup blur",function (event) {    
         $(this).val($(this).val().replace(/[^\d].+/, ""));
          if ((event.which < 48 || event.which > 57))
          {
              event.preventDefault();
          }
      });
	 
	 </script>

	<script type="text/javascript">
	 
	 $(document).ready(function () {        
	     
	 $("#email").change(function () 
			 {    
	 var inputvalues = $(this).val();    
	 var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;    
	 if(!regex.test(inputvalues))
	 {    
	 return regex.test(inputvalues);    
	 }    
	 });    
	     
	  });            
		
	
	 </script>


</body>

</html>