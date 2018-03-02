<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="sb-init">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Hamtelligence - The Ultimate Amateur Radio Information
	Repository</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="https://agileui.com/demo/supina-theme-package/assets-minified/images/icons/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="https://agileui.com/demo/supina-theme-package/assets-minified/images/icons/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="https://agileui.com/demo/supina-theme-package/assets-minified/images/icons/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="https://agileui.com/demo/supina-theme-package/assets-minified/images/icons/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon"
	href="https://agileui.com/demo/supina-theme-package/assets-minified/images/icons/favicon.png">
<script type="text/javascript" src="./supina/js-core.js.download"></script>
<script type="text/javascript">
	$(window).load(function() {
		setTimeout(function() {
			$('#loading').fadeOut(400, "linear");
		}, 300);
	});
</script>
<style>
#loading {
	position: fixed;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
	right: 0;
	bottom: 0;
	display: block;
	background: #fff;
	z-index: 10000;
}

#loading img {
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -23px 0 0 -23px;
}
</style>
<link rel="stylesheet" type="text/css" href="./supina/helpers-all.css">
<link rel="stylesheet" type="text/css" href="./supina/elements-all.css">
<link rel="stylesheet" type="text/css" href="./supina/fontawesome.css">
<link rel="stylesheet" type="text/css" href="./supina/linecons.css">
<link rel="stylesheet" type="text/css" href="./supina/snippets-all.css">
<link rel="stylesheet" type="text/css" href="./supina/mailbox.css">
<link rel="stylesheet" type="text/css" href="./supina/layout.css">
<link id="layout-color" rel="stylesheet" type="text/css"
	href="./supina/layout-color.css">
<link id="framework-color" rel="stylesheet" type="text/css"
	href="./supina/framework-color.css">
<link rel="stylesheet" type="text/css" href="./supina/border-radius.css">
<link rel="stylesheet" type="text/css" href="./supina/colors.css">
<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
		endColorstr=#99000000);
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	padding: 5px;
	border: 1px solid white;
	z-index: 10000;
}

.jqsfield {
	color: white;
	font: 10px arial, san serif;
	text-align: left;
}
</style>
<!-- Leaflet CSS -->
<link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.2.0/dist/leaflet.css"
	integrity="sha512-M2wvCLH6DSRazYeZRIm1JnYyh22purTM+FDB5CsyxtQJYeKq83arPe5wgbNmcFXGqiSH2XR8dT/fJISVA1r/zQ=="
	crossorigin="" />

<style>
.leaflet-grid-label .lng {
	margin-left: 8px;
	-webkit-transform: rotate(90deg);
	transform: rotate(90deg);
}

div.gridSquareLabel {
	text-align: center;
	margin: 0px;
}

div#map {
	height: 300px
}
</style>

