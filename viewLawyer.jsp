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

<style>
#myImg {
	border-radius: 5px;
	cursor: pointer;
	transition: 0.3s;
}

#myImg:hover {
	opacity: 0.7;
}

/* The Modal (background) */
.mymodal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.9); /* Black w/ opacity */
}
/* Modal Content (image) */
.mymodal-content {
	margin: auto;
	display: block;
	width: 50%;
	hieght: 50% max-width: 700px;
}
/* Caption of Modal Image */
#caption {
	margin: auto;
	display: block;
	width: 80%;
	max-width: 700px;
	text-align: center;
	color: #ccc;
	padding: 10px 0;
	height: 150px;
}
/* Add Animation */
.mymodal-content, #caption {
	-webkit-animation-name: zoom;
	-webkit-animation-duration: 0.6s;
	animation-name: zoom;
	animation-duration: 0.6s;
}

@
-webkit-keyframes zoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes zoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}
/* The Close Button */
.close {
	position: absolute;
	top: 80px;
	right: 35px;
	color: #f1f1f1;
	font-size: 40px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #ff0a0a;
	text-decoration: none;
	cursor: pointer;
}
/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px) {
	.mymodal-content {
		width: 100%;
	}
}
</style>
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
								<h4 class="page-title">View Lawyer</h4>
							</li>
							<li class="breadcrumb-item bcrumb-1"><a
								href="../../index.html"> <i class="fas fa-home"></i> Home
							</a></li>
							<li class="breadcrumb-item bcrumb-2"><a href="#"
								onClick="return false;">Manage Lawyer</a></li>
							<li class="breadcrumb-item active">View Lawyer</li>
						</ul>
					</div>
				</div>
			</div>
			<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
			<!-- Exportable Table -->
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>
								<strong>View Lawyer</strong>
							</h2>
						</div>
						<div class="body">
							<div class="table-responsive">
								<table id="tableExport"
									class="display table table-hover table-checkable order-column m-t-20 width-per-100">
									<thead>
										<tr>
											<th>Id</th>
											<th>Name</th>
											<th>Email</th>
											<th>Phone No.</th>
											<th>Office No.</th>
											<th>Gender</th>
											<th>Date Of Birth</th>
											<th>Photo</th>
											<th>Bar Counciler Certi/Licence</th>
											<th>Specialization</th>
											<th>Degree</th>
											<th>Action</th>

										</tr>
									</thead>
									<tbody>

										<c:forEach items="${lawyerList}" var="p" varStatus="j">
											<tr>
												<td>${j.count}</td>
												<td>${p.name}</td>
												<td>${p.email}</td>
												<td>${p.phoneNo}</td>
												<td>${p.officeNo}</td>
												<td>${p.gender}</td>
												<td>${p.dateOfBirth}</td>
												<td><img id="myImg"
													src="<%=request.getContextPath()%>/documents/lawyer/${p.email}/${p.profileFileName}"
													alt="Profile Photo" style="width: 35px; height: 35px"
													onclick="fn(this)"></td>
												<td><img id="myImg"
													src="<%=request.getContextPath()%>/documents/lawyer/${p.email}/${p.barcouncilerFileName}"
													alt="Barcode Photo" style="width: 35px; height: 35px"
													onclick="fn(this)"></td>
												<td>${p.specializationVO.specialization}</td>
												<td><c:if test="${p.registrationStatus eq 'approved'}">
														<a href="viewLawyerDegreeDetails?id=${p.id}"
															target="_blank"><i class="fas fa-info"
															style="margin-left: 15px; font-size: 16px;"></i></a>
													</c:if></td>
												<td><c:if test="${p.registrationStatus eq 'approved'}">
														<div class="btn btn-success btn-lg btn-block waves-effect">APPROVED</div>
													</c:if> <c:if test="${p.registrationStatus ne 'approved'}">

														<a href="approveLawyer?id=${p.id}"><div
																class="btn btn-warning btn-lg btn-block waves-effect">Accept</div></a>
														<br>
														<a href="rejectLawyer?id=${p.id}"><div
																class="btn btn-danger btn-lg btn-block waves-effect">Reject</div></a>
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

			<!-- The Modal -->
			<div id="myModal" class="mymodal">
				<span class="close" onclick="fn1()">&times;</span> <img
					class="mymodal-content" id="img01">
				<div id="caption"></div>
			</div>

		</div>
	</section>
	<!-- Plugins Js -->

	<script>

var span = document.getElementsByClassName("close");
var modal = document.getElementById("myModal");

function fn(x)
{
	var img = document.getElementById("myImg");
	var modalImg = document.getElementById("img01");
	var captionText = document.getElementById("caption");

	modal.style.display = "block";
	modalImg.src = x.src;
	captionText.innerHTML = x.alt;
}
function fn1()
{ 
	modal.style.display = "none";
}

</script>
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