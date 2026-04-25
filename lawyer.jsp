<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CAFJS</title>
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
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<!-- =========================
     PAGE TITLE SECTION
    ============================== -->
	<section class="page-title-area attorney-page-title-bg">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="page-title-padding">
						<div class="page-title-content text-center">

							<h2>Lawyers</h2>
						</div>
						<!-- <div class="breadcrumbs text-center">
							<ul class="page-breadcrumbs">
								<li><a href="#">home</a></li>
								<li><a href="#">Attorneys</a></li>
								<li><a href="#">Attorney 2</a></li>
							</ul>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- =========================
     START OUR TEAM SECTION
    ============================== -->

	<section class="our-team-area attorney-1">
		<!-- start team member introduction -->
		<div class="team-member-area">
			<div class="container">
				<div class="row">
				
				<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
					
					
					<c:forEach items="${lawyerList}" var="i">
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="team-describe">
							<div class="team-content">
								<div class="team-img">
								<c:if test="${i.gender eq 'male' }">
									<img height="300px" width="400px"
										src="<%=request.getContextPath()%>/documents/lawyer/${i.email}/${i.profileFileName}"
										<%-- src="<%=request.getContextPath()%>/userResources/images/male.png" --%>
										alt="team-member">

								</c:if>
								
								<c:if test="${i.gender eq 'female' }">
									<img height="300px" width="400px"
										src="<%=request.getContextPath()%>/documents/lawyer/${i.email}/${i.profileFileName}"
										<%-- src="<%=request.getContextPath()%>/userResources/images/female.jpg" --%>
										alt="team-member">

								</c:if>
								
								
								</div>
								<div class="about-team-member text-center">
									<div class="team-describe-content">
										<a href="lawyerDetails?id=${i.id}" style="color: white;"> View Details
										</a>
									</div>
									<div class="team-describe-content">
										<a href="cases" style="color: white;"> View Cases
										</a>
									</div>

								</div>
							</div>
							<div class="member-name text-center">
								<h2>
									<a href="#">${i.name}</a>
								</h2>
								<p>${i.specializationVO.specialization} Specialist</p>
								<span></span>
							</div>
						</div>
					</div>
   
             </c:forEach>


				</div>
			</div>
		</div>

	</section>
	<!-- end our team area -->

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