</head>
<body class="">
	<div id="loading" style="display: none;">
		<img src="./supina/loader-dark.gif" alt="Loading...">
	</div>
	<div id="sb-site" style="min-height: 672px;">
		<div id="page-wrapper">
			<div id="page-header" class="clearfix">
				<div id="header-logo" class="">
					<a href="https://agileui.com/demo/supina-theme-package/#"
						class="tooltip-button hidden-desktop" title=""
						id="responsive-open-menu" data-original-title="Navigation Menu"><i
						class="glyph-icon icon-align-justify"></i></a> <span>Hamtelligence
						<i class="opacity-80">1.0</i>
					</span> <a id="collapse-sidebar"
						href="https://agileui.com/demo/supina-theme-package/#" title=""><i
						class="glyph-icon icon-chevron-left"></i></a>
				</div>
				<div id="sidebar-search">
					<input type="text" placeholder="Search..."
						class="autocomplete-input input tooltip-button ui-autocomplete-input"
						data-placement="bottom" title="" id="" name="" autocomplete="off"
						data-original-title="Type &#39;jav&#39; to see the available tags..."
						style="width: 100px;"> <i class="glyph-icon icon-search"></i>
				</div>
				<div id="header-right">
					<div class="user-profile dropdown">
						<a href="https://agileui.com/demo/supina-theme-package/#" title=""
							class="user-ico clearfix" data-toggle="dropdown"><img
							width="36" src="./supina/gravatar.jpg" alt=""> <i
							class="glyph-icon icon-chevron-down"></i></a>
						<div class="dropdown-menu pad0B float-right">
							<div class="box-sm">
								<div class="login-box clearfix">
									<div class="user-img">
										<a href="https://agileui.com/demo/supina-theme-package/#"
											title="" class="change-img">Change photo</a> <img
											src="./supina/gravatar.jpg" alt="">
									</div>
									<div class="user-info">
										<span>Horia Simon <i>Front-end web developer</i></span> <a
											href="https://agileui.com/demo/supina-theme-package/#"
											title="">Edit profile</a> <a
											href="https://agileui.com/demo/supina-theme-package/#"
											title="">View notifications</a>
									</div>
								</div>
								<div class="divider"></div>
								<ul class="reset-ul mrg5B">
									<li><a
										href="https://agileui.com/demo/supina-theme-package/#">View
											login page example <i
											class="glyph-icon float-right icon-caret-right"></i>
									</a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/#">View
											lockscreen example <i
											class="glyph-icon float-right icon-caret-right"></i>
									</a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/#">View
											account details <i
											class="glyph-icon float-right icon-caret-right"></i>
									</a></li>
								</ul>
								<div class="pad5A button-pane button-pane-alt text-center">
									<a href="https://agileui.com/demo/supina-theme-package/#"
										class="btn display-block font-normal btn-danger"><i
										class="glyph-icon icon-power-off"></i> Logout</a>
								</div>
							</div>
						</div>
					</div>
					<div class="top-icon-bar float-right">
						<div class="dropdown">
							<a data-toggle="dropdown"
								href="https://agileui.com/demo/supina-theme-package/#" title=""><i
								class="glyph-icon icon-linecons-megaphone"></i></a>
							<div class="dropdown-menu float-right">
								<div class="popover-title display-block clearfix pad10A">Notifications</div>
								<div
									class="scrollable-content scrollable-nice box-md scrollable-small"
									tabindex="5000" style="overflow-y: hidden; outline: none;">
									<ul class="no-border notifications-box">
										<li><span
											class="bg-danger icon-notification glyph-icon icon-bullhorn"></span>
											<span class="notification-text">This is an error
												notification</span>
											<div class="notification-time">
												a few seconds ago <span class="glyph-icon icon-clock-o"></span>
											</div></li>
										<li><span
											class="bg-warning icon-notification glyph-icon icon-users"></span>
											<span class="notification-text font-blue">This is a
												warning notification</span>
											<div class="notification-time">
												<b>15</b> minutes ago <span class="glyph-icon icon-clock-o"></span>
											</div></li>
										<li><span
											class="bg-green icon-notification glyph-icon icon-sitemap"></span>
											<span class="notification-text font-green">A success
												message example.</span>
											<div class="notification-time">
												<b>2 hours</b> ago <span class="glyph-icon icon-clock-o"></span>
											</div></li>
										<li><span
											class="bg-azure icon-notification glyph-icon icon-random"></span>
											<span class="notification-text">This is an error
												notification</span>
											<div class="notification-time">
												a few seconds ago <span class="glyph-icon icon-clock-o"></span>
											</div></li>
										<li><span
											class="bg-warning icon-notification glyph-icon icon-ticket"></span>
											<span class="notification-text">This is a warning
												notification</span>
											<div class="notification-time">
												<b>15</b> minutes ago <span class="glyph-icon icon-clock-o"></span>
											</div></li>
										<li><span
											class="bg-blue icon-notification glyph-icon icon-user"></span>
											<span class="notification-text font-blue">Alternate
												notification styling.</span>
											<div class="notification-time">
												<b>2 hours</b> ago <span class="glyph-icon icon-clock-o"></span>
											</div></li>
										<li><span
											class="bg-purple icon-notification glyph-icon icon-user"></span>
											<span class="notification-text">This is an error
												notification</span>
											<div class="notification-time">
												a few seconds ago <span class="glyph-icon icon-clock-o"></span>
											</div></li>
										<li><span
											class="bg-warning icon-notification glyph-icon icon-user"></span>
											<span class="notification-text">This is a warning
												notification</span>
											<div class="notification-time">
												<b>15</b> minutes ago <span class="glyph-icon icon-clock-o"></span>
											</div></li>
										<li><span
											class="bg-green icon-notification glyph-icon icon-user"></span>
											<span class="notification-text font-green">A success
												message example.</span>
											<div class="notification-time">
												<b>2 hours</b> ago <span class="glyph-icon icon-clock-o"></span>
											</div></li>
										<li><span
											class="bg-purple icon-notification glyph-icon icon-user"></span>
											<span class="notification-text">This is an error
												notification</span>
											<div class="notification-time">
												a few seconds ago <span class="glyph-icon icon-clock-o"></span>
											</div></li>
										<li><span
											class="bg-warning icon-notification glyph-icon icon-user"></span>
											<span class="notification-text">This is a warning
												notification</span>
											<div class="notification-time">
												<b>15</b> minutes ago <span class="glyph-icon icon-clock-o"></span>
											</div></li>
									</ul>
								</div>
								<div class="pad10A button-pane button-pane-alt text-center">
									<a href="https://agileui.com/demo/supina-theme-package/#"
										class="btn btn-primary" title="View all notifications">View
										all notifications</a>
								</div>
								<div id="ascrail2000" class="nicescroll-rails"
									style="width: 6px; z-index: 5555; background: rgb(205, 205, 205); cursor: default; position: absolute; top: 0px; left: 394px; height: 300px; display: none;">
									<div
										style="position: relative; top: 0px; float: right; width: 6px; height: 0px; background-color: rgb(54, 54, 54); border: 0px; background-clip: padding-box; border-radius: 0px;"></div>
								</div>
							</div>
						</div>
						<div class="dropdown">
							<a data-toggle="dropdown"
								href="https://agileui.com/demo/supina-theme-package/#" title=""><span
								class="bs-badge badge-absolute bg-red">2</span> <i
								class="glyph-icon icon-linecons-params"></i></a>
							<div class="dropdown-menu float-right" id="progress-dropdown">
								<div
									class="scrollable-content scrollable-nice box-sm scrollable-small"
									tabindex="5001" style="overflow-y: hidden; outline: none;">
									<ul class="no-border progress-box progress-box-links">
										<li><a
											href="https://agileui.com/demo/supina-theme-package/#"
											title=""><div class="progress-title">
													Finishing uploading files <b>23%</b>
												</div>
												<div class="progressbar-smaller progressbar" data-value="23">
													<div class="progressbar-value bg-blue-alt"
														style="width: 0px; overflow: hidden;">
														<div class="progressbar-overlay"></div>
													</div>
												</div></a></li>
										<li><a
											href="https://agileui.com/demo/supina-theme-package/#"
											title=""><div class="progress-title">
													Roadmap progress <b>91%</b>
												</div>
												<div class="progressbar-smaller progressbar" data-value="91">
													<div class="progressbar-value bg-red"
														style="width: 0px; overflow: hidden;">
														<div class="progressbar-overlay"></div>
													</div>
												</div></a></li>
										<li><a
											href="https://agileui.com/demo/supina-theme-package/#"
											title=""><div class="progress-title">
													Images upload <b>58%</b>
												</div>
												<div class="progressbar-smaller progressbar" data-value="58">
													<div class="progressbar-value bg-green"
														style="width: 0px; overflow: hidden;"></div>
												</div></a></li>
										<li><a
											href="https://agileui.com/demo/supina-theme-package/#"
											title=""><div class="progress-title">
													WordPress migration <b>74%</b>
												</div>
												<div class="progressbar-smaller progressbar" data-value="74">
													<div class="progressbar-value bg-purple"
														style="width: 0px; overflow: hidden;"></div>
												</div></a></li>
										<li><a
											href="https://agileui.com/demo/supina-theme-package/#"
											title=""><div class="progress-title">
													Agile development procedures <b>91%</b>
												</div>
												<div class="progressbar-smaller progressbar" data-value="91">
													<div class="progressbar-value bg-black"
														style="width: 0px; overflow: hidden;">
														<div class="progressbar-overlay"></div>
													</div>
												</div></a></li>
										<li><a
											href="https://agileui.com/demo/supina-theme-package/#"
											title=""><div class="progress-title">
													Systems integration <b>58%</b>
												</div>
												<div class="progressbar-smaller progressbar" data-value="58">
													<div class="progressbar-value bg-azure"
														style="width: 0px; overflow: hidden;"></div>
												</div></a></li>
										<li><a
											href="https://agileui.com/demo/supina-theme-package/#"
											title=""><div class="progress-title">
													Code optimizations <b>97%</b>
												</div>
												<div class="progressbar-smaller progressbar" data-value="97">
													<div class="progressbar-value bg-yellow"
														style="width: 0px; overflow: hidden;"></div>
												</div></a></li>
									</ul>
								</div>
								<div class="pad5A button-pane button-pane-alt text-center">
									<a href="https://agileui.com/demo/supina-theme-package/#"
										class="btn display-block font-normal hover-green"
										title="View all notifications">View all notifications</a>
								</div>
								<div id="ascrail2001" class="nicescroll-rails"
									style="width: 6px; z-index: 5555; background: rgb(205, 205, 205); cursor: default; position: absolute; top: 0px; left: 319px; height: 300px; display: none;">
									<div
										style="position: relative; top: 0px; float: right; width: 6px; height: 0px; background-color: rgb(54, 54, 54); border: 0px; background-clip: padding-box; border-radius: 0px;"></div>
								</div>
							</div>
						</div>
						<div class="dropdown">
							<a href="https://agileui.com/demo/supina-theme-package/#"
								data-toggle="dropdown" data-placement="left"
								class="popover-button-header tooltip-button" title=""
								data-original-title="Example menu"><span
								class="bs-badge badge-absolute bg-green">9</span> <i
								class="glyph-icon icon-linecons-cog"></i></a>
							<div class="dropdown-menu float-right">
								<div class="box-sm">
									<div
										class="pad5T pad10B pad10L pad10R dashboard-buttons clearfix">
										<a href="https://agileui.com/demo/supina-theme-package/#"
											class="btn vertical-button hover-blue-alt" title=""><span
											class="glyph-icon icon-separator-vertical pad0A medium"><i
												class="glyph-icon icon-dashboard opacity-80 font-size-20"></i></span>
											Dashboard</a> <a
											href="https://agileui.com/demo/supina-theme-package/#"
											class="btn vertical-button hover-green" title=""><span
											class="glyph-icon icon-separator-vertical pad0A medium"><i
												class="glyph-icon icon-tags opacity-80 font-size-20"></i></span>
											Widgets</a> <a
											href="https://agileui.com/demo/supina-theme-package/#"
											class="btn vertical-button hover-orange" title=""><span
											class="glyph-icon icon-separator-vertical pad0A medium"><i
												class="glyph-icon icon-fire opacity-80 font-size-20"></i></span>
											Tables</a> <a
											href="https://agileui.com/demo/supina-theme-package/#"
											class="btn vertical-button hover-orange" title=""><span
											class="glyph-icon icon-separator-vertical pad0A medium"><i
												class="glyph-icon icon-bar-chart-o opacity-80 font-size-20"></i></span>
											Charts</a> <a
											href="https://agileui.com/demo/supina-theme-package/#"
											class="btn vertical-button hover-purple" title=""><span
											class="glyph-icon icon-separator-vertical pad0A medium"><i
												class="glyph-icon icon-laptop opacity-80 font-size-20"></i></span>
											Buttons</a> <a
											href="https://agileui.com/demo/supina-theme-package/#"
											class="btn vertical-button hover-azure" title=""><span
											class="glyph-icon icon-separator-vertical pad0A medium"><i
												class="glyph-icon icon-code opacity-80 font-size-20"></i></span>
											Panels</a>
									</div>
									<div
										class="bg-gray text-transform-upr font-size-12 font-gray-dark pad10A">Dashboard
										menu</div>
									<div
										class="pad5T pad10B pad10L pad10R dashboard-buttons clearfix">
										<a href="https://agileui.com/demo/supina-theme-package/#"
											class="btn vertical-button remove-border btn-info" title=""><span
											class="glyph-icon icon-separator-vertical pad0A medium"><i
												class="glyph-icon icon-dashboard opacity-80 font-size-20"></i></span>
											Dashboard</a> <a
											href="https://agileui.com/demo/supina-theme-package/#"
											class="btn vertical-button remove-border btn-danger" title=""><span
											class="glyph-icon icon-separator-vertical pad0A medium"><i
												class="glyph-icon icon-tags opacity-80 font-size-20"></i></span>
											Widgets</a> <a
											href="https://agileui.com/demo/supina-theme-package/#"
											class="btn vertical-button remove-border btn-purple" title=""><span
											class="glyph-icon icon-separator-vertical pad0A medium"><i
												class="glyph-icon icon-fire opacity-80 font-size-20"></i></span>
											Tables</a> <a
											href="https://agileui.com/demo/supina-theme-package/#"
											class="btn vertical-button remove-border btn-azure" title=""><span
											class="glyph-icon icon-separator-vertical pad0A medium"><i
												class="glyph-icon icon-bar-chart-o opacity-80 font-size-20"></i></span>
											Charts</a> <a
											href="https://agileui.com/demo/supina-theme-package/#"
											class="btn vertical-button remove-border btn-yellow" title=""><span
											class="glyph-icon icon-separator-vertical pad0A medium"><i
												class="glyph-icon icon-laptop opacity-80 font-size-20"></i></span>
											Buttons</a> <a
											href="https://agileui.com/demo/supina-theme-package/#"
											class="btn vertical-button remove-border btn-warning"
											title=""><span
											class="glyph-icon icon-separator-vertical pad0A medium"><i
												class="glyph-icon icon-code opacity-80 font-size-20"></i></span>
											Panels</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="page-sidebar" class="" style="height: 622px;">
				<div id="page-sidebar-wrapper" tabindex="5004"
					style="overflow-y: hidden; outline: none; height: 622px;">
					<div id="sidebar-top">
						<ul class="nav nav-pills nav-justified">
							<li class="active"><a
								href="https://agileui.com/demo/supina-theme-package/#tab-example-1"
								data-toggle="tab"><i class="glyph-icon icon-users"></i></a></li>
							<li class=""><a
								href="https://agileui.com/demo/supina-theme-package/#tab-example-2"
								data-toggle="tab"><i class="glyph-icon icon-bell"></i></a></li>
							<li class=""><a
								href="https://agileui.com/demo/supina-theme-package/#tab-example-3"
								data-toggle="tab"><span class="small-badge bg-red"></span><i
									class="glyph-icon icon-bar-chart-o"></i></a></li>
							<li class=""><a
								href="https://agileui.com/demo/supina-theme-package/#tab-example-4"
								data-toggle="tab"><i class="glyph-icon icon-cogs"></i></a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane clearfix fade active in" id="tab-example-1">
								<div class="user-profile-sm clearfix">
									<img width="45" class="img-rounded" src="./supina/gravatar.jpg"
										alt="">
									<div class="user-welcome">
										Welcome back, <b>Matt, 2E1HNK</b>
									</div>
									<a href="https://agileui.com/demo/supina-theme-package/#"
										title="" class="btn btn-sm btn-black-opacity-alt"><i
										class="glyph-icon icon-cog"></i></a>
								</div>
							</div>
							<div class="tab-pane clearfix fade" id="tab-example-2">
								<ul class="notifications-box notifications-box-alt">
									<li><span
										class="bg-purple icon-notification glyph-icon icon-users"></span>
										<span class="notification-text">This is an error
											notification</span>
										<div class="notification-time">
											a few seconds ago <span class="glyph-icon icon-clock-o"></span>
										</div> <a href="https://agileui.com/demo/supina-theme-package/#"
										class="notification-btn btn btn-xs btn-black tooltip-button"
										data-placement="right" title=""
										data-original-title="View details"><i
											class="glyph-icon icon-arrow-right"></i></a></li>
									<li><span
										class="bg-warning icon-notification glyph-icon icon-ticket"></span>
										<span class="notification-text">This is a warning
											notification</span>
										<div class="notification-time">
											<b>15</b> minutes ago <span class="glyph-icon icon-clock-o"></span>
										</div> <a href="https://agileui.com/demo/supina-theme-package/#"
										class="notification-btn btn btn-xs btn-black tooltip-button"
										data-placement="right" title=""
										data-original-title="View details"><i
											class="glyph-icon icon-arrow-right"></i></a></li>
									<li><span
										class="bg-green icon-notification glyph-icon icon-random"></span>
										<span class="notification-text font-green">A success
											message example.</span>
										<div class="notification-time">
											<b>2 hours</b> ago <span class="glyph-icon icon-clock-o"></span>
										</div> <a href="https://agileui.com/demo/supina-theme-package/#"
										class="notification-btn btn btn-xs btn-black tooltip-button"
										data-placement="right" title=""
										data-original-title="View details"><i
											class="glyph-icon icon-arrow-right"></i></a></li>
								</ul>
							</div>
							<div class="tab-pane clearfix fade" id="tab-example-3">
								<div class="info-box remove-border">
									<div class="chart-icon">
										<div class="infobox-sparkline">
											<canvas width="61" height="53"
												style="display: inline-block; width: 61px; height: 53px; vertical-align: top;"></canvas>
										</div>
									</div>
									<b>Exchange rate</b> <span class="stats font-size-23"><i
										class="glyph-icon icon-chevron-down font-red"></i> 43.79 <span
										class="font-green">+0.9</span></span>
								</div>
							</div>
							<div class="tab-pane clearfix fade" id="tab-example-4">
								<div class="complete-user-profile">
									<h4>Complete your profile</h4>
									<div class="progressbar-small progressbar" data-value="75">
										<div class="progressbar-value bg-azure tooltip-button"
											title="" data-original-title="45%"
											style="width: 0px; overflow: hidden;"></div>
									</div>
									<b>Next step:</b> <a
										href="https://agileui.com/demo/supina-theme-package/#"
										title="Verify identity">Verify identity</a>
								</div>
							</div>
						</div>
					</div>
					<div id="sidebar-menu">
						<ul class="sf-js-enabled sf-arrows">
							<li><a
								href="https://agileui.com/demo/supina-theme-package/index.html"
								title="Dashboard"><i class="glyph-icon icon-linecons-tv"></i>
									<span>Dashboard</span></a></li>
							<li><a
								href="https://agileui.com/demo/supina-theme-package/#"
								title="Presentation websites" class="sf-with-ul"><i
									class="glyph-icon icon-linecons-cloud"></i> <span>Frontend
										UI</span> <span class="bs-label label-success">32</span></a>
								<ul style="display: none;">
									<li class="header"><span>Homepage</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-1.html"
										title="Hero area 1"><span>Hero area 1</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-2.html"
										title="Hero area 2"><span>Hero area 2</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-3.html"
										title="Hero area 3"><span>Hero area 3</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-4.html"
										title="Hero area 4"><span>Hero area 4</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-5.html"
										title="Hero area 5"><span>Hero area 5</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-6.html"
										title="Hero area 6"><span>Hero area 6</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-7.html"
										title="Hero area 7"><span>Hero area 7</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-8.html"
										title="Hero area 8"><span>Hero area 8</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-9.html"
										title="Hero area 9"><span>Hero area 9</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-10.html"
										title="Hero area 10"><span>Hero area 10</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-11.html"
										title="Hero area 11"><span>Hero area 11</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-12.html"
										title="Hero area 12"><span>Hero area 12</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-13.html"
										title="Hero area 13"><span>Hero area 13</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-14.html"
										title="Hero area 14"><span>Hero area 14</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-15.html"
										title="Hero area 15"><span>Hero area 15</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/featured-area-16.html"
										title="Hero area 16"><span>Hero area 16</span></a></li>
									<li class="header"><span>Widgets</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/carousels.html"
										title="Carousels"><span>Carousels</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/slideshows.html"
										title="Slideshows"><span>Slideshows</span></a></li>
									<li class="header"><span>Portfolios</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/portfolio-2col.html"
										title="Portfolio 2 columns"><span>2 columns</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/portfolio-3col.html"
										title="Portfolio 2 columns"><span>3 columns</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/portfolio-4col.html"
										title="Portfolio 4 columns"><span>4 columns</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/portfolio-6col.html"
										title="Portfolio 6 columns"><span>6 columns</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/portfolio-fw1.html"
										title="Portfolio full width"><span>Full width</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/portfolio-fw2.html"
										title="Portfolio full width alternate"><span>Full
												width alternate</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/portfolio-masonry.html"
										title="Portfolio masonry"><span>Full masonry</span></a></li>
									<li class="header"><span>Elements</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/icon-boxes.html"
										title="Icon boxes"><span>Icon boxes</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/page-titles.html"
										title="Page titles"><span>Page titles</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/pricing-table.html"
										title="Pricing tables"><span>Pricing tables</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/testimonials.html"
										title="Testimonials"><span>Testimonials</span></a></li>
									<li class="header"><span>Footers</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/footer-1.html"
										title="Simple black footer"><span>Simple black
												footer</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/footer-2.html"
										title="Simple blue footer"><span>Simple blue footer</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/footer-3.html"
										title="Grid footer 1"><span>Grid footer 1</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/footer-4.html"
										title="Grid footer 2"><span>Grid footer 2</span></a></li>
									<li class="header"><span>Headers</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/header-1.html"
										title=""><span>White transparent header</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/header-2.html"
										title=""><span>Alternate dropdown menu</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/header-3.html"
										title=""><span>White header</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/header-4.html"
										title=""><span>Mega dropdown menu</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/header-5.html"
										title=""><span>Blue header</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/header-6.html"
										title=""><span>Transparent header</span></a></li>
								</ul></li>
							<li class="divider"></li>
							<li><a
								href="https://agileui.com/demo/supina-theme-package/#"
								title="Applications" class="sf-with-ul"><i
									class="glyph-icon icon-linecons-shop"></i> <span>Applications</span></a>
								<ul style="display: none;">
									<li class="header"><span>Mailbox</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/mailbox-inbox-alt.html"
										title="Inbox"><span>Inbox</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/mailbox-compose.html"
										title="Compose message"><span>Compose message</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/mailbox-message.html"
										title="View message"><span>View message</span></a></li>
								</ul>
								<ul style="display: none;">
									<li class="header"><span>Others</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/chat.html"
										title="Chat"><span>Chat</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/todo.html"
										title="Chat"><span>Checklist</span></a></li>
								</ul></li>
							<li><a
								href="https://agileui.com/demo/supina-theme-package/#"
								title="Layouts" class="sf-with-ul"><i
									class="glyph-icon icon-linecons-desktop"></i> <span>Layouts</span></a>
								<ul style="display: none;">
									<li class="header"><span>Pages</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/page-blank.html"
										title="Page blank"><span>Page blank</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/page-container.html"
										title="Page with container"><span>Page with
												container</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/page-single-wrapper.html"
										title="Page with single wrapper"><span>Page with
												single wrapper</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/page-multiple-wrappers.html"
										title="Page with multiple wrappers"><span>Page with
												multiple wrappers</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/page-scrollbar.html"
										title="Page with custom scrollbar"><span>Page with
												custom scrollbar</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/page-tabs.html"
										title="Page with tabs navigation"><span>Page with
												tabs navigation</span></a></li>
									<li class="header"><span>Navigation</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/navigation-menu-horizontal.html"
										title="Horizontal menu"><span>Horizontal menu</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/navigation-menu-horizontal-centered.html"
										title="Centered horizontal menu"><span>Centered
												horizontal menu</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/navigation-menu-collapsed.html"
										title="Collapsed horizontal menu"><span>Collapsed
												horizontal menu</span></a></li>
									<li class="header"><span>Breadcrumbs</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/breadcrumb-simple.html"
										title="Breadcrumb menu"><span>Breadcrumb menu</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/breadcrumb-sidebar-collapsed.html"
										title="Breadcrumb with collapsed menu"><span>Breadcrumb
												collapsed menu</span></a></li>
								</ul></li>
							<li class="divider"></li>
							<li><a
								href="https://agileui.com/demo/supina-theme-package/#"
								title="Extra pages" class="sf-with-ul"><i
									class="glyph-icon icon-linecons-params"></i> <span>Extra
										pages</span></a>
								<ul style="display: none;">
									<li class="header"><span>Dashboards</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/index.html"
										title="Dashboard example 1"><span>Dashboard example
												1</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/dashboard-2.html"
										title="Dashboard example 2"><span>Dashboard example
												2</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/dashboard-3.html"
										title="Dashboard example 3"><span>Dashboard example
												3</span></a></li>
									<li class="header"><span>Others</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/helper-classes.html"
										title="Helper classes"><span>Helper classes</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/slidebars.html"
										title="Slidebars panels"><span>Slidebars panels</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/animations.html"
										title="Animations"><span>Animations</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/page-transitions.html"
										title="Page transitions"><span>Page transitions</span></a></li>
									<li class="header"><span>Lockscreens</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/lockscreen-page-1.html"
										target="_blank" title="Lockscreen example 1"><span>Lockscreen
												example 1</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/lockscreen-page-2.html"
										target="_blank" title="Lockscreen example 2"><span>Lockscreen
												example 2</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/lockscreen-page-3.html"
										target="_blank" title="Lockscreen example 3"><span>Lockscreen
												example 3</span></a></li>
									<li class="header"><span>Login pages</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/login-page-1.html"
										target="_blank" title="Login example 1"><span>Login
												example 1</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/login-page-2.html"
										target="_blank" title="Login example 2"><span>Login
												example 2</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/login-page-3.html"
										target="_blank" title="Login example 3"><span>Login
												example 3</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/login-page-4.html"
										target="_blank" title="Login example 4"><span>Login
												example 4</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/login-page-5.html"
										target="_blank" title="Login example 5"><span>Login
												example 5</span></a></li>
									<li class="header"><span>Server response</span></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/server-page-1.html"
										target="_blank" title="Server error example 1"><span>Server
												error example 1</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/server-page-2.html"
										target="_blank" title="Server error example 2"><span>Server
												error example 2</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/server-page-3.html"
										target="_blank" title="Server error example 3"><span>Server
												error example 3</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/server-page-4.html"
										target="_blank" title="Server error example 4"><span>Server
												error example 4</span></a></li>
								</ul></li>
							<li class="divider"></li>
							<li><a
								href="https://agileui.com/demo/supina-theme-package/#"
								title="Widgets" class="sf-with-ul"><i
									class="glyph-icon icon-linecons-cog"></i> <span>Widgets</span></a>
								<ul style="display: none;">
									<li><a
										href="https://agileui.com/demo/supina-theme-package/accordions.html"
										title="Accordions"><span>Accordions</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/bs-carousel.html"
										title="Bootstrap carousel"><span>Bootstrap carousel</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/bs-datepicker.html"
										title="Bootstrap datepicker"><span>Bootstrap
												datepicker</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/calendar.html"
										title="Calendar"><span>Calendar</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/collapsable.html"
										title="Collapsable"><span>Collapsable</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/colorpicker.html"
										title="Colorpicker"><span>Colorpicker</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/custom-scrollbars.html"
										title="Custom scrollbars"><span>Custom scrollbars</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/dialogs.html"
										title="Dialogs"><span>Dialogs</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/dynamic-tables.html"
										title="Dynamic tables"><span>Dynamic tables</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/jgrowl-notifications.html"
										title="JGrowl notifications"><span>JGrowl
												notifications</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/jqueryui-datepicker.html"
										title="jQueryUI datepicker"><span>jQueryUI
												datepicker</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/lazyload.html"
										title="Images preloader"><span>Images preloader</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/loading-bar.html"
										title="Loading bar"><span>Loading bar</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/modals.html"
										title="Modals"><span>Modals</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/noty-notifications.html"
										title="Noty notifications"><span>Noty notifications</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/overlays.html"
										title="Overlays"><span>Overlays</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/popovers.html"
										title="Popovers"><span>Popovers</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/progress-bars.html"
										title="Progress bars"><span>Progress bars</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/sliders.html"
										title="Sliders"><span>Sliders</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/sortable.html"
										title="Sortable elements"><span>Sortable elements</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/tabs.html"
										title="Tabs"><span>Tabs</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/timepicker.html"
										title="Timepicker"><span>Timepicker</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/tooltips.html"
										title="Tooltips"><span>Tooltips</span></a></li>
								</ul></li>
							<li><a
								href="https://agileui.com/demo/supina-theme-package/#"
								title="Elements" class="sf-with-ul"><i
									class="glyph-icon icon-linecons-beaker"></i> <span>Elements</span></a>
								<ul style="display: none;">
									<li><a
										href="https://agileui.com/demo/supina-theme-package/badges.html"
										title="Badges"><span>Badges</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/buttons.html"
										title="Buttons"><span>Buttons</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/content-boxes.html"
										title="Content boxes"><span>Content boxes</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/dashboard-boxes.html"
										title="Dashboard boxes"><span>Dashboard boxes</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/icons.html"
										title="Icons"><span>Icons</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/images.html"
										title="Images"><span>Images</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/labels.html"
										title="Labels"><span>Labels</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/navigation-menus.html"
										title="Menus"><span>Menus</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/panel-boxes.html"
										title="Panel boxes"><span>Panel boxes</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/plain-tables.html"
										title="Tables"><span>Tables</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/response-messages.html"
										title="Response messages"><span>Response messages</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/ribbons.html"
										title="Ribbons"><span>Ribbons</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/scrollable-boxes.html"
										title="Scrollable boxes"><span>Scrollable boxes</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/social-boxes.html"
										title="Social boxes"><span>Social boxes</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/spinners.html"
										title="Loading spinners"><span>Loading spinners</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/tile-boxes.html"
										title="Tile boxes"><span>Tile boxes</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/timeline.html"
										title="Timeline"><span>Timeline</span></a></li>
								</ul></li>
							<li><a
								href="https://agileui.com/demo/supina-theme-package/#"
								title="Forms" class="sf-with-ul"><i
									class="glyph-icon icon-linecons-doc"></i> <span>Forms</span> <span
									class="small-badge bg-primary"></span></a>
								<ul style="display: none;">
									<li><a
										href="https://agileui.com/demo/supina-theme-package/forms-validation.html"
										title="Forms validation"><span>Forms validation</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/dropzone-uploader.html"
										title="Dropzone uploader"><span>Dropzone uploader</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/forms-elements.html"
										title="Forms elements"><span>Forms elements</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/image-crop.html"
										title="Image crop"><span>Image crop</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/input-masks.html"
										title="Input masks"><span>Input masks</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/knobs.html"
										title="Input knobs"><span>Input knobs</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/multi-upload.html"
										title="Multi uploader"><span>Multi uploader</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/wizard.html"
										title="Wizard"><span>Wizard</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/wysiwyg-editor.html"
										title="WYSIWYG Editors"><span>WYSIWYG Editors</span></a></li>
								</ul></li>
							<li><a
								href="https://agileui.com/demo/supina-theme-package/#"
								title="Maps" class="sf-with-ul"><i
									class="glyph-icon icon-linecons-location"></i> <span>Maps</span>
									<span class="bs-label label-info">3</span></a>
								<ul style="display: none;">
									<li><a
										href="https://agileui.com/demo/supina-theme-package/google-maps.html"
										title="Google maps"><span>Google maps</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/vector-maps.html"
										title="Vector maps"><span>Vector maps</span></a></li>
								</ul></li>
							<li><a
								href="https://agileui.com/demo/supina-theme-package/#"
								title="Charts" class="sf-with-ul"><i
									class="glyph-icon icon-linecons-calendar"></i> <span>Charts</span></a>
								<ul style="display: none;">
									<li><a
										href="https://agileui.com/demo/supina-theme-package/justgage.html"
										title="JustGage"><span>JustGage</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/morris-charts.html"
										title="Morris charts"><span>Morris charts</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/pie-gages.html"
										title="PieGages charts"><span>PieGages charts</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/sparklines.html"
										title="Sparklines charts"><span>Sparklines charts</span></a></li>
									<li><a
										href="https://agileui.com/demo/supina-theme-package/xcharts.html"
										title="xCharts"><span>xCharts</span></a></li>
								</ul></li>
						</ul>
					</div>
					<div class="divider"></div>
					<div id="sidebar-files" class="mobile-hidden">
						<div class="divider-header">Cloud downloads</div>
						<ul class="files-box">
							<li><i
								class="files-icon glyph-icon font-red icon-file-archive-o"></i>
								<div class="files-content">
									<b>blog_export.zip</b>
									<div class="files-date">
										<i class="glyph-icon icon-clock-o"></i> added on <b>22.10.2014</b>
									</div>
								</div>
								<div class="files-buttons">
									<a href="https://agileui.com/demo/supina-theme-package/#"
										class="btn btn-xs hover-info tooltip-button"
										data-placement="right" title="" data-original-title="Download"><i
										class="glyph-icon icon-cloud-download"></i></a> <a
										href="https://agileui.com/demo/supina-theme-package/#"
										class="btn btn-xs hover-danger tooltip-button"
										data-placement="right" title="" data-original-title="Delete"><i
										class="glyph-icon icon-times"></i></a>
								</div></li>
							<li class="divider"></li>
							<li><i class="files-icon glyph-icon icon-file-code-o"></i>
								<div class="files-content">
									<b>homepage-test.html</b>
									<div class="files-date">
										<i class="glyph-icon icon-clock-o"></i> added <b>19.10.2014</b>
									</div>
								</div>
								<div class="files-buttons">
									<a href="https://agileui.com/demo/supina-theme-package/#"
										class="btn btn-xs hover-info tooltip-button"
										data-placement="right" title="" data-original-title="Download"><i
										class="glyph-icon icon-cloud-download"></i></a> <a
										href="https://agileui.com/demo/supina-theme-package/#"
										class="btn btn-xs hover-danger tooltip-button"
										data-placement="right" title="" data-original-title="Delete"><i
										class="glyph-icon icon-times"></i></a>
								</div></li>
							<li class="divider"></li>
							<li><i
								class="files-icon glyph-icon font-yellow icon-file-image-o"></i>
								<div class="files-content">
									<b>monthlyReport.jpg</b>
									<div class="files-date">
										<i class="glyph-icon icon-clock-o"></i> added on <b>10.9.2014</b>
									</div>
								</div>
								<div class="files-buttons">
									<a href="https://agileui.com/demo/supina-theme-package/#"
										class="btn btn-xs hover-info tooltip-button"
										data-placement="right" title="" data-original-title="Download"><i
										class="glyph-icon icon-cloud-download"></i></a> <a
										href="https://agileui.com/demo/supina-theme-package/#"
										class="btn btn-xs hover-danger tooltip-button"
										data-placement="right" title="" data-original-title="Delete"><i
										class="glyph-icon icon-times"></i></a>
								</div></li>
							<li class="divider"></li>
							<li><i
								class="files-icon glyph-icon font-green icon-file-word-o"></i>
								<div class="files-content">
									<b>new_presentation.doc</b>
									<div class="files-date">
										<i class="glyph-icon icon-clock-o"></i> added on <b>5.9.2014</b>
									</div>
								</div>
								<div class="files-buttons">
									<a href="https://agileui.com/demo/supina-theme-package/#"
										class="btn btn-xs hover-info tooltip-button"
										data-placement="right" title="" data-original-title="Download"><i
										class="glyph-icon icon-cloud-download"></i></a> <a
										href="https://agileui.com/demo/supina-theme-package/#"
										class="btn btn-xs hover-danger tooltip-button"
										data-placement="right" title="" data-original-title="Delete"><i
										class="glyph-icon icon-times"></i></a>
								</div></li>
						</ul>
					</div>
				</div>
				<div id="ascrail2004" class="nicescroll-rails"
					style="width: 6px; z-index: 5555; background: rgb(42, 42, 42); cursor: default; position: absolute; top: 0px; left: 229px; height: 622px; display: block; opacity: 0;">
					<div
						style="position: relative; top: 0px; float: right; width: 6px; height: 459px; background-color: rgb(0, 0, 0); border: 0px; background-clip: padding-box; border-radius: 0px;"></div>
				</div>
			</div>
			<div id="page-content-wrapper" class="">
				<div id="page-nav">
					<div class="dropdown sp-btn">
						<a href="https://agileui.com/demo/supina-theme-package/#"
							class="btn btn-primary popover-button" data-toggle="dropdown"
							data-original-title="" title=""><i
							class="glyph-icon icon-picture-o opacity-80"></i> <i
							class="glyph-icon icon-caret-down"></i></a>
						<div class="dropdown-menu">
							<div class="box-sm text-center">
								<div class="popover-title display-block clearfix pad10A">Layout
									color</div>
								<div class="pad10A clearfix change-layout-theme">
									<a href="javascript:;" class="choose-theme"
										framework-color="default" layout-color="light" title="Light"><span
										style="background: #fafafa"></span></a> <a href="javascript:;"
										class="choose-theme" framework-color="default"
										layout-color="default" title="Default"><span
										style="background: #232323"></span></a>
								</div>
								<div class="popover-title display-block clearfix pad10A">Framework
									color</div>
								<div class="pad10A clearfix change-layout-theme">
									<a href="javascript:;" class="choose-theme"
										framework-color="default" layout-color="light" title="Default"><span
										style="background: #f87500"></span></a> <a href="javascript:;"
										class="choose-theme" framework-color="blue"
										layout-color="default" title="Blue"><span
										style="background: #0084ff"></span></a> <a href="javascript:;"
										class="choose-theme" framework-color="green"
										layout-color="light" title="Green"><span
										style="background: #36be00"></span></a>
								</div>
							</div>
						</div>
					</div>
					<ul id="page-subnav">
						<li><a
							href="https://agileui.com/demo/supina-theme-package/social-boxes.html"
							title="Social boxes"><span>Social boxes</span></a></li>
						<li><a
							href="https://agileui.com/demo/supina-theme-package/spinners.html"
							title="Loading spinners"><span>Loading spinners</span></a></li>
						<li><a
							href="https://agileui.com/demo/supina-theme-package/tile-boxes.html"
							title="Tile boxes"><span>Tile boxes</span></a></li>
						<li><a
							href="https://agileui.com/demo/supina-theme-package/timeline.html"
							title="Timeline"><span>Timeline</span></a></li>
					</ul>
					<div id="page-nav-right">
						<a href="https://agileui.com/demo/supina-theme-package/#" title=""
							class="btn sb-open-right no-shadow updateEasyPieChart"><i
							class="glyph-icon icon-cogs"></i> Statistics</a> <a
							href="https://agileui.com/demo/supina-theme-package/#" title=""
							class="btn sb-open-left no-shadow updateEasyPieChart"><i
							class="glyph-icon icon-bullhorn"></i> Chat</a>
					</div>
				</div>
				<link rel="stylesheet" type="text/css" href="./supina/xcharts.css">
				<script type="text/javascript" src="./supina/d3.js.download"></script>
				<script type="text/javascript" src="./supina/xcharts.js.download"></script>
				
				<div id="page-content" style="min-height: 564px;">
					<div class="row">
						<div class="col-md-4">
							<div class="row">
								<div class="col-md-12">
									<div class="panel-layout">
										<div class="panel-box">
											<div class="panel-content bg-white">
												<div class="">
													<img src="./supina/testimonial3.jpg" alt=""
														style="width: 60px"
														class="img-bordered border-red img-circle mrg10B">
													<h5 class="font-bold">${station.getCallsign()}</h5>
													<p>${station.getAttribute("city")}<br /><small>${station.getAttribute("region")}, ${station.getAttribute("country")}</small><p>
												</div>
											</div>
											<div class="panel-content pad15A bg-white">
												<div class="center-vertical">
													<ul
														class="center-content list-group list-group-separator row mrg0A">
														<li class="col-md-6"><a
															href="https://agileui.com/demo/supina-theme-package/#"
															title=""><i class="glyph-icon opacity-60 icon-inbox"></i>
																<p class="mrg5T">Send Message</p></a></li>
														<li class="col-md-6"><a
															href="https://agileui.com/demo/supina-theme-package/#"
															title=""><i class="glyph-icon opacity-60 icon-group"></i>
																<p class="mrg5T">Groups</p></a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
								<div class="row">
									<div class="col-md-12">
										<div class="panel-layout">
											<div class="panel-box">
												<div class="panel-content bg-white">
													<ul class="nav nav-tabs" id="activityTabs" role="tablist">
														<li class="nav-item"><a class="nav-link active"
															id="activity-bands-tab" data-toggle="tab" href="#bands"
															role="tab" aria-controls="bands" aria-selected="true">Bands</a></li>
														<li class="nav-item"><a class="nav-link" id="modes-tab"
															data-toggle="tab" href="#modes" role="tab" aria-controls="modes"
															aria-selected="false">Modes</a></li>
													</ul>
													<div class="tab-content" id="activityTabContent">
														<div class="tab-pane fade show active" id="bands"
															role="tabpanel" aria-labelledby="bands-tab">
															<canvas id="bandChart" width="100%" height="50"></canvas>
														</div>
														<div class="tab-pane fade show" id="modes"
															role="tabpanel" aria-labelledby="modes-tab">
															<canvas id="modeChart" width="100%" height="50"></canvas>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						
							<div class="col-md-8">
								<div class="content-box border-top border-blue-alt mrg25B">
									<h3 class="content-box-header">
										Locations <small>(The Ultimate Admin Template)</small>
										<div class="btn-group btn-group-sm float-right"
											data-toggle="buttons">
											<a href="https://agileui.com/demo/supina-theme-package/#"
												class="btn btn-default"><input name="radio-toggle-1"
												type="radio"> Weekly</a> <a
												href="https://agileui.com/demo/supina-theme-package/#"
												class="btn btn-default"><input name="radio-toggle-2"
												type="radio"> Monthly</a> <a
												href="https://agileui.com/demo/supina-theme-package/#"
												class="btn btn-default"><input name="radio-toggle-3"
												type="radio"> Yearly</a>
										</div>
									</h3>
									<div id="map" class="content-box-wrapper"></div>
								</div>
								<div class="content-box border-top border-blue-alt mrg25B">
									<h3 class="content-box-header">
										Spots
										<div class="btn-group btn-group-sm float-right"
											data-toggle="buttons">
											<a href="https://agileui.com/demo/supina-theme-package/#"
												class="btn btn-default"><input name="radio-toggle-1"
												type="radio"> Weekly</a> <a
												href="https://agileui.com/demo/supina-theme-package/#"
												class="btn btn-default"><input name="radio-toggle-2"
												type="radio"> Monthly</a> <a
												href="https://agileui.com/demo/supina-theme-package/#"
												class="btn btn-default"><input name="radio-toggle-3"
												type="radio"> Yearly</a>
										</div>
									</h3>
									<table class="table table-hover">
										<tr>
											<th>Date</th>
											<th>Frequency</th>
											<th>Mode</th>
											<th>By</th>
										</tr>
										<c:forEach items="${station.getActivity()}" var="spot">
											<tr>
												<td>${spot.getCreated_at()}</td>
												<td>${spot.getFrequency()}</td>
												<td>${spot.getMode()}</td>
												<td>${spot.getSpotter()}</td>
											</tr>
										</c:forEach>
									</table>
								</div>
							</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="content-box border-top border-blue-alt mrg25B">
								<h3 class="content-box-header">
									Logbook <small>(from observed sources, this may not be complete)</small>
									<div class="btn-group btn-group-sm float-right"
										data-toggle="buttons">
										<a href="https://agileui.com/demo/supina-theme-package/#"
											class="btn btn-default"><input name="radio-toggle-1"
											type="radio"> Weekly</a> <a
											href="https://agileui.com/demo/supina-theme-package/#"
											class="btn btn-default"><input name="radio-toggle-2"
											type="radio"> Monthly</a> <a
											href="https://agileui.com/demo/supina-theme-package/#"
											class="btn btn-default"><input name="radio-toggle-3"
											type="radio"> Yearly</a>
									</div>
								</h3>
								<table class="table table-hover">
									<tr>
										<th>Date</th>
										<th>Callsign</th>
										<th>Frequency</th>
										<th>Mode</th>
										<th>RST(s)</th>
										<th>RST(r)</th>
										<th>Comments</th>
									</tr>
									<c:forEach items="${station.getLogbook()}" var="logEntry">
										<tr>
											<td>${logEntry.getCreated_at()}</td>
											<td>${logEntry.getCallsign()}</td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="tooltip top fade in"></div>
	<div class="sb-slidebar sb-left sb-style-overlay"
		style="margin-left: -337px;">
		<div class="scrollable-content scrollable-nice" tabindex="5002"
			style="overflow-y: hidden; outline: none;">
			<div class="pad10A">
				<div class="divider-header">Online</div>
				<ul class="chat-box">
					<li><div class="status-badge">
							<img class="img-circle" width="40"
								src="./supina/testimonial1.jpg" alt="">
							<div class="small-badge bg-green"></div>
						</div> <b>Grace Padilla</b>
						<p>On the other hand, we denounce...</p> <a
						href="https://agileui.com/demo/supina-theme-package/#"
						class="btn btn-md no-border radius-all-100 btn-black"><i
							class="glyph-icon icon-comments-o"></i></a></li>
					<li><div class="status-badge">
							<img class="img-circle" width="40"
								src="./supina/testimonial2.jpg" alt="">
							<div class="small-badge bg-green"></div>
						</div> <b>Carl Gamble</b>
						<p>Dislike men who are so beguiled...</p> <a
						href="https://agileui.com/demo/supina-theme-package/#"
						class="btn btn-md no-border radius-all-100 btn-black"><i
							class="glyph-icon icon-comments-o"></i></a></li>
					<li><div class="status-badge">
							<img class="img-circle" width="40"
								src="./supina/testimonial3.jpg" alt="">
							<div class="small-badge bg-green"></div>
						</div> <b>Michael Poole</b>
						<p>Of pleasure of the moment, so...</p> <a
						href="https://agileui.com/demo/supina-theme-package/#"
						class="btn btn-md no-border radius-all-100 btn-black"><i
							class="glyph-icon icon-comments-o"></i></a></li>
					<li><div class="status-badge">
							<img class="img-circle" width="40"
								src="./supina/testimonial4.jpg" alt="">
							<div class="small-badge bg-green"></div>
						</div> <b>Bill Green</b>
						<p>That they cannot foresee the...</p> <a
						href="https://agileui.com/demo/supina-theme-package/#"
						class="btn btn-md no-border radius-all-100 btn-black"><i
							class="glyph-icon icon-comments-o"></i></a></li>
					<li><div class="status-badge">
							<img class="img-circle" width="40"
								src="./supina/testimonial5.jpg" alt="">
							<div class="small-badge bg-green"></div>
						</div> <b>Cheryl Soucy</b>
						<p>Pain and trouble that are bound...</p> <a
						href="https://agileui.com/demo/supina-theme-package/#"
						class="btn btn-md no-border radius-all-100 btn-black"><i
							class="glyph-icon icon-comments-o"></i></a></li>
				</ul>
				<div class="divider-header">Idle</div>
				<ul class="chat-box">
					<li><div class="status-badge">
							<img class="img-circle" width="40"
								src="./supina/testimonial6.jpg" alt="">
							<div class="small-badge bg-orange"></div>
						</div> <b>Jose Kramer</b>
						<p>Equal blame belongs to those...</p> <a
						href="https://agileui.com/demo/supina-theme-package/#"
						class="btn btn-md no-border radius-all-100 btn-black"><i
							class="glyph-icon icon-comments-o"></i></a></li>
					<li><div class="status-badge">
							<img class="img-circle" width="40"
								src="./supina/testimonial7.jpg" alt="">
							<div class="small-badge bg-orange"></div>
						</div> <b>Dan Garcia</b>
						<p>Weakness of will, which is same...</p> <a
						href="https://agileui.com/demo/supina-theme-package/#"
						class="btn btn-md no-border radius-all-100 btn-black"><i
							class="glyph-icon icon-comments-o"></i></a></li>
					<li><div class="status-badge">
							<img class="img-circle" width="40"
								src="./supina/testimonial8.jpg" alt="">
							<div class="small-badge bg-orange"></div>
						</div> <b>Edward Bridges</b>
						<p>These cases are perfectly simple...</p> <a
						href="https://agileui.com/demo/supina-theme-package/#"
						class="btn btn-md no-border radius-all-100 btn-black"><i
							class="glyph-icon icon-comments-o"></i></a></li>
				</ul>
				<div class="divider-header">Offline</div>
				<ul class="chat-box">
					<li><div class="status-badge">
							<img class="img-circle" width="40"
								src="./supina/testimonial1.jpg" alt="">
							<div class="small-badge bg-red"></div>
						</div> <b>Randy Herod</b>
						<p>In a free hour, when our power...</p> <a
						href="https://agileui.com/demo/supina-theme-package/#"
						class="btn btn-md no-border radius-all-100 btn-black"><i
							class="glyph-icon icon-comments-o"></i></a></li>
					<li><div class="status-badge">
							<img class="img-circle" width="40"
								src="./supina/testimonial2.jpg" alt="">
							<div class="small-badge bg-red"></div>
						</div> <b>Patricia Bagley</b>
						<p>when nothing prevents our being...</p> <a
						href="https://agileui.com/demo/supina-theme-package/#"
						class="btn btn-md no-border radius-all-100 btn-black"><i
							class="glyph-icon icon-comments-o"></i></a></li>
				</ul>
			</div>
		</div>
		<div id="ascrail2002" class="nicescroll-rails"
			style="width: 6px; z-index: 5555; background: rgb(205, 205, 205); cursor: default; position: absolute; top: 0px; left: -6px; height: 100px; display: none;">
			<div
				style="position: relative; top: 0px; float: right; width: 6px; height: 0px; background-color: rgb(54, 54, 54); border: 0px; background-clip: padding-box; border-radius: 0px;"></div>
		</div>
	</div>
	<div class="sb-slidebar sb-right sb-style-overlay"
		style="margin-right: -337px;">
		<div class="scrollable-content scrollable-nice" tabindex="5003"
			style="overflow-y: hidden; outline: none;">
			<div class="pad15A">
				<a href="https://agileui.com/demo/supina-theme-package/#" title=""
					data-toggle="collapse" data-target="#sidebar-toggle-1"
					class="popover-title">Cloud status <span class="caret"></span></a>
				<div id="sidebar-toggle-1" class="collapse in">
					<div class="pad15A">
						<div class="row">
							<div class="col-md-4">
								<div
									class="text-center font-gray pad5B text-transform-upr font-size-12">New
									visits</div>
								<div class="chart-alt-3 font-gray-dark easyPieChart"
									data-percent="55"
									style="width: 50px; height: 50px; line-height: 50px;">
									<span>54</span>%
									<canvas width="50" height="50"></canvas>
								</div>
							</div>
							<div class="col-md-4">
								<div
									class="text-center font-gray pad5B text-transform-upr font-size-12">Bounce
									rate</div>
								<div class="chart-alt-3 font-gray-dark easyPieChart"
									data-percent="46"
									style="width: 50px; height: 50px; line-height: 50px;">
									<span>45</span>%
									<canvas width="50" height="50"></canvas>
								</div>
							</div>
							<div class="col-md-4">
								<div
									class="text-center font-gray pad5B text-transform-upr font-size-12">Server
									load</div>
								<div class="chart-alt-3 font-gray-dark easyPieChart"
									data-percent="92"
									style="width: 50px; height: 50px; line-height: 50px;">
									<span>91</span>%
									<canvas width="50" height="50"></canvas>
								</div>
							</div>
						</div>
						<div class="divider mrg15T mrg15B"></div>
						<div class="text-center">
							<a href="https://agileui.com/demo/supina-theme-package/#"
								class="btn center-div btn-info mrg5T btn-sm text-transform-upr updateEasyPieChart"><i
								class="glyph-icon icon-refresh"></i> Update charts</a>
						</div>
					</div>
				</div>
				<div class="clear"></div>
				<a href="https://agileui.com/demo/supina-theme-package/#" title=""
					data-toggle="collapse" data-target="#sidebar-toggle-6"
					class="popover-title">Latest transfers <span class="caret"></span></a>
				<div id="sidebar-toggle-6" class="collapse in">
					<ul class="files-box">
						<li><i
							class="files-icon glyph-icon font-red icon-file-archive-o"></i>
							<div class="files-content">
								<b>blog_export.zip</b>
								<div class="files-date">
									<i class="glyph-icon icon-clock-o"></i> added on <b>22.10.2014</b>
								</div>
							</div>
							<div class="files-buttons">
								<a href="https://agileui.com/demo/supina-theme-package/#"
									class="btn btn-xs hover-info tooltip-button"
									data-placement="right" title="" data-original-title="Download"><i
									class="glyph-icon icon-cloud-download"></i></a> <a
									href="https://agileui.com/demo/supina-theme-package/#"
									class="btn btn-xs hover-danger tooltip-button"
									data-placement="right" title="" data-original-title="Delete"><i
									class="glyph-icon icon-times"></i></a>
							</div></li>
						<li class="divider"></li>
						<li><i class="files-icon glyph-icon icon-file-code-o"></i>
							<div class="files-content">
								<b>homepage-test.html</b>
								<div class="files-date">
									<i class="glyph-icon icon-clock-o"></i> added <b>19.10.2014</b>
								</div>
							</div>
							<div class="files-buttons">
								<a href="https://agileui.com/demo/supina-theme-package/#"
									class="btn btn-xs hover-info tooltip-button"
									data-placement="right" title="" data-original-title="Download"><i
									class="glyph-icon icon-cloud-download"></i></a> <a
									href="https://agileui.com/demo/supina-theme-package/#"
									class="btn btn-xs hover-danger tooltip-button"
									data-placement="right" title="" data-original-title="Delete"><i
									class="glyph-icon icon-times"></i></a>
							</div></li>
						<li class="divider"></li>
						<li><i
							class="files-icon glyph-icon font-yellow icon-file-image-o"></i>
							<div class="files-content">
								<b>monthlyReport.jpg</b>
								<div class="files-date">
									<i class="glyph-icon icon-clock-o"></i> added on <b>10.9.2014</b>
								</div>
							</div>
							<div class="files-buttons">
								<a href="https://agileui.com/demo/supina-theme-package/#"
									class="btn btn-xs hover-info tooltip-button"
									data-placement="right" title="" data-original-title="Download"><i
									class="glyph-icon icon-cloud-download"></i></a> <a
									href="https://agileui.com/demo/supina-theme-package/#"
									class="btn btn-xs hover-danger tooltip-button"
									data-placement="right" title="" data-original-title="Delete"><i
									class="glyph-icon icon-times"></i></a>
							</div></li>
						<li class="divider"></li>
						<li><i
							class="files-icon glyph-icon font-green icon-file-word-o"></i>
							<div class="files-content">
								<b>new_presentation.doc</b>
								<div class="files-date">
									<i class="glyph-icon icon-clock-o"></i> added on <b>5.9.2014</b>
								</div>
							</div>
							<div class="files-buttons">
								<a href="https://agileui.com/demo/supina-theme-package/#"
									class="btn btn-xs hover-info tooltip-button"
									data-placement="right" title="" data-original-title="Download"><i
									class="glyph-icon icon-cloud-download"></i></a> <a
									href="https://agileui.com/demo/supina-theme-package/#"
									class="btn btn-xs hover-danger tooltip-button"
									data-placement="right" title="" data-original-title="Delete"><i
									class="glyph-icon icon-times"></i></a>
							</div></li>
					</ul>
				</div>
				<div class="clear"></div>
				<a href="https://agileui.com/demo/supina-theme-package/#" title=""
					data-toggle="collapse" data-target="#sidebar-toggle-3"
					class="popover-title">Tasks for today <span class="caret"></span></a>
				<div id="sidebar-toggle-3" class="collapse in">
					<ul class="progress-box">
						<li><div class="progress-title">
								New features development <b>87%</b>
							</div>
							<div class="progressbar-smaller progressbar" data-value="87">
								<div class="progressbar-value bg-azure"
									style="width: 0px; overflow: hidden;">
									<div class="progressbar-overlay"></div>
								</div>
							</div></li>
						<li><div class="progress-title">
								Finishing uploading files <b>66%</b>
							</div>
							<div class="progressbar-smaller progressbar" data-value="66">
								<div class="progressbar-value bg-red"
									style="width: 0px; overflow: hidden;">
									<div class="progressbar-overlay"></div>
								</div>
							</div></li>
						<li><div class="progress-title">
								Creating tutorials <b>58%</b>
							</div>
							<div class="progressbar-smaller progressbar" data-value="58">
								<div class="progressbar-value bg-blue-alt"
									style="width: 0px; overflow: hidden;"></div>
							</div></li>
						<li><div class="progress-title">
								Frontend bonus theme <b>74%</b>
							</div>
							<div class="progressbar-smaller progressbar" data-value="74">
								<div class="progressbar-value bg-purple"
									style="width: 0px; overflow: hidden;"></div>
							</div></li>
					</ul>
				</div>
				<div class="clear"></div>
				<a href="https://agileui.com/demo/supina-theme-package/#" title=""
					data-toggle="collapse" data-target="#sidebar-toggle-4"
					class="popover-title">Pending notifications <span
					class="bs-label bg-orange tooltip-button" title=""
					data-original-title="Label example">New</span> <span class="caret"></span></a>
				<div id="sidebar-toggle-4" class="collapse in">
					<ul class="notifications-box notifications-box-alt">
						<li><span
							class="bg-purple icon-notification glyph-icon icon-users"></span>
							<span class="notification-text">This is an error
								notification</span>
							<div class="notification-time">
								a few seconds ago <span class="glyph-icon icon-clock-o"></span>
							</div> <a href="https://agileui.com/demo/supina-theme-package/#"
							class="notification-btn btn btn-xs btn-black tooltip-button"
							data-placement="right" title=""
							data-original-title="View details"><i
								class="glyph-icon icon-arrow-right"></i></a></li>
						<li><span
							class="bg-warning icon-notification glyph-icon icon-ticket"></span>
							<span class="notification-text">This is a warning
								notification</span>
							<div class="notification-time">
								<b>15</b> minutes ago <span class="glyph-icon icon-clock-o"></span>
							</div> <a href="https://agileui.com/demo/supina-theme-package/#"
							class="notification-btn btn btn-xs btn-black tooltip-button"
							data-placement="right" title=""
							data-original-title="View details"><i
								class="glyph-icon icon-arrow-right"></i></a></li>
						<li><span
							class="bg-green icon-notification glyph-icon icon-random"></span>
							<span class="notification-text font-green">A success
								message example.</span>
							<div class="notification-time">
								<b>2 hours</b> ago <span class="glyph-icon icon-clock-o"></span>
							</div> <a href="https://agileui.com/demo/supina-theme-package/#"
							class="notification-btn btn btn-xs btn-black tooltip-button"
							data-placement="right" title=""
							data-original-title="View details"><i
								class="glyph-icon icon-arrow-right"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="ascrail2003" class="nicescroll-rails"
			style="width: 6px; z-index: 5555; background: rgb(205, 205, 205); cursor: default; position: absolute; top: 0px; left: -6px; height: 100px; display: none;">
			<div
				style="position: relative; top: 0px; float: right; width: 6px; height: 0px; background-color: rgb(54, 54, 54); border: 0px; background-clip: padding-box; border-radius: 0px;"></div>
		</div>
	</div>
	<link rel="stylesheet" type="text/css" href="./supina/demo-widgets.css">
	<script type="text/javascript" src="./supina/demo-widgets.js.download"></script>
	<ul
		class="ui-autocomplete ui-front ui-menu ui-widget ui-widget-content"
		id="ui-id-1" tabindex="0"
		style="display: none; top: 36px; left: 245px; width: 200px;">
		<li class="ui-menu-item" id="ui-id-7" tabindex="-1">Java</li>
		<li class="ui-menu-item" id="ui-id-8" tabindex="-1">JavaScript</li>
	</ul>
	<span role="status" aria-live="assertive" aria-relevant="additions"
		class="ui-helper-hidden-accessible"><div style="display: none;">3
			results are available, use up and down arrow keys to navigate.</div>
		<div style="display: none;">2 results are available, use up and
			down arrow keys to navigate.</div>
		<div>2 results are available, use up and down arrow keys to
			navigate.</div></span>
	<script src="https://unpkg.com/leaflet@1.2.0/dist/leaflet.js"
		integrity="sha512-lInM/apFSqyy1o6s89K4iQUKg6ppXEgsVxT35HbzUupEVRh2Eu9Wdl4tHj7dZO0s1uvplcYGmt3498TtHq+log=="
		crossorigin=""></script>
	<script src="js/leaflet.ajax.min.js"></script>
	<script src="js/l.maidenheadgrid.js"></script>
	<script>
		// Set up location map
		
		var map = L.map('map').setView([ ${locations.get(0).getLatitude()}, ${locations.get(0).getLongitude()} ], 13);
		L
				.tileLayer(
						'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png ',
						{
							attribution : 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
							maxZoom : 18,
						}).addTo(map);

		var pointList = [
			<c:forEach items="${locations}" var="location">
				new L.LatLng(${location.getLatitude()}, ${location.getLongitude()}),
			</c:forEach>
		];

		var track = new L.Polyline(pointList, {
			color : 'red',
			weight : 3,
			opacity : 0.5,
			smoothFactor : 1
		});
		track.addTo(map);

		var grid_square = new L.geoJson(null, {
			style : {
				"color" : "#ffffff",
				"weight" : 5,
				"opacity" : 0.65,
				"fill-opacity" : 0
			}
		});

		grid_square.addTo(map);

		$.ajax({
					dataType : "json",
					url : "js/mh.2.geo.json",
					success : function(data) {
						console.log("AJAX Finished");
						$(data.features)
								.each(
										function(key, data) {
											var label = L
													.marker(
															L
																	.latLngBounds(
																			L
																					.latLng(
																							data.geometry.coordinates[0][0][1],
																							data.geometry.coordinates[0][0][0]),
																			L
																					.latLng(
																							data.geometry.coordinates[0][2][1],
																							data.geometry.coordinates[0][2][0]))
																	.getCenter(),
															{
																icon : new L.DivIcon(
																		{
																			className : 'gridSquareLabel',
																			html : data.properties.name,
																			iconSize : [
																					20,
																					12 ]
																		})
															}).addTo(map);

											console.log(label);

											grid_square.addData(data);
										});
						console.log("Finished processing geojson");
					},
					error : function(jqXHR, textStatus, errorThrown) {
						console.log("Oops: " + errorThrown);
					}
				});
		
	</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.min.js"></script>
	<script>
		var bandCtx = document.getElementById("bandChart").getContext(
				'2d');
		var bandChart = new Chart(bandCtx,
				{
					type : 'bar',
					data : {
						labels : [
							<c:forEach items="${bandUse.keySet()}" var="bandKey">
								"${bandKey}", 
							</c:forEach>
						],
						datasets : [ {
							label : '# of spots',
							data : [
								<c:forEach items="${bandUse.keySet()}" var="bandKey">
									${bandUse.get(bandKey)}
								</c:forEach>
							],
							backgroundColor : [ 'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(255, 206, 86, 0.2)', // Yellow = VHF
							'rgba(255, 206, 86, 0.2)', // Yellow = VHF
							'rgba(255, 206, 86, 0.2)', // Yellow = VHF
							'rgba(255, 206, 86, 0.2)', // Yellow = VHF
							'rgba(75, 192, 192, 0.2)' ], // Green = UHF
							borderColor : [ 'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)' ],
							borderWidth : 1
						} ]
					},
					options : {
						scales : {
							yAxes : [ {
								ticks : {
									beginAtZero : true
								}
							} ]
						}
					}
				});
		var modeCtx = document.getElementById("modeChart").getContext('2d');
		var modeChart = new Chart(modeCtx, {
			type : 'bar',
			data : {
				labels : [
					<c:forEach items="${modeUse.keySet()}" var="modeKey">
						"${modeKey}", 
					</c:forEach>
				],
				datasets : [ {
					label : '# of spots',
					data : [
						<c:forEach items="${modeUse.keySet()}" var="modeKey">
							${modeUse.get(modeKey)}
						</c:forEach>
					],
					backgroundColor : [ 'rgba(54, 162, 235, 0.2)', // Blue = Voice
					'rgba(255, 206, 86, 0.2)', // Yellow = CW
					'rgba(75, 192, 192, 0.2)',// Green = RTTY
					'rgba(153, 102, 255, 0.2)' ], // Purple = PSK31
					borderColor : [ 'rgba(54, 162, 235, 1)',
							'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)',
							'rgba(153, 102, 255, 1)' ],
					borderWidth : 1
				} ]
			},
			options : {
				scales : {
					yAxes : [ {
						ticks : {
							beginAtZero : true
						}
					} ]
				}
			}
		});
	</script>

</body>
</html>