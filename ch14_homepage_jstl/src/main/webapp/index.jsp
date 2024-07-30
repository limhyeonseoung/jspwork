<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="resources/CSS/index.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css"/>
	</head>
	<body>
		<header>
			<div class="logo">
				<img src="https://www.tjoeun.co.kr/images/logo.gif?v=20190918">
			</div>
			
			<div id="login">
			<c:if test="${ not empty idKey }">
				<p>[${idKey}님이 접속하셨습니다]</p>
			</c:if>
			</div>
			
			<nav>
				<ul class="nav">
					<li><a href="vote/voteList.jsp">투표프로그램</a></li>
					<li><a href="board/list.jsp">게시판</a></li>
				<c:choose>
					<c:when test="${ empty idKey }">
						<li><a href="member/login.jsp">로그인</a></li>
					</c:when>					
					<c:otherwise>
						<li><a href="member/logout.jsp">로그아웃</a></li>
					</c:otherwise>
				</c:choose>	
				</ul>
			</nav>
		</header>
		
		<article>
			<section class="slider">
				<div><img src="resources/img/home_1.jpg" alt="home image 1"></div>
				<div><img src="resources/img/home_2.jpg" alt="home image 2"></div>
				<div><img src="resources/img/home_3.jpg" alt="home image 3"></div>
				<div><img src="resources/img/home_4.jpg" alt="home image 4"></div>
				<div><img src="resources/img/home_5.jpg" alt="home image 5"></div>
			</section>
		</article>
	
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				$('.slider').slick({
					dots: true,
					infinite: true,
					speed: 500,
					slidesToShow: 1,
					slidesToScroll: 1,
					autoplay: true,
					autoplaySpeed: 1000,
				});
			});
		</script>
	</body>
	</html>
	