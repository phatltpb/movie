<link rel="stylesheet" href="<?= _WEB_ROOT ?>/public/assets/client/css/plugins.css">
<link rel="stylesheet" href="<?= _WEB_ROOT ?>/public/assets/client/css/style.css">



<header class="ht-header">
	<div class="container">
		<nav class="navbar navbar-default navbar-custom">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header logo">
				<div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<div id="nav-icon1">
						<span></span>
						<span></span>
						<span></span>
					</div>
				</div>
				<a href="index.html"><img class="logo" src="<?= _WEB_ROOT ?>/public/assets/client/images/logo1.png" alt="" width="119" height="58"></a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav flex-child-menu menu-left">
					<li class="hidden">
						<a href="#page-top"></a>
					</li>
					<li class="dropdown first">
						<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							movies<i class="fa fa-angle-down" aria-hidden="true"></i>
						</a>
						<ul class="dropdown-menu level1">
							<li><a href="moviegridfw.html">Movie list</a></li>
							<li><a href="moviesingle.html">Movie single</a></li>
						</ul>
					</li>
					<li class="dropdown first">
						<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							celebrities <i class="fa fa-angle-down" aria-hidden="true"></i>
						</a>
						<ul class="dropdown-menu level1">
							<li class="it-last"><a href="celebritygrid02.html">celebrity list</a></li>
							<li class="it-last"><a href="celebritysingle.html">celebrity single</a></li>
						</ul>
					</li>
					<li class="dropdown first">
						<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							news <i class="fa fa-angle-down" aria-hidden="true"></i>
						</a>
						<ul class="dropdown-menu level1">
							<li><a href="bloglist.html">blog List</a></li>
							<li class="it-last"><a href="blogdetail.html">blog Detail</a></li>
						</ul>
					</li>
					<li class="dropdown first">
						<a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">
							community <i class="fa fa-angle-down" aria-hidden="true"></i>
						</a>
						<ul class="dropdown-menu level1">
							<li><a href="userfavoritegrid.html">user favorite </a></li>
							<li><a href="userprofile.html">user profile</a></li>
							<li class="it-last"><a href="php%202/asm/admin.movie">user rate</a></li>
						</ul>
					</li>
				</ul>
				<ul class="nav navbar-nav flex-child-menu menu-right">
					<li class="btn"><a href="<?= _WEB_ROOT ?>/login">sign up</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>

		<!-- top search form -->
		<div class="top-search">
			<select>
				<option value="united">TV show</option>
				<option value="saab">Others</option>
			</select>
			<input type="text" placeholder="Search for a movie, TV Show or celebrity that you are looking for">
		</div>
	</div>
</header>