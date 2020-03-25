<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<!-- <link rel="stylesheet" href=".../css/left-menubar.css"> -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<title>Insert title here</title>
<style>
/* sidebar */
@import "compass/css3";

@import url('https://getbootstrap.com/dist/css/bootstrap.css');

@import
	url("//netdna.bootstrapcdn.com/bootstrap/3.0.0-rc2/css/bootstrap-glyphicons.css")
	;

body {
	background: whitesmoke;
}

nav.sidebar {
	float: left;
	z-index: 40;
}

nav.sidebar-menu-collapsed {
	width: 50px;
}

nav.sidebar-menu-expanded {
	width: 106px;
}

nav.sidebar {
	position: fixed;
	height: 60vh;
	background: green;
	color: white;
	padding: 20px 10px;
}

nav.sidebar a#justify-icon {
	outline: 0;
	color: white;
	font-size: 24px;
	font-style: normal;
}

nav.sidebar a#logout-icon {
	outline: 0;
	color: white;
	font-size: 24px;
	font-style: normal;
	position: absolute;
	bottom: 10px;
	left: 10px;
}

nav.sidebar ul {
	margin: 0;
	padding: 0;
	margin-top: 60px;
}

nav.sidebar ul li {
	margin: 0;
	padding: 0;
	margin-top: 20px;
	list-style-type: none;
}

nav.sidebar ul li a.expandable {
	outline: 0;
	color: white;
	text-decoration: none;
	font-size: 20px;
}

nav.sidebar ul li a.expandable:hover {
	color: #bbb;
}

nav.sidebar ul li a.expandable span.expanded-element {
	margin-left: 2px;
	display: none;
	font-size: 11px;
	position: relative;
	bottom: 2px;
}

nav.sidebar ul li.active {
	background: none repeat scroll 0 0 black;
	border-radius: 4px;
	text-align: center;
	margin-left: -4px;
	padding: 4px;
}

nav.sidebar ul li.active a.expandable {
	color: white !important;
}

nav.sidebar ul li.active a.expandable:hover {
	color: white !important;
}

/* section */
.section {
	width: 1400px;
	/* height: 300px; */
	margin-top: 50px;
	margin-left: auto;
	margin-right: auto;
	background: white;
	border-radius: 10px;
	box-shadow: 0 3px 10px #000;
}

@media screen and (max-width: 1500px) {
	.section {
		margin-left: 70px;
	}
}

.view {
	cursor: pointer;
}

.textarea {
	width: 1200px;
	height: 250px;
	border-radius: 3px;
}

.title {
	padding-top: 20px;
	padding-left: 30px;
}

.title2 {
	margin-left: 30px;
	margin-top: -20px;
}

.subtitle {
	padding-left: 30px;
	font-size: 14px;
	color: gray;
	float: left;
}

.subtitle2 {
	padding-left: 30px;
	font-size: 14px;
	color: gray;
}

.moreBtn {
	margin-top: -140px;
	margin-left: 1300px;
}

.moreBtn2 {
	margin-top: 5px;
	margin-left: 570px;
	font-size: 9px;
	z-index: 9;
	position: absolute;
}

#btn {
	font-size: 9px;
}

/* section1 */
.avatar {
	width: 280px;
	padding: 2em 0.5em;
	text-align: center;
	margin-top: -30px;
	margin-left: 80px;
	float: left;
}

.avatar img {
	width: 110px;
	height: 110px;
	border-radius: 50%;
	overflow: hidden;
	border: 4px solid #ffea92;
	box-shadow: 0 0 0 4px rgba(255, 255, 255, 0.2);
	float: left;
}

.avatar h2 {
	font-weight: normal;
	margin-bottom: 0;
}

.profile {
	margin-left: 1000px;
}

/* section2 */
.sec2 {
	
}

.table_id {
	text-align: center;
}

.dataTables_length, .dataTables_info {
	display: none;
}

#t1 {
	width: 1000px;
	/* height: 200px; */
	margin-top: -90px;
	margin-left: 200px;
	padding-bottom: 50px;
	/* position: absolute; */
}

