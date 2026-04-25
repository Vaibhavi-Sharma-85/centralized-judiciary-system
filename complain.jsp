
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
	<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

	<!-- =========================
     PAGE TITLE SECTION
    ============================== -->
	<section class="page-title-area attorney-page-title-bg">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="page-title-padding">
						<div class="page-title-content text-center">
							<h2>Complaint</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="testimonial-area home-2-testimonial-area">
		<div class="testimonial-content-area">
			<div class="container">
				<div class="row">
					<div class="sidebar-inner single-blog-author">
						<h2>POST COMPLAIN</h2>
					</div>
					<div class="col-sm-12 col-md-12 no-padding">
						<div class="contact-us-1-form clearfix">
							<f:form action="PostComplain" method="POST"
								modelAttribute="complain">
								<div class="col-sm-12 no-padding contact-us-custom-padding">
									<f:input path="complainSubject" class="form-control"
										id="Subject" placeholder="SUBJECT" required="required" />
								</div>
								<div class="col-sm-12 no-padding contact-us-custom-padding">
									<f:textarea path="complainDescription" class="form-control"
										rows="8" id="Message" placeholder="MESSAGE"></f:textarea>
								</div>



								<f:hidden path="id" name="id" />
								<div class="col-sm-12 no-padding contact-us-custom-padding">
									<button type="submit" id="contact_submit" class="btn btn-dm">Post
										Complaint</button>
								</div>

							</f:form>
						</div>
					</div>



					<div class="t-b-content-area blog-content-area clearfix">
						<div class="col-md-12 col-sm-12 no-padding blog-custom-padding">
							<div class="col-md-12 col-sm-12">

								<div class="blog-reply-form">

									<div class="sidebar-inner single-blog-author single-blog-reply">
										<h2>Your Complaints</h2>

										<c:forEach items="${complainList}" var="p" varStatus="j">
											<div
												class="recent-post single-blog-author-post single-blog-reply-post">
												<div class="blog-reply-content">
													<h3 style="font-size: medium;">
														<a href="#">Subject : ${p.complainSubject}</a>
													</h3>
													<h6 style="font-size: small;">
														<b>Description :</b> ${p.complainDescription}
													</h6>
													<h6>
														<b>Complaint Date :</b> ${p.complainDate}
													</h6>

													<c:if test="${p.complainStatus eq 'Pending'}">
														<button
															style="background-color: #ff9800 !important; color: #fff !important; position: relative; padding: .5rem 1rem; display: inline-block"
															type="button">Pending</button>


													</c:if>
													<c:if test="${p.complainStatus ne 'Pending'}">
														<h6>
															<b>Reply :</b> ${p.complainReplay}
														</h6>
														<h6>
															<b>Reply Date :</b> ${p.complainReplayDate}
														</h6>
														<button
															style="background-color: #18ce0f !important; color: #fff !important; position: relative; padding: .5rem 1rem; display: inline-block"
															type="button">Resolved</button>


													</c:if>



													<img
														src="<%=request.getContextPath()%>/adminResources/image/user.png"
														alt="">
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>


	<!-- =========================
     START OUR TEAM SECTION
    ============================== -->


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
