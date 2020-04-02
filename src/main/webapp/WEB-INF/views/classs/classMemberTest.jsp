<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.kh.spring.classs.model.vo.ClassMember"%>
<%@page import="java.util.ArrayList"%>
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
<link rel="stylesheet" href="${ contextPath }/resources/css/test.css"
type="text/css">
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<jsp:include page="../common/classSideMenubar.jsp"/>
	
<!-- 컨텐트 부분-->
    <div style="margin-top :4vh; margin-left: 4vw; width:70%; height:800px; float: left; overflow: auto;">
    
    <!-- 시험본 사람 명수 재는거  -->
    	<c:set var="count" value="0"/>
    	<c:if test="${ !empty ctList && !empty tvList}">
			<c:forEach var="i" begin="0" end="${ctList.size()-1 }">
				<c:forEach var="j" begin="0" end="${ tvList.size()-1 }">
					<c:if test="${ ctList.get(i).testNo eq tvList.get(j).testNo && ctList.get(i).testTitle eq LastTestTitle}">
						 <c:set var="count" value="${ count + 1 }"/>
					</c:if>
				</c:forEach>
			</c:forEach>
		</c:if>
    	<div style="margin:auto; width:50%; text-align:center; border-bottom:1px solid gray; font-family:cinzel;">
        	<h1>MEMBER TEST VIEW (${ count })</h1>
        </div><br><br>
        
        <!-- 전체 셀렉 -->
        <select class="custom-select" id="titleSelect" style="width:300px; height:40px; float:right; margin-top:-50px; overflow-y: scroll; font-family: 'Nanum Gothic', sans-serif; margin-top:-20px;">
        	<c:if test="${ !empty ctList }">
        		<c:forEach var="i" begin="0" end="${ ctList.size()-1 }">
        			<c:if test="${ ctList.get(i).testTitle eq LastTestTitle }">
        				<option value="${ i }" selected>${ ctList.get(i).testTitle }</option>
        			</c:if>
        			<c:if test="${ ctList.get(i).testTitle ne LastTestTitle }">
        				<option value="${ i }">${ ctList.get(i).testTitle }</option>
        			</c:if>
        		</c:forEach>
        	</c:if>
        	<c:if test="${ empty ctList }">
        		<option>시험 목록이 존재하지않습니다.</option>
        	</c:if>
        </select>
        
        <script>
        	$(function(){
        		$("#titleSelect").change(function(){
        			var title = $("#titleSelect option:selected").text();
        			location.href="classMemberTest.do?LastTestTitle=" + title + "&cNo=${ cNo }";
        		});
        	});
        </script>
       	<br><br>
       	
       	<ul class="nav nav-tabs" style="margin-left:850px;">
		  <li class="nav-item">
		    <a class="nav-link active" data-toggle="tab" href="#tab1" style="color:black;">시험 본 멤버 보기</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" data-toggle="tab" href="#tab2" style="color:black;">시험 안 본 멤버 보기</a>
		  </li>
		</ul>
       	
       	<div class="tab-content">
       		 <div class="tab-pane fade show active" id="tab1">
    <table class="table table-hover" style="width:80%; text-align: center; margin:auto; position: :relative; margin-left:10%;">
        <thead style="font-family: 'Nanum Gothic', sans-serif;">
            <tr>
                <th scope="col" style="width:8%;"></th>
                <th scope="col" style="width:15%;">아이디</th>
                <th scope="col" style="width:15%;">닉네임</th>
                <th scope="col" style="width:12%;">시험일</th>
                <th scope="col" style="width:20%;">점수</th>
                <th scope="col" style="width:15%;">보기</th>
                <th scope="col" style="width:15%;">재시험</th>
            </tr>
        </thead>
        <tbody style="font-family: 'Nanum Gothic', sans-serif;">
        	<c:set var="match" value="0"/>
        	<c:if test="${ !empty ctList }">
        		<c:set var="flag" value="true"/>
        		<c:forEach var="i" begin="0" end="${ ctList.size()-1 }">
        			<c:if test="${ !empty tvList }">
        				<c:forEach var="j" begin="0" end="${ tvList.size()-1 }">
        					<c:if test="${ tvList.get(j).testNo eq ctList.get(i).testNo && ctList.get(i).testTitle eq LastTestTitle }">
        						<tr id="tr${ match }">
		        							<!-- 아이콘 부분 -->
								<c:set var="imgFlag2" value="true"/>
								<c:forEach var="q" begin="0" end="${ userList.size() - 1 }" >	 <!--  ajoa2012 -->
									<c:if test="${ tvList.get(j).id eq userList.get(q).refId && imgFlag2 }">
										 <th scope="row">
										 	<img src="${ contextPath }/resources/profileimg/${ userList.get(q).changeName }" style="width:100%; height:50px; border-radius:50px;s">
										 </th>
										<c:set var="imgFlag2" value="false"/>
									</c:if>
								</c:forEach>
								<c:if test="${ imgFlag2 }">
									<th scope="row">
										<img src="${ contextPath }/resources/profileimg/defaultimg.png" style="width:100%; height:50px; border-radius:50px;">
									</th>
								</c:if>
        							
					                <td style="line-height:4;" id="id${ match }">${ tvList.get(j).id }</td>
					                <c:forEach var="t" begin="0" end="${ allMember.size() - 1 }">
										<c:if test="${ tvList.get(j).id eq allMember.get(t).mId }">
											<td style="line-height:4;">${ allMember.get(t).nickname }</td>
										</c:if>
					                </c:forEach>
					                <td style="line-height:4;">${ tvList.get(j).testDate }</td>
					                <td style="line-height:4;">${ tvList.get(j).score }</td>
					                <td><button type="button" class="btn btn-secondary" data-toggle="modal" data-target=".pre${ match }" id="pre${ match }">확인</button></td>
					                <td><button type="button" class="btn btn-secondary reTest" id="reTest${ match }">재시험</button></td>
					                <c:set var="flag" value="false"/>
					                <c:set var="match" value="${ match + 1 }"/>
					                <c:set var="testNo2" value="${ ctList.get(i).testNo }"/>
        						</tr>
        					</c:if>
        				</c:forEach>
        			</c:if>
        		</c:forEach>
        		
        		<c:if test="${ flag }">
        			<td colspan="6">해당 시험의 응시자가 없습니다.</td>
        		</c:if>
        	</c:if>
        	
        	
        	<c:if test="${ empty ctList }">
        		<td colspan="6">해당 시험의 응시자가 없습니다.</td>
        	</c:if>
            
        </tbody>
    </table>
    </div>
    	<script>
    		$(function(){
    			$(".reTest").click(function(){
    				var index = $(this).prop('id').replace('reTest','');
    				var id = $("#id" + index).text();
    				if(confirm(id + "님의 시험을 초기화 하시겠습니까?")){
    					location.href="reTest.do?cNo=${cNo}&LastTestTitle=${ LastTestTitle }&testNo=${ testNo2 }&id=" + id;
    				}
    			});
    		});
    	</script>
    
     <div class="tab-pane fade" id="tab2">
     	<table class="table table-hover" style="width:80%; text-align: center; margin:auto; position: :relative; margin-left:10%;">
        <thead style="font-family: 'Nanum Gothic', sans-serif;">
            <tr>
                <th scope="col" style="width:8%;"></th>
                <th scope="col" style="width:20%;">아이디</th>
                <th scope="col" style="width:20%;">닉네임</th>
                <th scope="col" style="width:52%;">마지막 방문일</th>
            </tr>
        </thead>
        <tbody style="font-family: 'Nanum Gothic', sans-serif;"">
        	<c:if test="${ !empty ctList }">
	        	<c:forEach var="i" begin="0" end="${ ctList.size() -1 }">
	        		<c:if test="${ ctList.get(i).testTitle eq LastTestTitle }">
	        			<c:set var="testNo" value="${ ctList.get(i).testNo }"/>
	        		</c:if>
	        	</c:forEach>
        	</c:if>
        	
        	<%
			    Map<String,ClassMember> list = new HashMap<String,ClassMember>();
			    	
				pageContext.setAttribute("list", list);
			%>
				<c:set var="proCount" value="0"/>
				<c:set var="perfectFlag" value="false"/>
        	<c:choose>
        		<c:when test="${ !empty testNo  }">	
	        		<c:forEach var="i" begin="0" end="${ tvList.size() - 1 }">
	        			<c:if test="${ tvList.get(i).testNo eq testNo }"> <!--  두명이 시험봤으니깐 두개 나옴  -->
	        				<c:forEach var="j" begin="0" end="${ cmList.size() - 1 }">
	        					<c:if test="${ tvList.get(i).id eq cmList.get(j).id }">
        							 <c:set target="${list}" property="${ cmList.get(j).id }" value="${ cmList.get(j) }"/> <!-- 시험본애 따로 보관  --> <!--  후에 전체 리스트에서 체크해서 출력x -->
        							 <c:set var="proCount" value="${proCount + 1 }"/>
        							<%-- <c:set target="${ list }" property="${ cmList.get(j).id }" value="${ cmList.get(j) }"/> --%>
        							<c:set var="testFlag" value="true"/>
	        					</c:if>
	        				</c:forEach>
	        			</c:if>
	        			
	        		</c:forEach>
	        		<c:if test="${ perfectFlag }">
	        			<tr>
	        				<td colspan="6">미 응시자가 없습니다.</td>
	        			</tr>
	        		</c:if>
        		</c:when>
        		<c:otherwise>
        			<tr>
        				<td colspan="6">해당 시험이 존재하지않습니다.</td>
        			</tr>
        		</c:otherwise>	
        	</c:choose>
        	
        	<c:choose>
        	<c:when test="${ !empty list }"> 
        		<c:forEach var="i" begin="0" end="${ cmList.size() - 1 }">
        			<c:set var="mapFlag" value="true"/>
        			<c:forEach var="j" items="${ list }">
        				<c:if test="${ j.key eq cmList.get(i).id }">
        					<c:set var="mapFlag" value="false"/>
        				</c:if>
        			</c:forEach>
        			<c:if test="${ mapFlag }">
        				<tr>
        					<%-- <th scope="row"><img src="${ contextPath }/resources/image//icon1.jpg"style="width:100%;"></th> --%>
       								<!-- 아이콘 부분 -->
							<c:set var="imgFlag2" value="true"/>
							<c:forEach var="q" begin="0" end="${ userList.size() - 1 }" >	 <!--  ajoa2012 -->
								<c:if test="${ cmList.get(i).id eq userList.get(q).refId && imgFlag2 }">
									 <th scope="row">
									 	<img src="${ contextPath }/resources/profileimg/${ userList.get(q).changeName }" style="width:100%; height:50px; border-radius:50px;">
									 </th>
									<c:set var="imgFlag2" value="false"/>
								</c:if>
							</c:forEach>
							<c:if test="${ imgFlag2 }">
								<th scope="row">
									<img src="${ contextPath }/resources/profileimg/defaultimg.png" style="width:100%; height:50px; border-radius:50px;">
								</th>										
								<c:set var="imgFlag2" value="false"/>
							</c:if>
        					<td>${ cmList.get(i).id }</td>
        					<c:forEach var="t" begin="0" end="${ allMember.size() - 1 }">
								<c:if test="${ cmList.get(i).id eq allMember.get(t).mId }">
									<td style="line-height:4;">${ allMember.get(t).nickname }</td>
								</c:if>
			                </c:forEach>
        					<td colspan="4">${ cmList.get(i).lastday }</td>
        				</tr>
        			</c:if>
        		</c:forEach> 
        	</c:when>
        	<c:otherwise>
        		<c:forEach var="i" begin="0" end="${ cmList.size() - 1 }">
        			<tr>
      							<!-- 아이콘 부분 -->
							<c:set var="imgFlag2" value="true"/>
							<c:forEach var="q" begin="0" end="${ userList.size() - 1 }" >	 <!--  ajoa2012 -->
								<c:if test="${ cmList.get(i).id eq userList.get(q).refId && imgFlag2 }">
									 <th scope="row">
									 	<img src="${ contextPath }/resources/profileimg/${ userList.get(q).changeName }" style="width:100%; height:50px; border-radius:50px;">
									 </th>
									<c:set var="imgFlag2" value="false"/>
								</c:if>
							</c:forEach>
							<c:if test="${ imgFlag2 }">
								<th scope="row">
									<img src="${ contextPath }/resources/profileimg/defaultimg.png" style="width:100%;">
								</th>										
								<c:set var="imgFlag2" value="false"/>
							</c:if>
      					<td>${ cmList.get(i).id }</td>
      					<c:forEach var="t" begin="0" end="${ allMember.size() - 1 }">
							<c:if test="${ cmList.get(i).id eq allMember.get(t).mId }">
								<td style="line-height:4;">${ allMember.get(t).nickname }</td>
							</c:if>
		                </c:forEach>
      					<td colspan="4">${ cmList.get(i).lastday }</td>
      				</tr>
        		</c:forEach>
        	</c:otherwise>
        	</c:choose>
       </tbody>
        </table>
     </div>
     
     
     
    </div>
    
    
    </div>



    <!-- 버튼 클릭시 시험지 나옴 -->
	<c:set var="match2" value="0"/>
	<c:if test="${ !empty ctList && !empty tvList}">
		<c:forEach var="i" begin="0" end="${ctList.size()-1 }">
			<c:forEach var="j" begin="0" end="${ tvList.size()-1 }">
				<c:if test="${ ctList.get(i).testNo eq tvList.get(j).testNo && ctList.get(i).testTitle eq LastTestTitle}">
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
                    <p style="font-size: 15pt;font-weight: 500; margin: auto; font-family: 'Nanum Gothic', sans-serif;">${ctList.get(i).testTitle }
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
                                    <div class="blank-box">
                                        <h3 style="color: #000; font-size: 14pt; text-align: center;  margin-top:15px;">${ tvList.get(j).id }</h3>
                                    </div>
                                    <div class="blank-box">
                                        <h3 style="color: #000; font-size: 14pt; text-align: center;  margin-top:15px;">${ tvList.get(j).testDate }</h3>
                                    </div>
                                    <div class="blank-box">
                                        <h3 style="color: red; font-size: 18pt; text-align: center;  margin-top:15px;">${ tvList.get(j).score }</h3>
                                    </div>
                                </div>
                                <div class="quiz-info-box-wrapper">
                                    <div class="quiz-info-box">
                                        <h5 style="font-size: 3mm; position:absolute; color:#7a7a7a;">총 문제수</h5>
                                        <h3 style="text-align: center; font-size: 3mm; font-weight: 700; position: absolute; left: 30mm;">${ ctList.get(i).testExno }</h3>
                                    </div>
                                    <div class="quiz-info-box">
                                        <h5 style="font-size: 3mm; position:absolute; color:#7a7a7a;">맞은 문제</h5>
                                        <c:set var="okCount" value="${fnc:split(tvList.get(j).ok,',')}" />
                                        <c:set var="okCount2" value="${fnc:length(okCount) }"/>
                                        <h3 style="text-align: center; font-size: 3mm; font-weight: 700; position: absolute; left: 30mm;">${ okCount2 }</h3>
                                    </div>
                                    <div class="quiz-info-box">
                                        <h5 style="font-size: 3mm; position:absolute; color:#7a7a7a;">틀린 문제</h5>
                                        <c:set var="nokCount" value="${fnc:split(tvList.get(j).nok,',')}" />
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
                                    <c:set var="testAnswer" value="${fnc:split(ctList.get(i).testEng,',') }"/>
                                    <c:set var="myAnswer" value="${fnc:split(tvList.get(j).answer,',') }"/>
                                    <c:set var="kor" value="${fnc:split(ctList.get(i).testKor,',') }"/>
                                    
                                    <c:forEach var="o" begin="0" end="${ ctList.get(i).testExno - 1}">
                                    <div class="word-box" style="float: left;">
                                        <div class="word-number">${ o + 1 }
                                        	<c:if test="${ fnc:toUpperCase(testAnswer[o]) eq fnc:toUpperCase(myAnswer[o]) }">
                                            	<img src="${ contextPath }/resources/image//ok.png" style="z-index: 50; width:70px; height: 70px; position: absolute; top: -5px; right:-30px;">
                                            </c:if>
                                            <c:if test="${ fnc:toUpperCase(testAnswer[o]) ne fnc:toUpperCase(myAnswer[o]) }">
                                            	<img src="${ contextPath }/resources/image//nok.png" style="z-index: 50; width:70px; height: 70px; position: absolute; top: -5px; right:-30px;">
                                            </c:if>
                                        </div>
                                        <div class="filled-box" style="font-family: 'Nanum Gothic', sans-serif;">
                                            <div class="text-box">${ kor[o] }</div>
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