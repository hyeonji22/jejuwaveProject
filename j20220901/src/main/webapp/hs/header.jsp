<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   String context = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="<%=context%>/css/header_main.css">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
<script src="<%=context%>/js/index.js" defer="defer"></script>
</head>
<body>
<header id="header" class="Headers_HeaderMainHeader burgkU">
		<div class="Headers__InnerSection bQvPOR">
			<div class="Headers__HeaderTopWrapDiv kKJwFS">
				<div class="Headers_HeaderTopInnerDiv cMXtHR">
					<img src="<%=context%>/hs_images/brand_logo.png" alt="logo" class="WebHeader_LogoImg hsELiP" onClick="location.href='${context}index.jsp'">
				</div>
				<div class="Headers__HeaderTopInnerDiv-sc-1la7hl4-3 dnYUeR">
					<div width="300px"
						class="Search__SearchInputWrappper-sc-1ef83fv-0 beOSqn">
						<span
							class="CommonIconSet__InitialIcon-sc-15eoam-0 CommonIconSet__MagnifierGrayIconContent-sc-15eoam-1 jZNHYY QjNCN"></span>
						<button></button>
						<input placeholder="동행을 찾아보세요!" value="">
					</div>
					<div class="Button__ButtonWrapper-sc-1vcxcg6-0 oIYRb">
						<button width="" height="" font-style="" type="button"
							class="Button__ButtonStyle-sc-1vcxcg6-1 eVZkjB">
							<a><p>로그인</p></a>
						</button>
					</div>
					<div class="Button__ButtonWrapper-sc-1vcxcg6-0 oIYRb">
						<button width="" height="" font-style="" type="button"
							class="Button__ButtonStyle-sc-1vcxcg6-1 jRRCxU">
							<a><p>회원가입</p></a>
						</button>
					</div>
					<div class="Button_dropdown oIYRb">
						<button width="100px" height="40px" font-style="" type="button"
							class="ButtonStyle kRVxKH">글쓰기</button>
						<div class="Popups__HeaderWritePopupDiv cymdDn">
							<button onClick="location.href='${context}/content.jsp'"
								class="Popups__HeaderWritePopupOptionButton-sc-1socb7k-1 cAHljB">
								<img src="<%=context%>/hs_images/letter_color.svg" alt="이미지" style="width: 33px; height: 24px;">
								<p>여행친구 찾기</p>
							</button>
							<button onclick="location.href='${context}/list.jsp'"
								class="Popups__HeaderWritePopupOptionButton-sc-1socb7k-1 cAHlmB">
								<img src="<%=context%>/hs_images/magnifier_color.svg" alt="이미지" style="width: 33px; height: 24px;">
								<p>여행 질문하기</p>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>