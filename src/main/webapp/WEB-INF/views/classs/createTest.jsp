<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
			<header class="modal-card-head" style="text-align: center;">
				<p style="font-size: 15pt; font-weight: 500; margin: auto;">
					제목  : 
				</p>
				<input type="text" name="title" id="title" style="border:0px; background:whitesmoke; border-bottom: 1px solid black; margin:auto; width:400px; margin-left:-130px;">
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
											<select class="custom-select" style="width:130px;" id="engS1" onchange="writeKOR(1,this)">
												<option></option>
												<option>recent</option>
												<option>apple</option>
												<option>banana</option>
												<option>one</option>
												<option>two</option>
												<option>three</option>
											</select>
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS1"></div>
									</div>
								</div>
								<!-- for문 끝-->
								<div class="word-box" style="float: left;">
									<div class="word-number">
										2
									</div>
									<div class="filled-box">
										<div class="text-box">
											<select class="custom-select" style="width:130px;" id="engS2" onchange="writeKOR(2,this)">
											<option></option>
												<option>recent</option>
												<option>apple</option>
												<option>banana</option>
												<option>one</option>
												<option>two</option>
												<option>three</option>
											</select>
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS2"></div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
										3 
									</div>
									<div class="filled-box">
										<div class="text-box">
											<select class="custom-select" style="width:130px;" id="engS3" onchange="writeKOR(3,this)">
											<option></option>
												<option>recent</option>
												<option>apple</option>
												<option>banana</option>
												<option>one</option>
												<option>two</option>
												<option>three</option>
											</select>
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS3"></div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
										4
									</div>
									<div class="filled-box">
										<div class="text-box">
											<select class="custom-select" style="width:130px;" id="engS4" onchange="writeKOR(4,this)">
											<option></option>
												<option>recent</option>
												<option>apple</option>
												<option>banana</option>
												<option>one</option>
												<option>two</option>
												<option>three</option>
											</select>
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS4"></div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
										5 
									</div>
									<div class="filled-box">
										<div class="text-box">
											<select class="custom-select" style="width:130px;" id="engS5" onchange="writeKOR(5,this)">
											<option></option>
												<option>recent</option>
												<option>apple</option>
												<option>banana</option>
												<option>one</option>
												<option>two</option>
												<option>three</option>
											</select>
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS5"></div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
										6 
									</div>
									<div class="filled-box">
										<div class="text-box">
											<select class="custom-select" style="width:130px;" id="engS6" onchange="writeKOR(6,this)">
											<option></option>
												<option>recent</option>
												<option>apple</option>
												<option>banana</option>
												<option>one</option>
												<option>two</option>
												<option>three</option>
											</select>
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS6"></div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
										7 
									</div>
									<div class="filled-box">
										<div class="text-box">
											<select class="custom-select" style="width:130px;" id="engS7" onchange="writeKOR(7,this)">
											<option></option>
												<option>recent</option>
												<option>apple</option>
												<option>banana</option>
												<option>one</option>
												<option>two</option>
												<option>three</option>
											</select>
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS7"></div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
										8
									</div>
									<div class="filled-box">
										<div class="text-box">
											<select class="custom-select" style="width:130px;" id="engS8" onchange="writeKOR(8,this)">
											<option></option>
												<option>recent</option>
												<option>apple</option>
												<option>banana</option>
												<option>one</option>
												<option>two</option>
												<option>three</option>
											</select>
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS8"></div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
									9
									</div>
									<div class="filled-box">
										<div class="text-box">
											<select class="custom-select" style="width:130px;" id="engS9" onchange="writeKOR(9,this)">
											<option></option>
												<option>recent</option>
												<option>apple</option>
												<option>banana</option>
												<option>one</option>
												<option>two</option>
												<option>three</option>
											</select>
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS9"></div>
									</div>
								</div>
								<div class="word-box" style="float: left;">
									<div class="word-number">
										10
									</div>
									<div class="filled-box">
										<div class="text-box">
											<select class="custom-select" style="width:130px;" id="engS10" onchange="writeKOR(10,this)">
											<option></option>
												<option>recent</option>
												<option>apple</option>
												<option>banana</option>
												<option>one</option>
												<option>two</option>
												<option>three</option>
											</select>
										</div>
									</div>
									<div class="empty-box">
										<div class="text-box" id="korS10"></div>
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

            


	<script>
	function writeKOR(num,thi){
		var div = $("#korS" + num);

		var value3 = $(thi).attr("selected","selected").val(); // 영어
	
		switch(value3){
		
		case "recent":
			div.text("최근의");
			break;
		case "apple":
			div.text("사과");
			break;
		case "banana":
			div.text("버내나");
			break;
		case "one":
			div.text("1");
			break;
		case "two":
			div.text("2");
			break;
		case "three":
			div.text("3");
			break;
		}
		
	}
	</script>
	
	<script>
	</script>
</body>
</html>