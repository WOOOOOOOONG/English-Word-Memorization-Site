<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fnc" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	int index = 0;
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- include libraries(jQuery, bootstrap) -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

    <!-- include summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>

    <!-- 폰트어썸 -->
    <script src="https://kit.fontawesome.com/97134254f3.js" crossorigin="anonymous"></script>
    
    <!--  스와이퍼  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
    
    <style>
        ul {
            list-style:none;
            
        }
        li {
            text-align: -webkit-match-parent;
        }
    
    
    </style>
</head>
<body>
	<jsp:include page="../classs/fontStore.jsp"/>
	<jsp:include page="../common/menubar.jsp"/>
	
	<script>
        $(function(){
            $("#filterA").click(function(){
                if($("#ldiv").css("display") == "none"){
                    $("#ldiv").css("display","block");
                }else{
                    $("#ldiv").css("display","none");
                }
                //$("#ldiv").css("display","block");
            });

            $("#filterB").click(function(){
                if($("#ldiv").css("display") == "none"){
                    $("#ldiv").css("display","block");
                }else{
                    $("#ldiv").css("display","none");
                }
                //$("#ldiv").css("display","block");
            });

            $("#filterC").click(function(){
                if($("#ldiv").css("display") == "none"){
                    $("#ldiv").css("display","block");
                }else{
                    $("#ldiv").css("display","none");
                }
                //$("#ldiv").css("display","block");
            });
        }); 
        
    </script>

	<!-- 검색란 -->
	<form action="searchClass.do" method="POST">
	<div style="background: #fff; display: block; font-family: 'Nanum Gothic', sans-serif;">
		<div
			style="margin: 0 auto; padding: 30px 0 36px; width: 960px; height: 234px;">
			<!-- 캡션 -->
			<div
				style="color: #505050; font-size: 16pt; width: 960px; height: 29px; font-family:cinzel;">
				Search</div>

			<!-- 셀렉 전체 wrap -->
			<div
				style="position: relative; margin: 30px 0; padding: 15px; background: #f2f2f2; border-radius: 3px; display: block;">
				<!-- 셀렉 1 -->
				<div
					style="display: inline-block; position: relative; z-index: 201; box-sizing: border-box; margin-right: 15px; padding-left: 20px; width: 230px; height: 3pc; line-height: 50px; background: #fff; cursor: pointer; user-select: none; border-radius: 3px;"
					id="filterA">
					<span style="color: #505050; font-size: 14px; font-weight: 700;">과목</span>
				</div>
				<!-- 셀렉 2 -->
				<div
					style="display: inline-block; position: relative; z-index: 201; box-sizing: border-box; margin-right: 15px; padding-left: 20px; width: 230px; height: 3pc; line-height: 50px; background: #fff; cursor: pointer; user-select: none; border-radius: 3px;"
					id="filterB">
					<span style="color: #505050; font-size: 14px; font-weight: 700;">레벨</span>
				</div>
				<!-- 셀렉 3 -->
				<div
					style="display: inline-block; position: relative; z-index: 201; box-sizing: border-box; margin-right: 15px; padding-left: 20px; width: 230px; height: 3pc; line-height: 50px; background: #fff; cursor: pointer; user-select: none; border-radius: 3px;"
					id="filterC">
					<span style="color: #505050; font-size: 14px; font-weight: 700;">온라인/오프라인</span>
				</div>
				<!-- 버튼 -->
				<button
					style="box-sizing: border-box; padding: 0 20px; width: 155px; height: 3pc; text-align: left; font-size: 14px; font-weight: 600; color: #fff; background: #4c8def; border: none; border-radius: 3px;">
					검색 <span style="display: inline-block; width: 24px; float: right;">
						<i class="fas fa-arrow-right"></i>
					</span>
				</button>

				<!-- 펼쳐지는거 -->
				<div id="ldiv" style="display: none; position: absolute; z-index: 200; top: 0; left: 0; box-sizing: border-box; padding-top: 63px; width: 750px; background: #fff; border: 1px solid #c9c9c9; box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .16)">
					<!-- 리셋 , 취소 부분 -->
					<div style="position: absolute; right: 0; top: -36px;">
						<a href="#" style="font-size: 10pt; color: #787878; font-weight: 600; text-decoration: none;">
							<i class="fas fa-undo" style="margin-top: 1px; width: 14px; height: 14px; background-position-y: -81pt;"></i>필터초기화
						</a> <span style="display: inline-block; vertical-align: top; margin: 3px 1pc 0; width: 1px; height: 9pt; background: #dcdcdc"></span>
						<a href="#" style="font-size: 10pt; color: #787878; font-weight: 600; text-decoration: none;">
							<i class="fas fa-times" style="margin-top: 1px; width: 14px; height: 14px; background-position-y: -81pt;"></i>취소
						</a>
					</div>
					<!-- 넘길 카테 -->
					<input type="text" id="categoryList" name="categoryList" style="display:none;" value="20">
					<input type="text" id="levelList" name="levelList" style="display:none;" value="all">
					<input type="text" id="onoffList" name="onoffList" style="display:none;" value="any">
					<script>
						$(function(){
							$(".cate").change(function(){
								var id = $(this).attr('id');
								var categoryList = $("#categoryList");
								var value = $("#categoryList").val();
								categoryList.val(value + ","+id);
							});
							
							$(".cLevel").change(function(){
								var id = $(this).attr('id');
								var levelList = $("#levelList");
								var value = $("#levelList").val();
								levelList.val(value + "," + id);
							});
							
							$(".conoff").change(function(){
								var id = $(this).attr('id');
								var onoffList = $("#onoffList");
								var value = $("#onoffList").val();
								onoffList.val(value + "," + id);
							});
						});
					</script>
					<!-- 아래 나오는거 -->
					<ul style="width: 45pc; margin: 0 auto;">
						<!-- 과목 -->
						<li style="display: inline-block; vertical-align: top; margin-right: 15px; box-sizing: border-box; width: 200px; border-top: 1px solid #dcdcdc; ">
							<ul style="padding: 36px 14px;">
								<c:forEach var="i" begin="0" end="${ fnc:length(cateList)-1 }">
									<li style="margin-bottom: 1pc; user-select: none;">
										<label style="display: block; cursor: pointer;"> 
										<input type="checkbox" name="${ cateList.get(i).name }" id="${ cateList.get(i).name }" class="cate" style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
											<span style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 600;  font-family: 'Nanum Gothic', sans-serif;">
											${ cateList.get(i).name }</span>
										</label>
									</li>
								</c:forEach>
							</ul>
						</li>
						<!-- 레벨 -->
						<li style="display: inline-block; vertical-align: top; margin-right: 15px; box-sizing: border-box; width: 200px; border-top: 1px solid #dcdcdc;">
							<ul style="padding: 36px 14px;">
								<li style="margin-bottom: 1pc; user-select: none;">
									<label style="display: block; cursor: pointer;"> 
										<input type="checkbox" name="" id="Beginner" class="cLevel" style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
										<span style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 600;  font-family: 'Nanum Gothic', sans-serif;">Beginner</span>
									</label>
								</li>
								<li style="margin-bottom: 1pc; user-select: none;">
									<label style="display: block; cursor: pointer;"> 
										<input type="checkbox" name="" id="Normal" class="cLevel" style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
										<span style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 600;  font-family: 'Nanum Gothic', sans-serif;">Normal</span>
									</label>
								</li>
								<li style="margin-bottom: 1pc; user-select: none;">
									<label style="display: block; cursor: pointer;"> 
										<input type="checkbox" name="" id="Expert" class="cLevel" style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
										<span style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 600;  font-family: 'Nanum Gothic', sans-serif;">Expert</span>
									</label>
								</li>
							</ul>
						</li>

						<!-- 온라인 / 오프라인 -->
						<li style="display: inline-block; vertical-align: top; margin-right: 15px; box-sizing: border-box; width: 200px; border-top: 1px solid #dcdcdc;">
							<ul style="padding: 36px 14px;">
								<li style="margin-bottom: 1pc; user-select: none;">
									<label style="display: block; cursor: pointer;"> 
										<input type="checkbox" name="" id="on" class="conoff" style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
										<span style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 600;  font-family: 'Nanum Gothic', sans-serif;">온라인</span>
									</label>
								</li>
								<li style="margin-bottom: 1pc; user-select: none;">
									<label style="display: block; cursor: pointer;"> 
										<input type="checkbox" name="" id="off" class="conoff" style="display: inline-block; vertical-align: top; width: 1pc; height: 1pc;">
										<span style="display: inline-block; margin-left: 10px; vertical-align: top; height: 1pc; line-height: 18px; font-size: 10pt; color: #787878; font-weight: 600;  font-family: 'Nanum Gothic', sans-serif;">오프라인</span>
									</label>
								</li>
							</ul>
						</li>


					</ul>
				</div>
			</div>
		</div>
	</div>
		
	
	</form>

		<!-- 갯수  -->
		<c:set var="size" value="${ fnc:length(cList) }"/>
		<c:set var="csize" value="${ fnc:length(cList) div 3}"/>
		<c:set var="lasize" value="0"/>
		<c:set var="imgFlag" value="true"/>
		<!-- row 개수 -->
		<c:set var="row" value="${csize+(1-(csize%1))%1}"/>
		<!-- 마지막 클래스 생성후 for문 break -->
	
	
	<!-- 여기부터 리스트 -->
	<div class="outer"
		style="width: 100%; background: #ebebeb; position: relative; font-family: 'Nanum Gothic', sans-serif;">

		<div style="width: 1000px; margin: auto; border: 1px solid #ebebeb;">
			<div
				style="margin: 60px auto 30px; padding-left: 5px; font-size: 16pt; color: #505050">
				<span style="font-weight: 600; font-family: 'Nanum Gothic', sans-serif;">${ size }개의 스터디</span>
			</div>
		</div>

	
	<c:if test="${ empty cList }">
		<div style="width:100%; margin:auto; font-size:42px; text-align:center;"> 검색된 클래스가 존재하지 않습니다.</div>
		<div style="width: 100%; height: 400px;"></div>
	</c:if>
	<c:if test="${ !empty cList }">
	
		<c:forEach var="i"  begin="1" end="${ row }">
		 	
		<!-- row div임 -->
		<div style="display: flex; align-items: stretch; padding-bottom: 30px; border-bottom: 1px solid #dcdcdc; width: 1000px; margin: 30px auto;" id="origindiv">

			<c:forEach var="j" begin="1" end="3">
				<c:if test="${ size != lasize }"> 
						<!-- 객체 하나 !! -->
						<%-- <a style="display: inline-block; text-decoration: none; margin: auto;" href="classdetail.do?cNo=${ cList.get(lasize).cNo }"> --%>
						<a style="display: inline-block; text-decoration: none; margin: auto;" href="classdetail.do?cNo=${ cList.get(lasize).cNo }">
							<div style="position: relative; overflow: hidden; font-size: 14pt; width: 300px; height: 520px; border: 1px solid white;">
								<div style="position: relative; overflow: hidden; text-align: center; padding-bottom: 4pc; background: #fff">
			
									<!-- 기간 -->
									<div style="margin: 0 24px; height: 3pc; line-height: 50px; text-align: center; color: #787878; font-size: 14px; border-bottom: 1px solid #ebebeb; font-weight: 700;">
										<c:choose>
											<c:when test="${ not empty cList.get(lasize).local }">
												<span style="color: #FFA7A7;">오프라인 스터디</span>
											</c:when>
											<c:otherwise>
												<span style="color: #4c8def;">온라인 스터디</span>
											</c:otherwise>
										</c:choose>
									</div>
			
									<!-- 지역 | 레벨-->
									<div style="margin-top: 36px; text-align: center; color: #a0a0a0; font-size: 11pt;">
										<span>
											<c:choose>
												<c:when test="${ not empty cList.get(lasize).local }">
													<span style="color: #FFA7A7;">${ cList.get(lasize).local }</span>
													<span>&nbsp; | &nbsp;</span>													
												</c:when>
												
											</c:choose>
										</span>
										 <span>${ cList.get(lasize).level }</span>
									</div>
			
									<!-- 제목 -->
									<div style="margin: 9pt 0 1pc; text-align: center; color: #3c3c3c; font-size: 14pt; line-height: 1.5em;">
										${ cList.get(lasize).title }
									</div>
			
									<!-- 가격? -->
									<div style="text-align: center;">
										<span style="color: #f48210; font-weight: 700;">
											<c:forEach var="cate" begin="0" end="${fnc:length(cateList) - 1 }">
												<c:if test="${ cList.get(lasize).cateId == cateList.get(cate).cId }">
													${ cateList.get(cate).name }
												</c:if>
											</c:forEach>
										</span> 
										<!-- <span style="margin-left: 10px; color: #a0a0a0; font-size: 10pt;">12주</span> -->
									</div>
								</div>
			
			
								<!-- 아이콘 부분 -->
								<c:set var="imgFlag2" value="true"/>
								<c:forEach var="q" begin="0" end="${ userList.size() - 1 }" >	
									<c:if test="${ cList.get(lasize).ornerId eq userList.get(q).refId && imgFlag2 }">
										<img src="${ contextPath }/resources/profileimg/${ userList.get(q).changeName }" style="position: absolute; display: inline-block; width: 6pc; height: 6pc; left: 50%; margin: -40px 0 0 -51px; border-radius: 50%; background: #fff; border: 3px solid #fff; z-index: 100;">
										<c:set var="imgFlag2" value="false"/>
									</c:if>
								</c:forEach>
								<c:if test="${ imgFlag2 }">
									<img src="${ contextPath }/resources/profileimg/defaultimg.png" style="position: absolute; display: inline-block; width: 6pc; height: 6pc; left: 50%; margin: -40px 0 0 -51px; border-radius: 50%; background: #fff; border: 3px solid #fff; z-index: 100;">										
									<c:set var="imgFlag2" value="false"/>
								</c:if>
								
								
								<!--  배경 -->
								
								<!-- 밑에 사진 -->
								
								<c:if test="${ !empty fList }">
								<c:forEach var="file" begin="0" end="${ fnc:length(fList) - 1 }">
									<c:choose>
										<c:when test="${ cList.get(lasize).cNo eq fList.get(file).refId }">
											<c:if test="${ imgFlag }">
												<div style="position: static; width: 100%; height: 15pc; background-size: cover; background-position: 50% 50%; background-image: url('${ contextPath }/resources/classImage//${ fList.get(file).changeName}');"></div>
												<c:set var="imgFlag" value="false"/>
											</c:if>
										</c:when>		
									</c:choose>
								</c:forEach>
								</c:if>
								
								
								<c:if test="${ imgFlag }">
									<div style="position: static; width: 100%; height: 15pc; background-size: cover; background-position: 50% 50%; background-image: url('${ contextPath }/resources/classImage//main1.jpg');"></div>
									<c:set var="imgFlag" value="flase"/>
								</c:if>
								<c:set var="imgFlag" value="true"/>
								
									<div style="background: #D5D5D5; position: absolute; bottom: 0; width: 100%; height: 3pc; line-height: 50px; text-align: center; color: #fff; font-size: 14px; font-weight: 700">
										신청 하기
									</div>
								</div>
						</a>
						<!-- 여기까지 객체-->
					<c:set var="lasize" value="${ lasize + 1 }"/>
					<% index++; %>
					</c:if>
			</c:forEach>
		</div>
 </c:forEach>
			</c:if>
		
		<!-- outer 끝 -->
	</div>
	
	<!-- 스크롤 로딩 -->
<jsp:include page="../common/footer.jsp"/>
</body>
</html>