<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>강의평가 웹사이트</title>
	<!-- 부트스트랩 css 추가하기 -->
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<!-- 커스텀 css 추가하기 -->
	<link rel="stylesheet" href="./css/custom.css">

</head>
<body>
	<!-- 강의평가 앱 사이트 글자 등등 -->
	<nav class="navbar navbar-expand-lg navber-light bg-light">
			<a class="navbar-brand" href="index.jsp"> 강의평가 웹 사이트</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
			 <!-- 오른쪽 상단 아이콘 -->		
			 <span class = "navbar-toggler-icon"></span>
			</button>
		<div id = "navbar" class = "collapse navbar-collapse">
			<ul class = "navbar-nav mr-auto">
				<li class = "navbar-item active">
					<a class = "nav-link" href = "index.jsp">메인</a>
				</li>
				<li class = "nav-item dropdown">
					<a	 class = "nav-link dropdown-toggle" id = "dropdown" data-toggle = "dropdown">
				 		회원 관리
					</a>
					<div class = "dropdown-menu" aria-labelledby = "dropdown">
						<a class = "dropdown-item" href = "#">로그인</a>
						<a class = "dropdown-item" href = "#">회원가입</a>
						<a class = "dropdown-item" href = "#">로그아웃</a>
					</div>
				</li>
			</ul>
			<form class = "form-inline my-2 my-lg-0">
				<input class = "form-control mr-sm-2" type = "search" placeholder = "내용을 입력하세요" aria-lable = "Search"> 
				<button class = "btn btn-outline-success my-2 my-sm-0" type = "submit">검색</button>
			</form>
		</div>	
	</nav>
	<section class = "container">
		<form method = "get" action = "./index.jsp" class = " form-inline mt-3">
			<select name = " lectureDivide" class = "form-control mx-1 mt-2">
				<option value = "전체">전체</option>
				<option value = "전공">전공</option>
				<option value = "교양">교양</option>
				<option value = "기타">기타</option>
			</select>
			<input type = "text" name = "search" class = "form-control mx-1 mt-2" placeholder = "내용을 입력하세요">
			<button type = "submit" class = "btn btn-primary mx-1 mt-2">검색</button>
			<a class="btn btn-primary mx-1 mt-2" data-toggle="modal" href="#registerModal">등록하기</a>		
			<a class = "btn btn-danger mx-1 mt-2" data-toggle = "modal" href = "#reportModal">신고</a>					
		</form>
	</section>
	<div class = "modal fade" id = "registerModal" tabindex = "-1" role = "dialog" aria-labelledby = "modal" aria-hidden = "true">
		<div class = "modal-dialog">
			<div class = "modal content">
				<div class = "modal-header">
					<h5 class = "modal-title" id = "modal">평가 등록</h5>
					<button type = "button" class = "close" data-dismiss = "modal" aria-label = "Close">
						<span aria-hidden = "true">&times;></span>
					</button>
				</div>
				<div class = "modal-body">
					<form action="./evaluationRegisterAction.jsp" method = "post">
						<div class = "form-low">
							<div class = "form-group col-sm-6">
								<label>강의명</label>
								<input type = "text" name = "lectureName" class = "form-control">
							</div>
							<div class = "form-group col-sm-6">
								<label>교수명</label>
								<input type = "text" name = "professorName" class = "form-control">							
							</div>
						</div>
					</form>
				</div>							
			</div>
		</div>
	</div>
	
	<!-- 제이쿼리 자바스트립트 추가하기 -->
	<script src="./js/jquery.min.js"></script>
	<!-- 파퍼 자바스트립트 추가하기 -->
	<script src="./js/popper.js"></script>
	<!-- 부트스트랩 자바스트립트 추가하기 -->
	<script src="./js/bootstrap.min.js"></script>
</body>
</html>