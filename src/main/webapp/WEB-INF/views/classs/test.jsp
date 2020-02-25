<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- 폰트어썸 -->
    <script src="https://kit.fontawesome.com/97134254f3.js" crossorigin="anonymous"></script>

    <!-- 붙스 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="${ contextPath }/resources/css/test.css" type="text/css">


</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="../common/classSideMenubar.jsp"/>
	<div style="position:relative; z-index:0;">
	<div style="width:200px; height:10px;float:left;"></div>
	<div style="float:left; display: flex; align-items: center; justify-content: center; overflow: hidden; z-index: 40; margin-top:30px;  width:1000px; margin:auto; margin-top:30px;">
		<!-- 모달 백그라운드 -->
		<div
			style="bottom: 0; left: 0; position: absolute; right: 0; top: 0; "></div>
		<div
			style="width: 800px; margin: 0; display: flex; box-orient: vertical; box-direction: normal; flex-direction: column; overflow: hidden; background: white; z-index: 41; border-radius: 15px;">
			<!-- 헤드부분 -->
			<header class="modal-card-head" style="text-align: center; background:white;">
				<p style="font-size: 15pt; font-weight: 500; margin: auto;">
					2020년 1월 2주차 시험
				</p>
			</header>
			<section class="modal-card-body">
				<div id="quiz-list-form">
					<section style="color: #484848; margin: 0; padding: 0;">

						<!-- 헤더 시작 -->
						<div class="quiz-header">
							<div class="doc-title">단어</div>
							<div class="doc-sub-title">시험</div>
							<!-- 추가 필 -->
							<div class="blank-box-wrapper">
								<div class="blank-box">
									<h3 style="color: #000; font-size: 14pt; text-align: center;">ajoa2012</h3>
								</div>
								<div class="blank-box">
									<h3 style="color: #000; font-size: 14pt; text-align: center;">2020-02-13</h3>
								</div>
								<div class="blank-box">
									<h3 style="color: red; font-size: 18pt; text-align: center;"></h3>
								</div>
							</div>
							<div class="quiz-info-box-wrapper">
								<div class="quiz-info-box">
									<h5 style="font-size: 3mm; position: absolute; color: #7a7a7a;">총 문제수</h5>
									<h3 style="text-align: center; font-size: 3mm; font-weight: 700; position: absolute; left: 30mm;">10</h3>
								</div>
								
							</div>
						</div>
						<!-- 헤더 끝-->

						<!-- 컨텐트 시작 -->
						<div class="quiz-contents">
							<div style="position: relative;">
								<!-- 단어 넣기 for문 돌릴 예정 -->
								<div class="word-box" style="float: left;">
									<div class="word-number">
										1 
									</div>
									<div class="filled-box">
										<div class="text-box">
											사과
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS1">
											<input type="text" style="width:160px; height:30px; margin-left:-17px; border: 0px;">
										</div>
									</div>
								</div>
								<!-- for문 끝-->
								<div class="word-box" style="float: left;">
									<div class="word-number">
										2 
									</div>
									<div class="filled-box">
										<div class="text-box">
											사과
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS1">
											<input type="text" style="width:160px; height:30px; margin-left:-17px; border: 0px;">
										</div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
										3 
									</div>
									<div class="filled-box">
										<div class="text-box">
											사과
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS1">
											<input type="text" style="width:160px; height:30px; margin-left:-17px; border: 0px;">
										</div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
										4 
									</div>
									<div class="filled-box">
										<div class="text-box">
											사과
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS1">
											<input type="text" style="width:160px; height:30px; margin-left:-17px; border: 0px;">
										</div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
										5 
									</div>
									<div class="filled-box">
										<div class="text-box">
											사과
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS1">
											<input type="text" style="width:160px; height:30px; margin-left:-17px; border: 0px;">
										</div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
										6 
									</div>
									<div class="filled-box">
										<div class="text-box">
											사과
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS1">
											<input type="text" style="width:160px; height:30px; margin-left:-17px; border: 0px;">
										</div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
										7 
									</div>
									<div class="filled-box">
										<div class="text-box">
											사과
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS1">
											<input type="text" style="width:160px; height:30px; margin-left:-17px; border: 0px;">
										</div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
										8 
									</div>
									<div class="filled-box">
										<div class="text-box">
											사과
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS1">
											<input type="text" style="width:160px; height:30px; margin-left:-17px; border: 0px;">
										</div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
										9 
									</div>
									<div class="filled-box">
										<div class="text-box">
											사과
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS1">
											<input type="text" style="width:160px; height:30px; margin-left:-17px; border: 0px;">
										</div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
										10
									</div>
									<div class="filled-box">
										<div class="text-box">
											사과
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS1">
											<input type="text" style="width:160px; height:30px; margin-left:-17px; border: 0px;">
										</div>
									</div>
								</div>
								
									
								
							</div>
						</div>
						<!-- 컨텐트 끝 -->
				

					</section>
				</div>
			</section>
			
            <div style="margin:auto; text-align: center; float:left;">
				<button style="width:100px; height:40px; border:0px; background:#e6e6eb" id="testcn">취소</button>
				<button style="width:100px; height:40px; border:0px; background:#606060; color:white;" id="testchk">확인</button>
			</div>
		</div>
		
	</div>
</div>

</body>
</html>