/* section3 */
.sec3 {
	
}

#t2 {
	width: 1100px;
	/* height: 200px; */
	margin-top: -85px;
	margin-left: 170px;
	padding-bottom: 50px;
	/* position: absolute; */
}

/* section4 */
.sec4 {
	height: 1500px;
}

.chart {
	/* background: whitesmoke; */
	width: 1350px;
	height: 300px;
	margin: 0 auto;
}

.chart2 {
	/* background: whitesmoke; */
	width: 650px;
	height: 300px;
}

.left {
	float: left;
}

.chart-table {
	z-index: 4;
}
</style>
</head>
<body>
	<c:if test="${sessionScope.loginMember.mId eq 'admin'}">
		<jsp:include page="../common/menubar.jsp" />

		<nav class='sidebar sidebar-menu-collapsed'>
			<c:url var="admin1" value="memberList.me" />
			<c:url var="admin2" value="selectInquireList.ad" />
			<c:url var="class1" value="classify.cl" />
			<c:url var="class2" value="total.cl" />
			<c:url var="inquire" value="inquireStat.ad" />
			<c:url var="visit1" value="visitTime.ad" />
			<c:url var="visit2" value="visitDay.ad" />
			<c:url var="visit3" value="visitMonth.ad" />
			<c:url var="voca1" value="classify.voca" />
			<c:url var="voca2" value="total.voca" />
			<a href='#' id='justify-icon'> <span
				class='glyphicon glyphicon-align-justify'></span>
			</a>
			<ul>
				<li class='active'><a class='expandable' href='#sec1'
					title='Dashboard'> <span
						class='glyphicon glyphicon-home collapsed-element'></span> <span
						class='expanded-element'>HOME</span>
				</a></li>
				<li><a class='expandable' href='#sec2' title='Account'> <span
						class='glyphicon glyphicon-user collapsed-element'></span> <span
						class='expanded-element'>Account</span>
				</a></li>
				<li><a class='expandable' href='#sec3' title='APIs'> <span
						class='glyphicon glyphicon-wrench collapsed-element'></span> <span
						class='expanded-element'>Inquire</span>
				</a></li>
				<li><a class='expandable' href='#sec4' title='Settings'> <span
						class='glyphicon glyphicon-cog collapsed-element'></span> <span
						class='expanded-element'>Settings</span>
				</a></li>
			</ul>
			<a href='Memberlogout.me' id='logout-icon' title='Logout'> <span
				class='glyphicon glyphicon-off'></span>
			</a>
			<script>
			(function() {
				$(function() {
					var collapseMyMenu, expandMyMenu, hideMenuTexts, showMenuTexts;
					expandMyMenu = function() {
						return $("nav.sidebar").removeClass(
								"sidebar-menu-collapsed").addClass(
								"sidebar-menu-expanded");
					};
					collapseMyMenu = function() {
						return $("nav.sidebar").removeClass(
								"sidebar-menu-expanded").addClass(
								"sidebar-menu-collapsed");
					};
					showMenuTexts = function() {
						return $("nav.sidebar ul a span.expanded-element")
								.show();
					};
					hideMenuTexts = function() {
						return $("nav.sidebar ul a span.expanded-element")
								.hide();
					};
					return $("#justify-icon").click(
							function(e) {
								if ($(this).parent("nav.sidebar").hasClass(
										"sidebar-menu-collapsed")) {
									expandMyMenu();
									showMenuTexts();
									$(this).css({
										color : "#000"
									});
								} else if ($(this).parent("nav.sidebar")
										.hasClass("sidebar-menu-expanded")) {
									collapseMyMenu();
									hideMenuTexts();
									$(this).css({
										color : "#FFF"
									});
								}
								return false;
							});
				});

			}).call(this);
		</script>
		</nav>

		<section>
			<div class="section sec1" id="sec1">
				<h4 class="title">관리자정보</h4>
				<p class="subtitle">관리자 정보에요</p>
				<div class="avatar" style="width: 350px; margin-left: 250px;">
					<img id="myphoto"
						src="${ pageContext.request.contextPath }/resources/profileimg/${loginMember.profileimg}" />
					<h2>${sessionScope.loginMember.nickname}</h2>
					<p>${sessionScope.loginMember.introduce}</p>
				</div>
				<p class="profile" style="">방문자 수 : ${fn:length(logList)}</p>
				<p class="profile">보유 회원 수 : ${fn:length(mList)}</p>
				<p class="profile">등록된 단어장 수 :</p>
				<p class="profile">등록된 클래스 수 : ${fn:length(cList)}</p>
				<div style="margin-top: 0px; width:100; height:30px;"></div>
			</div>
		</section>

		<section>
			<div class="section sec2" id="sec2">
				<h4 class="title">회원 정보</h4>
				<p class="subtitle">회원 관련 정보입니다</p>
				<!-- <button type="button" class="btn btn-outline-secondary moreBtn"
					onclick="goHomePage(1)">크게 보기</button> -->
				<div class="table" id="t1" style="">
					<table id="table1" class="display table_id">
						<thead>
							<tr>
								<td>ID</td>
								<th>이름</th>
								<th>닉네임</th>
								<th>가입일</th>
								<th>수정일</th>
								<th>회원상태</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${ mList ne null }">
								<c:forEach var="item" items="${ mList }">
									<tr>
										<td onclick="detailMember('${item.mId}');" style="cursor: pointer;">${ item.mId }</td>
										<td onclick="detailMember('${item.mId}');" style="cursor: pointer;">${ item.name }</td>
										<td onclick="detailMember('${item.mId}');" style="cursor: pointer;">${ item.nickname }</td>
										<td onclick="detailMember('${item.mId}');" style="cursor: pointer;">${ item.enrollDate }</td>
										<td onclick="detailMember('${item.mId}');" style="cursor: pointer;">${ item.updateDate }</td>
										<c:if test="${ item.userStatus eq 'Y'}">
											<c:set var="selectedY" value="selected" />
										</c:if>
										<c:if test="${ item.userStatus eq 'N'}">
											<c:set var="selectedN" value="selected" />
										</c:if>
										<td><c:url var="updateStatus" value="updateStatus.me">
												<c:param name="mId" value="${ item.mId }" />
												<c:param name="userStatus" value="${ item.userStatus }" />
											</c:url> <select id="statusSelected" onchange="changeStatus(this);">
												<option value="Y" ${ selectedY }>Y</option>
												<option value="N" ${ selectedN }>N</option>
										</select></td>
									</tr>
								</c:forEach>
								<script>
									function detailMember(mId) {
										console.log("hi?");
										var width = 920;
										var height = 620;
										
										var popupX = (window.screen.width / 2) - (width / 2);
										var popupY = (window.screen.height / 2) - (height / 2);
										window.open('detailMember.ad?mId='+mId, '', 'status=no, height=' + height  
											+ ', width=' + width  + ', left='+ popupX + ', top='+ popupY);
									}
								</script>
							</c:if>
						</tbody>
					</table>
					<script>
					// datatable
		            $(document).ready(function () {
		                $('#table1').DataTable({
		                	"ordering":false,
							"language" : {
								"emptyTable" : "등록된 회원이 없습니다."
							},
							"pageLength": 10,
		                });
		            });  
					
					// 회원 탈퇴 상태 변경
					function changeStatus(e) {
						location.href="${ updateStatus }";
					}
		        </script>
				</div>
			</div>
		</section>

		<section>
			<div class="section sec3" id="sec3">
				<h4 class="title">문의 정보</h4>
				<p class="subtitle">문의 관련 정보입니다</p>
				<!-- <button type="button" class="btn btn-outline-secondary moreBtn"
					onclick="goHomePage(2);">크게 보기</button> -->
				<div class="table" id="t2">
					<table id="table2" class="display table_id">
						<thead>
							<tr>
								<th>NO</th>
								<th>신고자</th>
								<th>이름</th>
								<th>유형</th>
								<th>문의 제목</th>
								<th>등록일</th>
								<th>답변여부</th>
								<th>신고된 번호</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0" />
							<c:forEach var="item" items="${ inquireList }">
								<c:set var="i" value="${i+1}" />
								<tr class="view">
									<td>${i}</td>
									<td>${item.inquirerId}</td>
									<td>${item.name}</td>
									<td><c:if test="${item.type eq 0}">
											시스템
										</c:if> <c:if test="${item.type eq 1}">
											사용자
										</c:if> <c:if test="${item.type eq 2}">
											단어장
										</c:if> <c:if test="${item.type eq 3}">
											클래스
										</c:if> <c:if test="${item.type eq 4}">
											게시판
										</c:if> <c:if test="${item.type eq 5}">
											기타
										</c:if></td>
									<td>${item.title}</td>
									<td>${item.registDate}</td>
									<td>${item.isAnswer}</td>
									<td>${item.reportedId}</td>
								</tr>
								<tr class="inquire">
									<td colspan="8"><textarea
											style="width: 100%; height: 200px"
											placeholder="${item.content}" readonly></textarea></td>
									<td style="display: none;"></td>
									<td style="display: none;"></td>
									<td style="display: none;"></td>
									<td style="display: none;"></td>
									<td style="display: none;"></td>
									<td style="display: none;"></td>
									<td style="display: none;"></td>
								</tr>
								<!-- 답변이 이미 작성되었으면 보여주기만 하고, 버튼을 '작성' 대신 '삭제'로 바꾼다. -->
								<c:if test="${item.isAnswer eq 'Y'}">
									<tr class="answer">
										<td colspan="8"><textarea
												style="width: 100%; height: 200px"
												placeholder="${item.answer}" readonly></textarea></td>
										<td style="display: none;"></td>
										<td style="display: none;"></td>
										<td style="display: none;"></td>
										<td style="display: none;"></td>
										<td style="display: none;"></td>
										<td style="display: none;"></td>
										<td style="display: none;"></td>
									</tr>
									<tr class="answer-button" style="background: none">
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<c:url var="responseDelete" value="responseDelete.ad">
											<c:param name="iId" value="${item.iId}" />
										</c:url>
										<td><button type="button" onclick="responseDelete();">답변
												삭제</button></td>
									</tr>
								</c:if>
								<c:if test="${item.isAnswer eq 'N' }">
									<tr class="answer">
										<td colspan="8"><textarea style="width: 100%; height: 200px" class="textarea" id="textarea${item.iId}"></textarea></td>
										<td style="display: none;"></td>
										<td style="display: none;"></td>
										<td style="display: none;"></td>
										<td style="display: none;"></td>
										<td style="display: none;"></td>
										<td style="display: none;"></td>
										<td style="display: none;"></td>
									</tr>
									<tr class="answer-button" style="background: none">
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td>
											<form action="response.ad" method="post">
												<textarea name="text" class="resText" id="resText${item.iId}" style="display:none;"></textarea>
												<input type="text" name="iId" value="${item.iId}" id="iId${item.iId}" style="display:none;">
												<script>
													var textarea = $('#textarea${item.iId}');
													textarea.change(function() {
														var resText = $('#resText${item.iId}');
														resText.val(this.value);
													});
												</script> 
												<button>답변 등록</button>
											</form>
										</td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>

					<script>
			            $(document).ready(function () {
			            	// DataTable 정의
							$('#table2').DataTable({
				            	"ordering":false,
				            	"pageLength": 40,
								"language" : {
									"emptyTable" : "등록된 문의가 없습니다."
								}
				            });
			            	
			            	// 문의/답변란 토글 기능
			                $(".inquire").hide();
			                $(".answer").hide();
			                $(".answer-button").hide();
			                
			              //content 클래스를 가진 div를 표시/숨김(토글)
				            $(".view").click(function() {
				             	$(this).next(".inquire").slideToggle();
				             	$(this).next(".inquire").next(".answer").slideToggle();
				             	$(this).next(".inquire").next(".answer").next(".answer-button").slideToggle();
				            });
			            });
			            
			            function responseDelete() {
			            	if(window.confirm('답변을 삭제하시겠습니까?')) {
			            		location.href='${responseDelete}';
			            	}
			            }
	        		</script>
				</div>
			</div>
		</section>

		<section>
			<div class="section sec4" id="sec4">
				<h4 class="title">통계 정보</h4>
				<p class="subtitle2">통계 관련 정보입니다</p>
				<br>
				<!-- class -->
				<h6 class="title2">클래스 통계</h6>
				<div class="chart">
					<div class="chart2 left">
						<!-- <button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(3);">크게 보기</button> -->
						<div class="table chart-table">
							<div id="chart_divC" style="width: 650px; height: 300px">
								<script>
									google.charts.load('current', {
										packages : [ 'corechart', 'bar' ]
									});
									google.charts.setOnLoadCallback(drawAxisTickColors);
					
									function drawAxisTickColors() {
										var data = new google.visualization.DataTable();
										var data = new google.visualization.DataTable();
										data.addColumn('string', 'Element');
										data.addColumn('number', 'Percentage');
										data.addRows([
											<c:forEach var="item" items="${cvList}">
												['${item.title}', ${item.nowMemberCount}], 
											</c:forEach>
										]);
										var options = {
											title : '인기 클래스',
											backgroundColor : "",
											focusTarget : 'category',
											hAxis : {
												title : '',
												format : 'dd',
												viewWindow : {
												//   min: [7, 0, 0],
												//   max: [37, 30, 30]
												},
												textStyle : {
													fontSize : 14,
													color : '#053061',
													bold : true,
													italic : false,
													fontName: "Roboto"
												},
												titleTextStyle : {
													fontSize : 18,
													color : '#053061',
													bold : true,
													italic : false,
													fontName: "Roboto"
												},
												gridlines : {
													count : 24
												}
											},
											vAxis : {
												textStyle : {
													fontSize : 14,
													color : '#67055f',
													bold : false,
													italic : false,
													fontName: "Roboto"
												},
												titleTextStyle : {
													fontSize : 18,
													color : '#67055f',
													bold : true,
													italic : false,
													fontName: "Roboto"
												}
											}
										};
					
										var chart = new google.visualization.ColumnChart(document
												.getElementById('chart_divC'));
										chart.draw(data, options);
									}
								</script>
							</div>
						</div>
					</div>
					<div class="chart2 left">
						<!-- <button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(4);">크게 보기</button> -->
						<div class="table chart-table">
							<div id="piechart_4d" style="width: 650px; height: 300px;">
								<c:set var="cType0" value="0" />
								<c:set var="cType1" value="0" />
								<c:set var="cType2" value="0" />
								<c:set var="cType3" value="0" />
								<c:set var="cType4" value="0" />
								<c:set var="cType5" value="0" />
								<c:set var="cType6" value="0" />
								<c:set var="cType7" value="0" />
								<c:forEach var="item" items="${cvList}">
									<c:choose>
										<c:when test="${item.cateId eq 0}">
											<c:set var="cType0" value="${cType0 + 1}" />
										</c:when>
										<c:when test="${item.cateId eq 1}">
											<c:set var="cType1" value="${cType1 + 1}" />
										</c:when>
										<c:when test="${item.cateId eq 2}">
											<c:set var="cType2" value="${cType2 + 1}" />
										</c:when>
										<c:when test="${item.cateId eq 3}">
											<c:set var="cType3" value="${cType3 + 1}" />
										</c:when>
										<c:when test="${item.cateId eq 4}">
											<c:set var="cType4" value="${cType4 + 1}" />
										</c:when>
										<c:when test="${item.cateId eq 5}">
											<c:set var="cType5" value="${cType5 + 1}" />
										</c:when>
										<c:when test="${item.cateId eq 6}">
											<c:set var="cType6" value="${cType6 + 1}" />
										</c:when>
										<c:when test="${item.cateId eq 7}">
											<c:set var="cType7" value="${cType7 + 1}" />
										</c:when>
									</c:choose>
								</c:forEach>
								<script type="text/javascript">
									var type = new Array();
									type[0] = ${cType0};
									type[1] = ${cType1};
									type[2] = ${cType2};
									type[3] = ${cType3};
									type[4] = ${cType4};
									type[5] = ${cType5};
									type[6] = ${cType6};
									type[7] = ${cType7};
									
									google.charts.load("current", {
										packages : [ "corechart" ]
									});
									google.charts.setOnLoadCallback(drawChart);
									function drawChart() {
										var data = google.visualization.arrayToDataTable([
												[ 'Task', 'Hours per Day' ], [ '토익', type[0] ],
												[ '9급 공무원', type[1] ], [ '경찰', type[2] ], [ '수능', type[3] ],
												[ '기타', type[4] ], [ 'ㄴㄴ', type[5] ], [ 'ㅇㅇ', type[6] ], [ 'ㄹㄹ', type[7] ] ]);
										 
										var options = {
											title : '클래스 분포',
											titleFontSize : 14,
											fontSize : 18,
											is3D : true,
											backgroundColor : "",
											fontName: "Roboto"
										};
					
										var chart = new google.visualization.PieChart(document
												.getElementById('piechart_4d'));
										chart.draw(data, options);
									}
								</script>
							</div>
						</div>
					</div>
				</div>
				<br> <br>

				<!-- inquire -->
				<h6 class="title2">문의 통계</h6>
				<div class="chart">
					<div class="chart2">
						<!-- <button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(5);">크게 보기</button> -->
						<c:set var="type0" value="0" />
						<c:set var="type1" value="0" />
						<c:set var="type2" value="0" />
						<c:set var="type3" value="0" />
						<c:forEach var="item" items="${inquireList}">
							<c:choose>
								<c:when test="${item.type eq 0}">
									<c:set var="type0" value="${type0 + 1}" />
								</c:when>
								<c:when test="${item.type eq 1}">
									<c:set var="type1" value="${type1 + 1}" />
								</c:when>
								<c:when test="${item.type eq 2}">
									<c:set var="type2" value="${type2 + 1}" />
								</c:when>
								<c:when test="${item.type eq 3}">
									<c:set var="type3" value="${type3 + 1}" />
								</c:when>
							</c:choose>
						</c:forEach>

						<div class="table chart-table">
							<div id="piechart_3d" style="width: 650px; height: 300px;">
								<script type="text/javascript">
								var type = new Array();
								type[0] = ${type0};
								type[1] = ${type1};
								type[2] = ${type2};
								type[3] = ${type3};
								
								google.charts.load("current", {
									packages : [ "corechart" ]
								});
								google.charts.setOnLoadCallback(drawChart);
								function drawChart() {
									var data = google.visualization.arrayToDataTable([
											[ 'Task', 'Hours per Day' ], [ '계정', type[0] ],
											[ '시스템', type[1] ], [ '사용자', type[2] ], [ '기타', type[3] ]]);
				
									var options = {
										title : '신고 - 유형별',
										titleFontSize : 18,
										fontSize : 20,
										is3D : true,
										backgroundColor : ""
									};
				
									var chart = new google.visualization.PieChart(document
											.getElementById('piechart_3d'));
									chart.draw(data, options);
								}
							</script>
							</div>
						</div>
					</div>
				</div>
				<br> <br>

				<!-- visit -->
				<h6 class="title2">방문 통계</h6>
				<div class="chart">
					<div class="chart2 left">
						<!-- <button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(6);">크게 보기</button> -->
						<div class="table chart-table" id="t3">
							<div id="chart_div1" style="width: 650px; height: 300px"></div>
						</div>
					</div>
					<div class="chart2 left">
						<!-- button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(7);">크게 보기</button> -->
						<div class="table chart-table" id="t4">
							<div id="chart_div2" style="width: 650px; height: 300px"></div>
						</div>
					</div>
					<script>
								var arr1 = [];
								$(document).ready(function() {
									// 값 초기화
									for(var i = 0; i < 13; i++) {
										arr1[i] = new Array();
										arr1[i] = 0;
									}
									// arr[월][일] = 해당값   으로 구분지을 것. 일단 이번년도만 포함하기로 함
									<c:forEach var="item" items="${logList}">
										arr1[${fn:substring(item.visitDate, 5, 7)}]
										 = arr1[${fn:substring(item.visitDate, 5, 7)}] + 1;
									</c:forEach>
								});
								
								google.charts.load('current', {
									packages : [ 'corechart', 'bar' ]
								});
								google.charts.setOnLoadCallback(drawAxisTickColors1);
				
								function drawAxisTickColors1() {
									var data = new google.visualization.DataTable();
									var data = new google.visualization.DataTable();
									data.addColumn('string', 'Element');
									data.addColumn('number', 'Percentage');
									data.addRows([ [ '1월', arr1[1] ], [ '2월', arr1[2] ],
											[ '3월', arr1[3] ], [ '4월', arr1[4] ], [ '5월', arr1[5] ],
											[ '6월', arr1[6] ], [ '7월', arr1[7] ], [ '8월', arr1[8] ],
											[ '9월', arr1[9] ], [ '10월', arr1[10] ], [ '11월', arr1[11] ],
											[ '12월', arr1[12] ], ]);
									var options = {
										title : '월별 방문내역',
										backgroundColor : "",
										focusTarget : 'category',
										hAxis : {
											title : 'Time of Day',
											format : 'dd',
											viewWindow : {
											//   min: [7, 0, 0],
											//   max: [37, 30, 30]
											},
											textStyle : {
												fontSize : 14,
												color : '#053061',
												bold : true,
												italic : false,
												fontName: "Roboto"
											},
											titleTextStyle : {
												fontSize : 18,
												color : '#053061',
												bold : true,
												italic : false,
												fontName: "Roboto"
											},
											gridlines : {
												count : 30
											}
										},
										vAxis : {
											textStyle : {
												fontSize : 14,
												color : '#67001f',
												bold : false,
												italic : false,
												fontName: "Roboto"
											},
											titleTextStyle : {
												fontSize : 18,
												color : '#67001f',
												bold : true,
												italic : false,
												fontName: "Roboto"
											}
										}
									};
				
									var chart1 = new google.visualization.ColumnChart(document
											.getElementById('chart_div1'));
									chart1.draw(data, options);
								}
								
								// 2
								var arr2 = [];
								var curMonth = 3;
								
								$(document).ready(function() {
									// 값 초기화
									for(var i = 0; i < 13; i++) {
										arr2[i] = new Array();
										for (var j = 0; j < 32; j++) {
											arr2[i][j] = 0;
										}
									}
									// arr[월][일] = 해당값   으로 구분지을 것. 일단 이번년도만 포함하기로 함
									<c:forEach var="item" items="${logList}">
										arr2[${fn:substring(item.visitDate, 5, 7)}][${fn:substring(item.visitDate, 8, 10)}]
										 = arr2[${fn:substring(item.visitDate, 5, 7)}][${fn:substring(item.visitDate, 8, 10)}] + 1;
									</c:forEach>
									
									$("#prev").click(function() {
										if(curMonth > 1) {
											curMonth = curMonth - 1;
											drawAxisTickColors2();
										}
									});
									
									$("#next").click(function() {
										if(curMonth < 12) {
											curMonth = curMonth + 1;
											drawAxisTickColors2();
										}
									});
								});
								
								google.charts.load('current', {
									packages : [ 'corechart', 'bar' ]
								});
								google.charts.setOnLoadCallback(drawAxisTickColors2);
				
								function drawAxisTickColors2() {
									var data = new google.visualization.DataTable();
									data.addColumn('string', 'Element');
									data.addColumn('number', 'Percentage');
									
									data.addRows([ [ '1일', arr2[curMonth][1] ], [ '2일', arr2[curMonth][curMonth] ],
										[ '3일', arr2[curMonth][curMonth] ], [ '4일', arr2[curMonth][4] ], [ '5일', arr2[curMonth][5] ],
										[ '6일', arr2[curMonth][6] ], [ '7일', arr2[curMonth][7] ], [ '8일', arr2[curMonth][8] ],
										[ '9일', arr2[curMonth][9] ], [ '10일', arr2[curMonth][10] ], [ '11일', arr2[curMonth][11] ],
										[ '12일', arr2[curMonth][12] ], [ '13일', arr2[curMonth][13] ], [ '14일', arr2[curMonth][14] ],
										[ '15일', arr2[curMonth][15] ], [ '16일', arr2[curMonth][16] ], [ '17일', arr2[curMonth][17] ],
										[ '18일', arr2[curMonth][18] ], [ '19일', arr2[curMonth][19] ], [ '20일', arr2[curMonth][20] ],
										[ '21일', arr2[curMonth][21] ], [ '22일', arr2[curMonth][22] ], [ '23일', arr2[curMonth][23] ],
										[ '24일', arr2[curMonth][24] ], [ '25일', arr2[curMonth][25] ], [ '26일', arr2[curMonth][26] ],
										[ '27일', arr2[curMonth][27] ], [ '28일', arr2[curMonth][28] ], [ '29일', arr2[curMonth][29] ], 
										[ '30일', arr2[curMonth][30] ], [ '31일', arr2[curMonth][31] ] ]);
									
									var options = {
										title : '일자별 방문내역(' + curMonth + '월)',
										backgroundColor : "",
										focusTarget : 'category',
										hAxis : {
											title : '',
											format : 'dd',
											viewWindow : {
											//   min: [0, 0, 0],
											//   max: [37, 30, 30]
											},
											textStyle : {
												fontSize : 14,
												color : '#053061',
												bold : true,
												italic : false,
												fontName: "Roboto"
											},
											titleTextStyle : {
												fontSize : 18,
												color : '#053061',
												bold : true,
												italic : false,
												fontName: "Roboto"
											},
											gridlines : {
												count : 30
											}
										},
										vAxis : {
											textStyle : {
												fontSize : 14,
												color : '#67001f',
												bold : false,
												italic : false,
												fontName: "Roboto"
											},
											titleTextStyle : {
												fontSize : 18,
												color : '#67001f',
												bold : true,
												italic : false,
												fontName: "Roboto"
											}
										}
									};
				
									var chart2 = new google.visualization.ColumnChart(document
											.getElementById('chart_div2'));
									chart2.draw(data, options);
								}
							</script>
				</div>
				<br><br>

				<!-- voca -->
				<h6 class="title2">단어장 통계</h6>
				<div class="chart">
					<div class="chart2 left">
						<!-- <button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(8);">크게 보기</button> -->
					</div>
					<div class="chart2 left">
						<!-- <button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(9);">크게 보기</button> -->
					</div>
				</div>
			</div>
			<script>
				function goHomePage(value) {
	            	var url = "";
	            	
	            	switch(value) {
	            	case 1:
	            		url = "${ admin1 }";
	            		break;
	            	case 2 :
	            		url = "${ admin2 }";
	            		break;
	            	case 3:
	            		url = "${ class2 }";
	            		break;
	            	case 4:
	            		url = "${ class1 }";
	            		break;
	            	case 5:
	            		url = "${ inquire }";
	            		break;
	            	case 6:
	            		url = "${ visit2 }";
	            		break;
	            	case 7:
	            		url = "${ visit3 }";
	            		break;
	            	case 8:
	            		url = "${ voca2 }";
	            		break;
	            	case 9:
	            		url = "${ voca1 }";
	            		break;	            		
	            	default:
	            		break;
	            	}
	            	console.log(url);
	            	window.open(url, "_blank");           
	            }
			</script>
		</section>

		<div style="height: 30px;"></div>
	</c:if>

	<c:if test="${sessionScope.loginMember.mId ne 'admin'}">
		<script>
			window.onload = function() {
				location.href="viewMain.ad";
			}
		</script>
	</c:if>
</body>
</html>