<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fnc" %>
<% 
	Date to = new Date();
 	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
 	String today = sdf.format(to);
 	
 
 	
%>
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
	
<form action="insertTest.do" method="post">
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
									<h3 style="color: #000; font-size: 14pt; text-align: center;">${ loginMember.mId }</h3>
								</div>
								<div class="blank-box">
									<h3 style="color: #000; font-size: 14pt; text-align: center;"><%= today %></h3>
								</div>
								<div class="blank-box">
									<h3 style="color: red; font-size: 18pt; text-align: center;"></h3>
								</div>
							</div>
							<div class="quiz-info-box-wrapper">
								<div class="quiz-info-box">
									<h5 style="font-size: 3mm; position: absolute; color: #7a7a7a;">총 문제수</h5>
									<h3 style="text-align: center; font-size: 3mm; font-weight: 700; position: absolute; left: 30mm;">${ count }</h3>
								</div>
								
							</div>
						</div>
						<!-- 헤더 끝-->
						    <!-- 한글,영아 사이즈 -->
							<c:set var="korSize" value="${ fnc:length(korList) }"/>
							<c:set var="engSize" value="${ fnc:length(engList) }"/>
						<!-- 컨텐트 시작 -->
						<div class="quiz-contents">
							<div style="position: relative;">
								<!-- 단어 넣기 for문 돌릴 예정 -->
								<c:forEach var="i" begin="1" end="${ count }" >
									<div class="word-box" style="float: left;">
										<div class="word-number">
											${ i }
										</div>
										<div class="filled-box">
											<div class="text-box" >
												<select class="custom-select"  size="1" style="width:130px;" id="engS${i}" onchange="writeKOR(${ i },this,this.value)">
													<c:forEach var="j" begin="0" end="${ korList.size()-1 }">
														<option id="${ j }" class="${ j }" value="${ j }">${ korList.get(j) }</option>
													</c:forEach>
												</select>
											</div>
										</div>
										<div class="empty-box">
											<div class="text-box" id="korS${ i }"></div>
										</div>
									</div>
									<!-- for문 끝-->
								</c:forEach>
								
							</div>
						</div>
						<!-- 컨텐트 끝 -->
				

					</section>
				</div>
			</section>
			
			<!-- 단어찾기용 -->
			<c:forEach var="c" begin="0" end="${ korList.size()-1 }">
				<input type="text" id="text${c}" value="${ engList.get(c) }" style="display:none;">
				<input type="text" id="textk${c}" value="${ korList.get(c) }" style="display:none;">
			</c:forEach>
			
			<!-- 한글넣기용 -->
			<c:forEach var="c" begin="1" end="${ count }">
				<input type="text" id="textkk${c}" style="display:none;">
			</c:forEach>
			
				<input type="text" id="subKor" name="subKor" style="display:none;">
				<input type="text" id="subEng" name="subEng" style="display:none;">
				<input type="text" id="testcNo" name="testcNo" value="${ cNo }" style="display:none;">
				<input type="number" id="testcount" name="testcount" value="${ count }" style="display:none">
				
            <div style="margin:auto; text-align: center; float:left;">
            	<input type="button" id="testcn" value="취소" style="width:100px; height:40px; border:0px; background:#e6e6eb">
            	<input type="button" id="testchk" value="확인" style="width:100px; height:40px; border:0px; background:#606060">
				<input type="submit" id="subok" style="display:none;">
			</div>
		</div>
		
	</div>
</div>

            
</form>

	<script>
		var fect = 0;
		var flag = true;
		
		
		function writeKOR(num,thi,index){
			var div = $("#korS" + num);
			
			
			index *= 1; // 변환 작업
			var text = $("#text" + index); // 한글넣는 인풋텍스트
			div.text(text.val());
			
			var value = $("#textk"+index).val();
			var textt = $("#textkk" + (num));
			textt.val(value);
			
			fect++;
		}
	</script>
	
	<script>
		$(function(){
			$("#testchk").click(function(){
				
				var count = ${ count };
				if(fect < count){
					alert("빈칸을 전부 채워주세요.");
				}else if($("#title").val() == ""){
					alert("제목을 입력해주세요.");
				}
				else if(!fect < count){
					var subEng = $("#subEng");
					var subKor = $("#subKor");
						subEng.val("");
						subKor.val("");
					
					// 영어넣기
					for(i = 0; i < count ; i++){
						var div = $("#korS" + (i+1));
						subEng = $("#subEng");
						subEng.val(subEng.val() + "," + div.text());
					}
					// 한글넣기 
					for(j = 1; j <= count; j++){
						subKor = $("#subKor");
						var text = $("#textkk" + j);
						subKor.val(subKor.val() +"," + text.val());
					}
					$("#subok").click();
				}
			});
			
		});
	</script>
</body>
</html>