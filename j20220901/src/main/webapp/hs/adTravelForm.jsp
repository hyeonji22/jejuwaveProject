<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="${context}/headerLogin.jsp"></c:import>
<link rel="stylesheet" href="css/adminStyle.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

	<!-- 네비게이션메뉴바 -->
	<nav id="nav" class="nav">
	<!-- 프로필 이미지 -->
		<div class="card" id="cardpro">
		  <img src="hs_images/adminpro.png" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title">Admin</h5>
		    <p class="card-text">관리자입니다.</p>
		  </div>
		</div>
		<div class="d-grid gap-2 col-6" id="navmenu">
		  <button class="btn btn-primary" type="button" onclick="location.href='admain.do'">홈</button>
		  <button class="btn btn-primary" type="button" onclick="location.href='adMemList.do'">회원 관리</button>
		  <button class="btn btn-primary" type="button" onclick="location.href='adTravelForm.do'">동행자 찾기 관리</button>
		  <button class="btn btn-primary" type="button" onclick="location.href='adQnaForm.do'">Q&A 게시판 관리</button>
		  <button class="btn btn-primary" type="button" onclick="location.href='adCommuForm.do'">회원커뮤니티 관리</button>
		</div>
	</nav>
	
	<!-- 본문 -->
	<article class="article" id="article">
		<div class="table-responsive">
		  <table class="table">
		    <caption>동행자 찾기</caption>
			  <thead>
			    <tr>
			      <th scope="col">번호</th>
			      <th scope="col">제목</th>
			      <th scope="col">아이디</th>
			      <th scope="col">테마</th>
			      <th scope="col">모집인원</th>
				  <th scope="col">댓글수</th>
			      <th scope="col">작성일</th>
			      <th scope="col">삭제</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:if test="${totCnt > 0}">
			  		<c:forEach var="travel" items="${list}">
			  			<tr>
			  				<th scope="row">${startNum}</th>
			  				<td class="left" width="250">
							<c:if test="${travel.t_relevel == 0}">
								${travel.t_title}
							</c:if>
							<c:if test="${travel.t_relevel > 0}">
								<img src="hs_images/adreply.png" width="${travel.t_relevel*10 }">
								${travel.t_content}
							</c:if>
							</td>
			  				<td>${travel.user_id}</td>
			  				<td>${travel.t_gubun}</td>
			  				<td>${travel.t_person}</td>
			  				<td>0</td>
			  				<td>
			  					<fmt:formatDate value="${travel.t_date}" pattern="YY/MM/dd"/>
			  				</td>
			  				<td><input type="submit" value="삭제"></td>
			  			</tr>
			  			<c:set var="startNum" value="${startNum - 1}"></c:set>
			  		</c:forEach>
			  	</c:if>
		  	<c:if test="${totCnt == 0}">
		  		<tr>
		  			<td colspan="7">데이터가 없네</td>
		  		</tr>
		  	</c:if>
			  </tbody>
		  </table>
		</div>
		
		<!-- 페이지내비게이션 -->
		<nav class="pagenav" aria-label="Page navigation example">
		  <ul class="pagination">
		  	<c:if test="${startPage > blockSize}">
				<li class="page-item"><a class="page-link" href="adTravelForm.do?pageNum=${startPage-blocksize}">Previous</a></li>
			</c:if>
		    
		    <c:forEach var="i" begin="${startPage}" end="${endPage}">
				<li class="page-item"><a class="page-link" href="adTravelForm.do?pageNum=${i}">[${i}]</a></li>
			</c:forEach>
		    
		    <c:if test="${endPage < pageCnt}">
				 <li class="page-item"><a class="page-link" href="adTravelForm.do?pageNum=${startPage+blockSize }">Next</a></li>
			</c:if>
		  </ul>
		 </nav>
	</article>
	
<div style="margin-top: 100px, margin-left: 198px;"></div>
<c:import url="${context}/footer.jsp"></c:import>
</body>
</html>