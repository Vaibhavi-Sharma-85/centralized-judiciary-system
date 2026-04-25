<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Trust</title>
<!-- FAVICON -->
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />
<!-- Bootstrap -->
<link
	href="<%=request.getContextPath()%>/userResources/css/bootstrap.min.css"
	rel="stylesheet">
<!-- FONT AWESOME -->
<link
	href="<%=request.getContextPath()%>/userResources/css/font-awesome.min.css"
	rel="stylesheet">
<!-- ICON STROKE -->
<link
	href="<%=request.getContextPath()%>/userResources/css/icon-stroke.css"
	rel="stylesheet">
<!-- MENU -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/menuzord.css">
<!-- RS5.0 Main Stylesheet -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/settings.css">
<!-- RS5.0 Layers and Navigation Styles -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/layers.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/navigation.css">
<!-- Important Owl stylesheet -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/owl.carousel.css">
<!-- Portfolio Filter -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/bootFolio.css">
<!-- Popup -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/magnific-popup.css">
<!-- Default Theme -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/owl.theme.css">
<!-- JQUERY UI STYLE -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/jquery-ui.css">
<!-- MAIN STYLE -->
<link href="<%=request.getContextPath()%>/userResources/css/main.css"
	rel="stylesheet">

<!-- GOOGLE FONT -->
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,400italic,700,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>

<script
	src="<%=request.getContextPath()%>/userResources/js/jquery-1.11.3.min.js"></script>

<!-- RS5.0 Core JS Files -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/userResources/js/jquery.themepunch.tools.min.js?rev=5.0"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/userResources/js/jquery.themepunch.revolution.min.js?rev=5.0"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/userResources/js/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/userResources/js/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/userResources/js/revolution.extension.navigation.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/userResources/js/revolution.extension.parallax.min.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>
	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

	<!-- =========================
     PAGE TITLE SECTION
    ============================== -->
	<section class="page-title-area attorney-page-title-bg">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="page-title-padding">
						<div class="page-title-content text-center">
							<h2>${lawyerList.name}</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- =========================
     START TESTMONIAL SECTION
    ============================== -->

	<section class="attorney-single-area">
		<div class="testimonial-content-area">
			<div class="container">
				<div class="row">
					<div class="attorney-single-content">
						<div class="col-md-3 col-sm-3">
							<div class="team-description">
								<div class="team-content">
									<div class="team-img">
										<img
											src="<%=request.getContextPath()%>/documents/lawyer/${lawyerList.email}/${lawyerList.profileFileName}"
											alt="team-member">
									</div>
								</div>
								<div class="member-name text-center">
									<h2>
										<a href="#">${lawyerList.name}</a>
									</h2>
									<p>${lawyerList.specializationVO.specialization} Specialist</p>
									<span></span>
								</div>
							</div>
							<div class="attorney-single-btn">
								<a href="contact1.html">Book AN Appointment</a>
							</div>

						</div>
						<div class="col-md-6 col-sm-6 blog-custom-padding">
							<div class="attorney-introduction">
								<h2>About ${lawyerList.name} :</h2>
								<ul>
									<li><b>DOB :</b> ${lawyerList.dateOfBirth}</li>
									<li><b>EMAIL :</b> ${lawyerList.email}</li>
									<li><b>PHONE NO :</b> ${lawyerList.phoneNo}</li>
									<li><b>OFFICE NO :</b>${lawyerList.officeNo}</li>
								</ul>

								<h2>Attorny Skills :</h2>
								<div class="progressbar">
									<div class="progress_cont">
										<div class="skill">
											Criminal Law<span class="pull-right"></span>
										</div>
										<div class="progress">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="75" aria-valuemin="0"
												aria-valuemax="100" style="width: 0%">
												<span class="sr-only">94% Complete (success)</span>
											</div>
										</div>
									</div>
									<div class="progress_cont">
										<div class="skill">
											Indurance <span class="pull-right"></span>
										</div>
										<div class="progress">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="50" aria-valuemin="0"
												aria-valuemax="100" style="width: 0%">
												<span class="sr-only">94% Complete (success)</span>
											</div>
										</div>
									</div>
									<div class="progress_cont">
										<div class="skill">
											Financial Law <span class="pull-right"></span>
										</div>
										<div class="progress">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="90" aria-valuemin="0"
												aria-valuemax="100" style="width: 0%">
												<span class="sr-only">94% Complete (success)</span>
											</div>
										</div>
									</div>
									<div class="progress_cont">
										<div class="skill">
											Civil Litigation <span class="pull-right"></span>
										</div>
										<div class="progress">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" style="width: 0%">
												<span class="sr-only">94% Complete (success)</span>
											</div>
										</div>
									</div>
									<div class="progress_cont">
										<div class="skill">
											Other Areas <span class="pull-right"></span>
										</div>
										<div class="progress">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="95" aria-valuemin="0"
												aria-valuemax="100" style="width: 0%">
												<span class="sr-only">94% Complete (success)</span>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="col-md-3 col-sm-3">
							<div class="right-sidebar">
								<div class="sidebar-inner">
									<h2>Bar Council Certificate </h2>
									<ul class="d-brochures">
										<li><a href="/documents/lawyer/${lawyerList.email}/${lawyerList.barcouncilerFileName}" target="_blank"><i class="fa fa-file"></i>view</a></li>
									</ul>
								</div>
								<div class="sidebar-inner">
									<h2>Degree Certificate </h2>
								
									<ul class="d-brochures">
									<c:forEach items="${lawyerDegreeList}" var="i">
										<li><a href="/documents/lawyer/${lawyerList.email}/degree/${i.degreeFileName}" target="_blank"><i class="fa fa-file"></i>${i.degreeVO.degree}</a></li>
								 </c:forEach>
									</ul>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end testimonial area -->

	<!-- =========================
     START FOOTER SECTION
    ============================== -->

	<jsp:include page="footer.jsp"></jsp:include>


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="<%=request.getContextPath()%>/userResources/js/bootstrap.min.js"></script>
	<!-- Include owl-carousel js plugin -->
	<script
		src="<%=request.getContextPath()%>/userResources/js/owl.carousel.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/menuzord.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/countdown.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.counterup.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/waypoints.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.bootFolio.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.magnific-popup.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery-ui.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/rev-slider.js"></script>
	<script src="<%=request.getContextPath()%>/userResources/js/main.js"></script>

</body>
</html>