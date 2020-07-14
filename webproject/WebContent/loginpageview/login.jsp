<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/loginpageview/css/login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		init('${requestScope.id}');
	});
</script>
</head>
<body>
<!-- 	<header>
		<a href="#" class="logo">Logo</a>
		<ul>
			<li><a href="#">Home</a></li>
			<li><a href="#">Sign In</a></li>
		</ul>
	</header> -->
<section class="signin">
<div class="signinbox" id="signinbox">
	<div class="form-container sign-up-container">
		<form action="signup.do" method="post">
			<h1>Create Account</h1>
			<input type="text" name="fid" id="fid" placeholder="ID" />
			<input type="password" name="fpass" id="fpass" placeholder="Password" />
			<input type="text" name="fname" id="fname" placeholder="Nickname" />
			<input type="email" name="email" id="email" placeholder="Email" />
			<button type="submit">Sign Up</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
		<form action="main.do" method="post">
			<h1>Sign in</h1>
			<input type="text" name="fid" id="fid" placeholder="ID" />
			<input type="password" name="fpass" id="fpass" placeholder="Password" />
			<a href="#">Forgot your password?</a>
			<button type="submit">Sign In</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Hello, Friend!</h1>
				<p>Enter your personal details and start journey with us</p>
				<button class="ghost" id="signUp">Sign Up</button>
			</div>
		</div>
	</div>
</div>
</section>
	
	<section class="mainPage">
		<img src="${pageContext.request.contextPath}/loginpageview/images/skybg.jpg" id="skybg">
		<img src="${pageContext.request.contextPath}/loginpageview/images/moon.png" id="moon">
		<img src="${pageContext.request.contextPath}/loginpageview/images/mountain.png" id="mountain">
		<img src="${pageContext.request.contextPath}/loginpageview/images/road.png" id="road">
		<h2 id="mainText">Connect</h2>
	</section>
	
	<a class="goTopBtn" href="#"><img src="${pageContext.request.contextPath}/loginpageview/images/upArrow.png" id="upArrow"></a>
	
	<div class="container" id="blur">
		<div class="content">
			<h2>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</h2>
			<img src="${pageContext.request.contextPath}/loginpageview/images/fox.jpg">
			<a href="#" onclick="toggle()"><span>Read More</span></a>
		</div>
		<div class="content">
			<h2>Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word Random word.</h2>
			<img src="${pageContext.request.contextPath}/loginpageview/images/fox.jpg">
			<a href="#" onclick="toggle()"><span>Read More</span></a>
		</div>
	</div>
	<div id="popup">
		<h2>"Lorem ipsum dolor sit amet, consectetur adipiscing elit</h2>
		<p>sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
		<a href="#" onclick="toggle()"><span>Close</span></a>
	</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/loginpageview/js/login.js"></script>
</body>
</html>
