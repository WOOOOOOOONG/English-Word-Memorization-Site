<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fnc" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 스와이프 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script> 
    <script src="https://kit.fontawesome.com/97134254f3.js" crossorigin="anonymous"></script>
    
    
<style>
        dl {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    }

    dt{
        display:inline-block; width:55px; vertical-align: top; color: #787878;
    }
    dd{
        margin-inline-start: 40px;
        margin: 0;
    padding: 0;
    }
    .swiper-slide{
    	box-sizing:border-box;
    }
    body{
    	
    }
    </style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="../classs/summerNote.jsp" />
	<jsp:include page="../classs/fontStore.jsp"/>
	<!-- 전체 -->
	<c:url var="inquireView" value="insertInquireView.ad">
    <c:param name="reportType" value="3"/>
    <c:param name="reportedId" value="${classs.cNo}"/>
</c:url>

	<!--  신고하기 -->
  
    <div style="box-sizing: border-box; min-height: 100%; padding: 72px 0 20px; margin-top: 0px; background: #ebebeb; display: block; font-family: 'Jua', sans-serif;">
        <div style="margin-top: 0px;">

            <!-- 주 내용 시작-->
            <div style="width:60pc; margin:0 auto; overflow:hidden; position:relative;">
                <!-- 찐 내용 시작-->
                <div style=" margin-bottom:60px; width:900px; overflow:hidden; background-color:#fff; margin:auto; border-radius:25px;">
                    <!-- 사진, 지역 , 제목-->
                    <i class="far fa-angry" style="color:orange; border:1px solid orange; padding:3px; position:absolute; right:50px;">
                     <a href="${inquireView}" style="color:orange; text-decoration:none;">신고하기</a>
                  </i>
                    
                    
                    <header>
                    	
                        <!-- 사진 -->
                        
                        <div style="position:relative; height:360px; border-radius:15px;" >
                        	  <div class="swiper-container swiper1" style="width:800px;border-radius:15px; height:360px; position: relative; top:30px;  cursor: pointer;">
			                    <div class="swiper-wrapper">
			                        <div class="swiper-slide" style="margin:auto; text-align:center;">
	                            		<img src="${ contextPath }/resources/classImage/${ img1 }" style="width: 700px; height: 360px; cursor: pointer;" id="img_swiper1">
			                      	</div>
			                        <div class="swiper-slide" style="margin:auto; text-align:center;">
			                            <img src="${ contextPath }/resources/classImage/${ img2 }" style="width: 700px; height: 360px; cursor: pointer;" id="img_swiper2">
			                        </div>
			                        <div class="swiper-slide" style="margin:auto; text-align:center;">
			                           	<img src="${ contextPath }/resources/classImage/${ img3 }" style="width: 700px; height: 360px; cursor: pointer;" id="img_swiper3">
			                        </div>
			                    </div>
			                
			                    <!-- 네비게이션 버튼 -->
			                    <div class="swiper-button-next"></div>
			                    <!-- 다음 버튼 (오른쪽에 있는 버튼) -->
			                    <div class="swiper-button-prev"></div>
			                    <!-- 이전 버튼 -->
			                
			                    <!-- 페이징 -->
			                    <div class="swiper-pagination"></div>
			                </div>
                            <%-- <div style="flex-shrink: 0; height: 100%; position: relative;">
                                <img src="${ contextPath }/resources/image//main1.jpg" style="width:100%; height:100%;">
                            </div> --%>
                        </div>
                        <!-- 제목 -->
                        <div style="position: relative; padding: 36px 30px;">
                            <div style="position: absolute; top:-35px; z-index: 1; width:81pt; height: 81pt; overflow: hidden; text-align: center; background: #ef6c00; line-height: normal;">
                                <!-- 레벨 -->
                                <div style="margin-top: 26px; color:#ffeb3b; font-weight: 700; font-size: 1pc;">
                                    LEVEL
                                </div>
                                <!-- 레벨 한글 -->
                                <div style="margin-top: 20px;font-size: 1pc;color: #fff;">
                                    ${ classs.level }
                                </div>
                            </div>
                            <!-- 지역 -->
                            <span style="display: inline-block; width: 100%; text-align: center; font-weight: 700; color: #ef6c00;">${ classs.local } <c:if test="${ empty classs.local }">온라인</c:if></span>
                            <h1 style="margin: 15px 0 0; line-height: 1.5em; text-align: center; font-size: 28pt; color: #3c3c3c;">${ classs.title }</h1>
                        </div>
                    <!-- 머리끝 -->
                    </header>
                    
                    <!-- 스터디 소개 시작 -->
                    <div style="line-height: 1.75em; padding: 0 35px;width:700px; margin:auto;">
                        <section style="border-top: 1px solid #e6e6e6;">
                            <div style="overflow: hidden;">
                                <h1 style="float:left; clear:right; padding:60px 0 3pc 9pt; width:120px; font-size:14pt; color:#333; ">스터디 소개</h1>
                                <!-- 내용 -->
                                <div style="float:right; padding:60px 0; width:455px;  text-align:center;  font-family: 'Nanum Gothic', sans-serif;">
                                    ${ classs.comment }
                                </div>
                            </div>

                            <!-- 아래 상세정보 -->
                            <div style="overflow:hidden; display: block;">
                                <h2 style="padding:3pc 0 3pc 9pt; font-size:11pt; color:#787878; float:left; clear:right; width: 110px;">상세 정보</h2>
                                <div style="padding:3pc 0; border-top: 1px solid #e6e6e6; float: right; width: 455px;  font-family: 'Nanum Gothic', sans-serif;">
                                    <dl style="float:left; width:430px;">
									<c:choose>
										<c:when test="${ not empty classs.local }">
											<dt style="color:#787878; width: 55px;">과목:</dt>
											<dd style="display: inline-block; width:155px;">
											<c:forEach var="cate" begin="0" end="${fnc:length(cateList) - 1 }">
												<c:if test="${ classs.cateId == cateList.get(cate).cId }">
													${ cateList.get(cate).name }
												</c:if>
											</c:forEach>
	                                        </dd>
	
	                                        <dt style="width:55px; color:#787878;">레벨:</dt>
	                                        <dd style="width:145px; display: inline-block;">${ classs.level }</dd>
	                                        
	                                        <dt style="color:#787878; width: 55px;">지역:</dt>
	                                        <dd style="display: inline-block; width:155px;">${ classs.local }</dd>
	
	                                        <dt style="width:55px; color:#787878;">정원:</dt>
	                                        <dd style="width:145px; display: inline-block;">${ classs.memberCount } 명</dd>
	                                        
	                                       
	
	                                        <dt style="width:100px; color:#787878;">문의 아이디:</dt>
	                                        <dd style="width:280px; display: inline-block;">${ classs.ornerId }</dd>
	
	                                        <dt style="width:100px; color:#787878;">이메일 :</dt>
	                                        <dd style="width:280px; display: inline-block;">${ email }</dd>
	                                        
	                                        <dt style="width:100px; color:#787878;">현재 인원 :</dt>
	                                        <dd style="width:280px; display: inline-block;">${ cmList.size() } 명</dd>
                                       	</c:when>
                                       	<c:otherwise>
                                       		<dt style="color:#787878; width: 55px;">과목:</dt>
											<dd style="display: inline-block; width:155px;">
											<c:forEach var="cate" begin="0" end="${fnc:length(cateList) - 1 }">
												<c:if test="${ classs.cateId == cateList.get(cate).cId }">
													${ cateList.get(cate).name }
												</c:if>
											</c:forEach>
	                                        </dd>
	
	                                        <dt style="width:55px; color:#787878;">레벨:</dt>
	                                        <dd style="width:145px; display: inline-block;">${ classs.level }</dd>
	                                        
                                       		<dt style="width:100px; color:#787878;">문의 아이디:</dt>
	                                        <dd style="width:280px; display: inline-block;">${ classs.ornerId }</dd>
	
	                                        <dt style="width:100px; color:#787878;">이메일 :</dt>
	                                        <dd style="width:280px; display: inline-block;">${ email }</dd>
	                                        
	                                        <dt style="width:100px; color:#787878;">현재 인원 :</dt>
	                                        <dd style="width:280px; display: inline-block;">${ cmList.size() } 명</dd>
                                       	</c:otherwise>
                                    </c:choose>
                                    </dl>
                                </div>
                            </div>

                            <!-- 버튼 -->
                            <div>
                                <input type="button" class="sinchenog" id="${ classs.cNo }" style="margin-top: 24px; background-color: #ef6c00; color:#fff; border:none;
                                    display:block; width:200px; height:56px; display:none; line-height: 56px; text-align: center; font-size: 11pt;  margin:auto" value="신청 하기">
                                    
                                     
                               <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#pobu"
                               		style="margin-top: 24px; background-color: #ef6c00; color:#fff; border:none;
                                    display:block; width:200px; height:56px; line-height: 56px; text-align: center; font-size: 11pt;  margin:auto">신청하기</button>
                            </div>
                        </section>
                    </div>


                </div>
            </div>
        </div>
    </div>
    	<!-- 가입 -->
    	<script>
    		$(function(){
    			
    			$("#subgo").click(function(){
    				$(".sinchenog").click();
    			});
    			
    			$(".sinchenog").click(function(){
    				var obj = new Object();
    				var cNo = $(this).prop('id');
    				var pobu = $(".pobu").val();
    				obj.pobu = pobu;
    				obj.cNo = cNo;
    				$.ajax({
						url:"joinClass.do",
						data : JSON.stringify(obj),
						type:"post",
						contentType:"application/json; charset=utf-8",
						success:function(data){
							if(data == 2){
								alert("신청이 완료되었습니다.");
								location.href="ClassList.do";
							}else if(data == 1){
								alert("로그인 후에 이용하실수 있습니다.");
							}else if(data == 3){
								alert("이미 가입 신청중인 클래스입니다.");
							}
							else{
								alert("이미 가입되어있는 클래스입니다.");
							}
						},
						error:function(e){
							alert(e);
						}
					});
    			})
    		});
    	</script>
       <!-- 스와이퍼 부분 -->
        <!-- 스크립트 -->
        <script>
            $(function(){
                new Swiper('.swiper1', {
                    loop : true, // 반복
                    pagination : { // 페이징 설정
                    el : '.swiper-pagination',
                    clickable : true,
                    },
                    navigation : { // 네비게이션 설정
                    nextEl : '.swiper-button-next', // 다음 버튼 클래스명
                    prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
                    },
                });
            });
        </script>
       
   <!-- 오른쪽 fixed -->
   <%-- 
   	<div style="position:fixed; width:240px; top:190px; left:1330px;  border:1px solid orange; background:white; padding: 24px 9pt 9pt; font-family: 'Nanum Gothic', sans-serif;">
   		<div style=" width:80%; text-align:center; margin:auto;">
   			<h1 style="margin:0 9pt 35px; font-size:13pt; font-weight:bold; color:#333; word-break: keep-all; lien-height:1.5em;">${ classs.title }</h1>
   		</div>
   		<div style="width:80%; border-top:1px solid #f2f2f2; text-align:center; margin:auto;">
   			<ul style="padding: 24px 9pt; list-style:none;">
   				<li style="display:list-item;">
   				<c:choose>
		   			<c:when test="${ !empty classs.schedule  }">
		   				<b style="line-height:1.6em;">${ classs.schedule }</b><br><br>
		   				<h1 style="margin:0 9pt 35px; font-size:13pt; color:#333; word-break: keep-all; lien-height:1.5em;">${ classs.nowMemberCount }명이 함께하고 있습니다.</h1>	
		   			</c:when>
		   			<c:otherwise>
		   				<b style="line-height:1.6em;">언제든지 참여 가능!</b><br><br>
		   				<h1 style="margin:0 9pt 35px; font-size:14px; color:#333; word-break: keep-all; lien-height:1.5em;">${ classs.nowMemberCount }명이 함께하고 있습니다.</h1>
		   			</c:otherwise>
   				</c:choose>
   				</li>
   			</ul>
   		</div>
   		<div style="width:80%; border-top:1px solid #f2f2f2; text-align:center; margin:auto;">
   				<i class="far fa-angry" style="color:orange;"><a href="#" style="color:orange; text-decoration:none;">신고하기</a></i>
   		</div>
   </div>      
   --%>
        
        <!-- 모달  -->
        <!-- Modal -->
<div class="modal fade" id="pobu" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle" style="text-align:center; color:#474747; font-size:18px; margin:auto; font-weight:600;  font-family: 'Nanum Gothic', sans-serif;">하고싶은 말을 입력해주세요.</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <textarea style="width:100%; text-align:center; height:60px;" class="pobu">
        
        </textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary" id="subgo" style="background-color: #ef6c00; border:0px;">신청하기</button>
      </div>
    </div>
  </div>
</div>
        
   
	<script>
        
	
    </script>
	
	

	<jsp:include page="../common/footer.jsp"/>
</body>
</html>