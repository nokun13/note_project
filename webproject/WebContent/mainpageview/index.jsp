<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
  margin: 0;
}

* {
  box-sizing: border-box;
}

nav{
padding : 5px 20px;
 
 height: 10vh;
}
.nav-contents {
  width: 1010px;
  margin: 0 auto;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.nav-logo {
  display: flex;
  align-items: center;
}


.logo-text {
  height: 29px;
  margin-top: 5px;
}

.vertical-line {
  background-color: #262626;
  height: 28px;
  margin: 0 16px;
  width: 1px;
}

.nav-search {
  width: 215px;
  border: solid 1px #dbdbdb;
  color: #262626;
  font-weight: lighter;
  outline: 0;
  padding: 8px 10px 8px 26px;
  float:right;
  
}
.search-btn{
width:35px;
height:34px;
float:right;

}

.nav-link {
  float: right;
  display: flex;
  align-items: center;
}

.nav-link img {
  height: 30px;
}

.nav-link img:not(:first-child) {
  margin-left: 30px;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
	<body>
	<nav>
	  <div class="nav-contents">
			<div class="nav-logo">
				<img class="logo-img" src=""/>

				<h1>logo</h1>
			</div>
			
          <div>
			<input class="nav-search" placeholder="검색" >
			<img class="search-btn" src="이미지/검색.JPG"/>
		</div>
			
				

			<div class="nav-link">
				<img src="이미지/home.JPG"/>
				<img src="이미지/write.JPG"/>
				<img src="이미지/profile.JPG"/>
			</div>
		</div>
	</nav>
	
	
</body>

</html>