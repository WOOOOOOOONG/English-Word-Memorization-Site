<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fnc" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<!-- 컨텐트 부분-->
    <div style="margin-top :4vh; margin-left: 4vw; width:70%; height:800px; float: left; overflow: auto; position: relative;">
    	<div style="margin:auto; width:50%; text-align:center; border-bottom:1px solid gray; font-family:cinzel;">
        	<h1>TEST LIST</h1>
        </div><br>
    <table class="table table-hover" style="width:80%; margin:auto; text-align: center;  margin-left:10%; margin-top:20px;">
        <thead>
            <tr style="font-family: 'Nanum Gothic', sans-serif;">
                <th scope="col" style="width:5%;">No</th>
                <th scope="col" style="width:59%;">시험 제목</th>
                <th scope="col" style="width:20%;">응시일</th>
                <th scope="col" style="width:8%;">점수</th>
                <th scope="col" style="width:8%;">확인</th>
            </tr>
        </thead>
        <tbody style="font-family: 'Nanum Gothic', sans-serif;">
        <c:set var="flag" value="false"/>
        <c:set var="match" value="0"/>
        	<c:choose>
	        	<c:when test="${!empty testList }">
	        		<!-- 클래스에 시험목록이 있다면. -->
		        	<c:forEach var="i" begin="0" end="${testList.size()-1 }">
			            <tr>
			                <th scope="row">${ i+1 }</th>
			                <td>${testList.get(i).testTitle }</td>
			                <!-- 클래스에 누군가 한명이라도 시험본 목록이있다면. ... -->
			                <c:set var="flag" value="false"/>
			                <c:choose>
			                	<c:when test="${ !empty vocaList }">
			                		<c:forEach var="j" begin="0" end="${ vocaList.size()-1 }">
			                			<c:if test="${ testList.get(i).testNo eq vocaList.get(j).testNo && loginMember.mId eq vocaList.get(j).id && !flag}">
			                				<td>${ vocaList.get(j).testDate }</td>
			                				<td>${ vocaList.get(j).score }</td>
			                				<td><button type="button" class="btn btn-secondary" style="width:90px; "onclick="viewTest(${ match })">확인</button>
			                					<button type="button" data-toggle="modal" data-target=".pre${ match }" id="pre${ match }" style="display:none;"></button>
			                					<c:set var="match" value="${ match + 1 }"/>	
			                				</td>
			                				<c:set var="flag" value="true"/>
			                			</c:if>
			                		</c:forEach>
			                		<c:if test="${ !flag }">
			                			<td>미응시</td>
		                				<td>미응시</td>
		                				<td><input type="button" value="시험보기" class="btn btn-secondary" style="text-align:center; margin:auto; width:90px;" onclick="location.href='goTest.do?testNo=${ testList.get(i).testNo }'"></td>
			                		</c:if>
			                		<c:set var="flag" value="false"/>
			                	</c:when>
			                	
			                	<c:when test="${ empty vocaList || !flag }">
	                				<td>미응시</td>
	                				<td>미응시</td>
	                				<td><input type="button" value="시험보기" class="btn btn-secondary" style="text-align:center; margin:auto; width:90px;" onclick="location.href='goTest.do?testNo=${ testList.get(i).testNo }'"></td>
	                			</c:when>
	                			
			                </c:choose>
			               <!-- <button type="button" class="btn btn-secondary" data-toggle="modal" data-target=".bd-example-modal-lg">확인</button> -->
		              	
			            </tr>
		            </c:forEach>
		            
	            </c:when>
	            <c:otherwise>
	            	<tr>
	            		<td colspan="4"> 해당 클래스에 시험목록이 없습니다.</td>
	            	</tr>
	            </c:otherwise>
            </c:choose>
        </tbody>
    </table>
    
    <!-- 모달 편집 -->
    <script>
    	function viewTest(index){
    		$("#pre" + index).click();
    	}
    </script>
    
        
    </div>
	
	<c:set var="match2" value="0"/>
	<c:if test="${ !empty testList && !empty vocaList}">
		<c:forEach var="i" begin="0" end="${testList.size()-1 }">
			<c:forEach var="j" begin="0" end="${ vocaList.size()-1 }">
				<c:if test="${ testList.get(i).testNo eq vocaList.get(j).testNo && loginMember.mId eq vocaList.get(j).id}">
					<div class="modal fade pre${ match2 }" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-lg" role="document">
							<div class="modal-content">
								<div>
        <div style="display:flex; align-items:center; justify-content: center; overflow: hidden; z-index: 40;">
            <!-- 모달 백그라운드 -->
            <div style="bottom: 0; left: 0; position: absolute; right: 0; top: 0; background-color: rgba(10,10,10,0.86);"></div>

            <div style="width:800px; margin:0; display:flex; box-orient: vertical; box-direction:normal; flex-direction: column; overflow: hidden; background: white; z-index: 41; border-radius: 15px;">
                <!-- 헤드부분 -->
                <header class="modal-card-head" style="text-align:center;">
                    <p style="font-size: 15pt;font-weight: 500; margin: auto; font-family: 'Nanum Gothic', sans-serif;">${ testList.get(i).testTitle }
                        <a style="float:right; position: absolute; top:10px; right: 60px; font-size:32px;" class="closebtn" href="#">x</a>
                    </p>
                </header>
                <section class="modal-card-body">
                    <div id="quiz-list-form">
                        <section style="color:#484848; margin:0; padding: 0;">

                            <!-- 헤더 시작 -->
                            <div class="quiz-header">
                                <div class="doc-title">단어</div>
                                <div class="doc-sub-title">시험</div>
                                <!-- 추가 필 -->
                                <div class="blank-box-wrapper">
                                    <div class="blank-box" style="vertical-align: middle;">
                                        <h3 style="color: #000; font-size: 14pt; text-align: center; margin-top:15px;">${ vocaList.get(j).id }</h3>
                                    </div>
                                    <div class="blank-box">
                                        <h3 style="color: #000; font-size: 14pt; text-align: center;  margin-top:15px;">${ vocaList.get(j).testDate }</h3>
                                    </div>
                                    <div class="blank-box">
                                        <h3 style="color: red; font-size: 18pt; text-align: center;  margin-top:15px;">${ vocaList.get(j).score }</h3>
                                    </div>
                                </div>
                                <div class="quiz-info-box-wrapper" style="font-family: 'Nanum Gothic', sans-serif;">
                                    <div class="quiz-info-box">
                                        <h5 style="font-size: 3mm; position:absolute; color:#7a7a7a;">총 문제수</h5>
                                        <h3 style="text-align: center; font-size: 3mm; font-weight: 700; position: absolute; left: 30mm;">${ testList.get(i).testExno }</h3>
                                    </div>
                                    <div class="quiz-info-box">
                                        <h5 style="font-size: 3mm; position:absolute; color:#7a7a7a;">맞은 문제</h5>
                                        <c:set var="okCount" value="${fnc:split(vocaList.get(j).ok,',')}" />
                                        <c:set var="okCount2" value="${fnc:length(okCount) }"/>
                                        <h3 style="text-align: center; font-size: 3mm; font-weight: 700; position: absolute; left: 30mm;">${ okCount2 }</h3>
                                    </div>
                                    <div class="quiz-info-box">
                                        <h5 style="font-size: 3mm; position:absolute; color:#7a7a7a;">틀린 문제</h5>
                                        <c:set var="nokCount" value="${fnc:split(vocaList.get(j).nok,',')}" />
                                        <c:set var="nokCount2" value="${fnc:length(nokCount) }"/>
                                        <h3 style="text-align: center; font-size: 3mm; font-weight: 700; position: absolute; left: 30mm;">${ nokCount2 }</h3>
                                    </div>
                                </div>
                            </div>
                            <!-- 헤더 끝-->

                            <!-- 컨텐트 시작 -->
                            <div class="quiz-contents">
                                <div style="position: relative; ">
                                    <!-- 단어 넣기 for문 돌릴 예정 -->
                                    <c:set var="testAnswer" value="${fnc:split(testList.get(i).testEng,',') }"/>
                                    <c:set var="myAnswer" value="${fnc:split(vocaList.get(j).answer,',') }"/>
                                    <c:set var="kor" value="${fnc:split(testList.get(i).testKor,',') }"/>
                                    
                                    <c:forEach var="o" begin="0" end="${ testList.get(i).testExno - 1}">
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">${ o + 1 }
                                        	<c:if test="${ fnc:toUpperCase(testAnswer[o]) eq fnc:toUpperCase(myAnswer[o]) }">
                                            	<img src="${ contextPath }/resources/image//ok.png" style="z-index: 50; width:70px; height: 70px; position: absolute; top: -5px; right:-30px;">
                                            </c:if>
                                            <c:if test="${ fnc:toUpperCase(testAnswer[o]) ne fnc:toUpperCase(myAnswer[o]) }">
                                            	<img src="${ contextPath }/resources/image//nok.png" style="z-index: 50; width:70px; height: 70px; position: absolute; top: -5px; right:-30px;">
                                            </c:if>
                                        </div>
                                        <div class="filled-box">
                                            <div class="text-box" style="font-family: 'Nanum Gothic', sans-serif;">${ kor[o] }</div>
                                        </div>
                                        <div class="empty-box">
                                        	<c:choose>
                                        		<c:when test="${ myAnswer[o] eq 'otl' }">
                                        				<div class="text-box"></div>	
                                        		</c:when>
                                        		<c:otherwise>
                                        			<div class="text-box" style="font-family: 'Indie Flower', cursive; font-size:20px;">${ myAnswer[o] }</div>
                                        		</c:otherwise>
                                        	</c:choose>
                                        </div>
                                    </div>
                                    </c:forEach>
                                    <!-- for문 끝-->
                                </div>
                              </div>
                            <!-- 컨텐트 끝 -->
                        </section>
                    </div>
                </section>
            </div>
        </div>
    </div>
							</div>
						</div>
					</div>
					<c:set var="match2" value="${ match2 + 1 }"/>
				</c:if>
			</c:forEach>
		</c:forEach>
	</c:if>

</body>
</html>