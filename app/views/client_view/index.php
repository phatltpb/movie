<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7 no-js" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8 no-js" lang="en-US">
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en" class="no-js">


<head>
	<!-- Basic need -->
	<title>home</title>
	<meta charset="UTF-8">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
	<link rel="profile" href="#">

	<!--Google Font-->
	<link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
	<!-- Mobile specific meta -->
	<meta name=viewport content="width=device-width, initial-scale=1">
	<meta name="format-detection" content="telephone-no">

	<!-- CSS files -->

</head>

<body>
	<?php require_once _DIR_ROOT . "/app/views/blocks/hd_sinup.php" ?>
	<!-- END | Header -->

	<div class="slider movie-items">
		<div class="container">
			<div class="row">
				<div class="social-link">
					<p>Follow us: </p>
					<a href="#"><i class="ion-social-facebook"></i></a>
					<a href="#"><i class="ion-social-twitter"></i></a>
					<a href="#"><i class="ion-social-googleplus"></i></a>
					<a href="#"><i class="ion-social-youtube"></i></a>
				</div>
				<div class="slick-multiItemSlider">
					<?php foreach ($movie as $row) { ?>

						<div class="movie-item">
							<div class="mv-img">
								<a href="#"><img src="<?= $row['image_lage'] ?>" alt="" style="height: 400px;"></a>
							</div>
							<div class="title-in">
								<div class="cate">
									<span class="blue"><a href="#">Sci-fi</a></span>
								</div>
								<h6><a href="#"><?= $row['name_mv'] ?></a></h6>
								<p><i class="ion-android-star"></i><span><?= $row['status'] ?></span> /<?= $row['rate'] ?></p>
							</div>
						</div>
					<?php } ?>
					<!-- <div class="mv-img">
							<img src="images/uploads/slider3.jpg" alt="" width="285" height="437">
						</div> -->
					<div class="title-in">
						<div class="cate">
							<span class="green"><a href="#">comedy</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<div class="movie-items">
		<div class="container">
			<div class="row ipad-width">
				<div class="col-md-8">
					<div class="title-hd">
						<h2>in theater</h2>
						<a href="#" class="viewall">View all <i class="ion-ios-arrow-right"></i></a>
					</div>
					<div class="tabs">
						<ul class="tab-links">
							<li class="active"><a href="#tab1">#Popular</a></li>
							<li><a href="#tab2"> #Coming soon</a></li>
							<li><a href="#tab3"> #Top rated </a></li>
							<li><a href="#tab4"> #Most reviewed</a></li>
						</ul>
						<div class="tab-content">
							<div id="tab1" class="tab active">
								<div class="row">
									<div class="slick-multiItem">
										<?php foreach ($movie as $row) { ?>
											<div class="slide-it">
												<div class="movie-item">
													<div class="mv-img">
														<img src="<?= $row['image_lage'] ?>" alt="" style="height: 200px;">
													</div>
													<div class="hvr-inner">
														<a href="<?= _WEB_ROOT ?>/clinet_mv_one?id_movie=<?= $row['id_movie'] ?>"> Read more <i class="ion-android-arrow-dropright"></i> </a>
													</div>
													<div class="title-in">
														<h6><a href="#"><? $row['name_mv'] ?></a></h6>
														<p><i class="ion-android-star"></i><span><?= $row['status'] ?></span> /<?= $row['rate'] ?></p>
													</div>
												</div>
											</div>
										<?php } ?>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="sidebar">
						<div class="ads">
							<img src="<?= _WEB_ROOT ?>/public/assets/client/images/uploads/ads1.png" alt="" width="336" height="296">
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="trailers">
		<div class="container">
			<div class="row ipad-width">
				<div class="col-md-12">
					<div class="title-hd">
						<h2>in theater</h2>
						<a href="#" class="viewall">View all <i class="ion-ios-arrow-right"></i></a>
					</div>
					<div class="videos">
						<div class="slider-for-2 video-ft">
							<?php foreach ($movie as $row) { ?>
								<div>
									<iframe class="item-video" src="#" data-src="<?= $row['traller'] ?>"></iframe>
								</div>
							<?php } ?>
						</div>
						<div class="slider-nav-2 thumb-ft">
							<?php foreach ($movie as $row) { ?>
								<div class="item">
									<div class="trailer-img">
										<img src="<?= $row['image_lage'] ?>" alt="photo by Barn Images" width="350" height="200">
									</div>
									<div class="trailer-infor">
										<h4 class="desc"><?= $row['name_mv'] ?></h4>
										<p>2:37</p>
									</div>
								</div>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end of latest new v1 section-->
	<!-- footer section-->
	<footer class="ht-footer">
		<div class="container">
			<div class="flex-parent-ft">
				<div class="flex-child-ft item1">
					<a href="index-2.html"><img class="logo" src="images/logo1.png" alt=""></a>
					<p>5th Avenue st, manhattan<br>
						New York, NY 10001</p>
					<p>Call us: <a href="#">(+01) 202 342 6789</a></p>
				</div>
				<div class="flex-child-ft item2">
					<h4>Resources</h4>
					<ul>
						<li><a href="#">About</a></li>
						<li><a href="#">Blockbuster</a></li>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">Forums</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">Help Center</a></li>
					</ul>
				</div>
				<div class="flex-child-ft item3">
					<h4>Legal</h4>
					<ul>
						<li><a href="#">Terms of Use</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Security</a></li>
					</ul>
				</div>
				<div class="flex-child-ft item4">
					<h4>Account</h4>
					<ul>
						<li><a href="#">My Account</a></li>
						<li><a href="#">Watchlist</a></li>
						<li><a href="#">Collections</a></li>
						<li><a href="#">User Guide</a></li>
					</ul>
				</div>
				<div class="flex-child-ft item5">
					<h4>Newsletter</h4>
					<p>Subscribe to our newsletter system now <br> to get latest news from us.</p>
					<form action="#">
						<input type="text" placeholder="Enter your email...">
					</form>
					<a href="#" class="btn">Subscribe now <i class="ion-ios-arrow-forward"></i></a>
				</div>
			</div>
		</div>
		<div class="ft-copyright">
			<div class="ft-left">
				<p><a target="_blank" href="https://www.templateshub.net">Templates Hub</a></p>
			</div>
			<div class="backtotop">
				<p><a href="#" id="back-to-top">Back to top <i class="ion-ios-arrow-thin-up"></i></a></p>
			</div>
		</div>
	</footer>
	<!-- end of footer section-->

	<script src="<?= _WEB_ROOT ?>/public/assets/client/js/jquery.js"></script>
	<script src="<?= _WEB_ROOT ?>/public/assets/client/js/plugins.js"></script>
	<script src="<?= _WEB_ROOT ?>/public/assets/client/js/plugins2.js"></script>
	<script src="<?= _WEB_ROOT ?>/public/assets/client/js/custom.js"></script>
</body>


</html>