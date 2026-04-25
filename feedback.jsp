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
<link
	href="<%=request.getContextPath()%>/userResources/css/font-awesome.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/userResources/css/star.css"
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
	<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

	<section class="page-title-area attorney-page-title-bg">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="page-title-padding">
						<div class="page-title-content text-center">
							<h2>Feedback</h2>
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
						<h2>POST FEEDBACK</h2>
					</div>
					<div class="col-sm-12 col-md-12 no-padding">
						<div class="contact-us-1-form clearfix">
							<f:form action="PostFeedback" method="POST"
								modelAttribute="feedback">

								<fieldset class="rating" style="margin-bottom: 3rem">
									<input type="radio" id="star5" name="rating" value="5" /><label
										class="full" for="star5" title="Awesome - 5 stars"></label> <input
										type="radio" id="star4" name="rating" value="4" /><label
										class="full" for="star4" title="Pretty good - 4 stars"></label>
									<input type="radio" id="star3" name="rating" value="3" /><label
										class="full" for="star3" title="Meh - 3 stars"></label> <input
										type="radio" id="star2" name="rating" value="2" /><label
										class="full" for="star2" title="Kinda bad - 2 stars"></label>
									<input type="radio" id="star1" name="rating" value="1" /><label
										class="full" for="star1" title="Sucks big time - 1 star"></label>
								</fieldset>

								<f:textarea required="required" path="feedback"
									class="form-control" rows="5"
									placeholder="Enter Your Feedback..."></f:textarea>


								<button type="submit" class="btn btn-dm">Post</button>

							</f:form>
						</div>
					</div>



					<div class="t-b-content-area blog-content-area clearfix">
						<div class="col-md-12 col-sm-12 no-padding blog-custom-padding">
							<div class="col-md-12 col-sm-12">

								<div class="blog-reply-form">

									<div class="sidebar-inner single-blog-author single-blog-reply">
										<h2>Feedback</h2>
										<c:forEach items="${feedbackList}" var="p" varStatus="j">
											<div
												class="recent-post single-blog-author-post single-blog-reply-post">

												<div class="blog-reply-content">
													<h3>
														<a href="#">${p.loginVO.username}</a>
													</h3>
													<span style="float: right; margin-right: 2rem"> <c:forEach
															begin="1" end="${p.rating}">
															<i class="fa fa-star" style="color: orange;"></i>
														</c:forEach>
													</span>
													<p>${p.feedback}</p>
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