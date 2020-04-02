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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/shotcuticon.png"
	type="image/x-icon">
<title>SEW</title>
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
	width: 1100px;
	/* height: 200px; */
	margin: 0 auto;
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
	margin: 0 auto;
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
	cursor: pointer;
}

.left {
	float: left;
}

.chart-table {
	z-index: 4;
}

.imotion {
	float: center;
}

.imotion div {
	position: relative;
	display: inline-block;
	border: 1px solid #d8d8d8;
	margin-right: 10px;
}

.arrow_box {
	display: none;
	position: absolute;
	width: 100px;
	padding: 8px;
	left: 0;
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	border-radius: 8px;
	background: #333;
	color: #fff;
	font-size: 14px;
	text-align: center;
	margin-left: -37px;
	margin-top: 3px;
}

.arrow_box:after {
	position: absolute;
	bottom: 100%;
	left: 50%;
	width: 0;
	height: 0;
	margin-left: -10px;
	border: solid transparent;
	border-color: rgba(51, 51, 51, 0);
	border-bottom-color: #333;
	border-width: 10px;
	pointer-events: none;
	content: " ";
}

.imo {
	display: block;
	cursor: pointer;
}

.imo:hover+p.arrow_box {
	display: block;
}

textarea {
	resize: none;
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
			<c:url var="voca2" value="classifyVoca.ad" />
			<c:url var="voca1" value="totalVoca.ad" />
			<a href='#' id='justify-icon'> <span
				class='glyphicon glyphicon-align-justify'></span>
			</a>
			<ul>
				<li class='expandable'><a class='expandable' href='#sec1'
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
						class='expanded-element'>stats</span>
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
					<h2 style="margin-top: 16px;">${sessionScope.loginMember.nickname}</h2>
					<p>${sessionScope.loginMember.introduce}</p>
				</div>
				<p class="profile" style="margin-top: -15px;">방문자 수 :
					${fn:length(logList)}</p>
				<p class="profile">보유 회원 수 : ${fn:length(mList)}</p>
				<p class="profile" id="vocaLength">등록된 단어장 수 :</p>
				<p class="profile">등록된 클래스 수 : ${fn:length(cList)}</p>
				<div style="margin-top: 0px; width: 100; height: 30px;"></div>
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
								<th style="width: 70px;">회원상태</th>
							</tr>
						</thead>
						<tbody>
							<c:if test="${ mList ne null }">
								<c:forEach var="item" items="${ mList }">
									<c:if test="${ item.mId ne 'admin' }">
										<tr>
											<td onclick="detailMember('${item.mId}');"
												style="cursor: pointer;">${ item.mId }</td>
											<td onclick="detailMember('${item.mId}');"
												style="cursor: pointer;">${ item.name }</td>
											<td onclick="detailMember('${item.mId}');"
												style="cursor: pointer;">${ item.nickname }</td>
											<td onclick="detailMember('${item.mId}');"
												style="cursor: pointer;">${ item.enrollDate }</td>
											<td onclick="detailMember('${item.mId}');"
												style="cursor: pointer;">${ item.updateDate }</td>
											<td style="width: 70px;"><c:if
													test="${ item.userStatus eq 'Y' }">
													<div class="imotion" style="cursor: pointer;">
														<div style="border: none;">
															<i class="fas fa-user-alt imo" style="font-size: 24px;"
																onclick="changeStatus('${item.mId}', '${item.userStatus}');"></i>
															<p class="arrow_box" style="z-index: 5;">정상</p>
														</div>
													</div>
												</c:if> <c:if test="${ item.userStatus eq 'N' }">
													<div class="imotion" style="cursor: pointer;">
														<div style="border: none;">
															<i class="fas fa-user-alt-slash imo"
																style="font-size: 24px; border: none;"
																onclick="changeStatus('${item.mId}', '${item.userStatus}');"></i>
															<p class="arrow_box" style="z-index: 5;">탈퇴</p>
														</div>
													</div>
												</c:if></td>
										</tr>
									</c:if>
								</c:forEach>
								<script>
									function detailMember(mId) {
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
					function changeStatus(mId, userStatus) {
						if(userStatus == 'Y') {
							if(confirm("해당 회원을 탈퇴시키겠습니까?")) {
								location.href="updateStatus.me?mId="+mId+"&userStatus="+userStatus;
							}
						}else if(userStatus == 'N') {
							if(confirm("해당 회원을 복구시키겠습니까?")) {
								location.href="updateStatus.me?mId="+mId+"&userStatus="+userStatus;
							}
						}
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
								<th>문의 제목</th>
								<th>등록일</th>
								<th>답변여부</th>
								<th>유형</th>
								<th>신고된 번호</th>
								<th>문의삭제</th>
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
									<td>${item.title}</td>
									<td>${item.registDate}</td>
									<td><c:if test="${item.isAnswer eq 'Y'}">
											완료
										</c:if> <c:if test="${item.isAnswer eq 'N'}">
											미답변
										</c:if></td>
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
									<td><c:if test="${item.reportedId eq null}">
											없음
										</c:if> <c:if test="${item.reportedId ne null}">
											${item.reportedId }
										</c:if></td>
									<td><i class="fa fa-archive" style="font-size: 28px;"
										onclick="inquireDeleteBtn('${item.iId}');"></i> <script>
											function inquireDeleteBtn(iId) {
												if(confirm("해당 문의를 삭제하시겠습니까?")) {
													location.href="deleteInquireAdmin.ad?iId="+iId;
												}
											}
										</script></td>
								</tr>
								<tr class="inquire">
									<td colspan="9"><textarea
											style="width: 100%; height: 200px; resize: none;"
											placeholder="${item.content}" readonly></textarea></td>
									<td style="display: none;"></td>
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
										<td colspan="9"><textarea
												style="width: 100%; height: 200px; resize: none;"
												placeholder="${item.answer}" readonly></textarea></td>
										<td style="display: none;"></td>
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
										<td></td>
										<td><button type="button" onclick="responseDelete('${item.iId}');">답변
												삭제</button></td>
									</tr>
								</c:if>
								<c:if test="${item.isAnswer eq 'N' }">
									<tr class="answer">
										<td colspan="9"><textarea
												style="width: 100%; height: 200px; resize: none;"
												class="textarea" id="textarea${item.iId}"></textarea></td>
										<td style="display: none;"></td>
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
										<td></td>
										<td>
											<form action="response.ad" method="post">
												<textarea name="text" class="resText"
													id="resText${item.iId}"
													style="display: none; resize: none;"></textarea>
												<input type="text" name="iId" value="${item.iId}"
													id="iId${item.iId}" style="display: none;">
												<script>
													var textarea = $('#textarea${item.iId}');
													textarea.change(function() {
														var resText = $('#resText${item.iId}');
														resText.val(this.value);
													});
												</script>
												<button type="button" class="resButton${item.iId}"
													onclick="response('${item.iId}');">답변 등록</button>
											</form>
										</td>
									</tr>
								</c:if>
							</c:forEach>
							<script>
								function response(iId) {
									var textarea = $('#textarea'+iId);
									if(textarea.val() == "") {
										alert("문의 내용을 입력하세요");
										$('.resButton'+iId).prop("type", "button");
										textarea.focus();
									}else {
										$('.resButton'+iId).prop("type", "none");
									}
								};
							</script>
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
			              
				            $(".paging_simple_numbers").click(function() {
								$(".inquire").hide();
								$(".answer").hide();
								$(".answer-button").hide();
								
								$(".view").click(
										function() {
											$(this).next(".inquire").slideToggle();
											$(this).next(".inquire")
													.next(".answer").slideToggle();
											$(this).next(".inquire")
													.next(".answer").next(
															".answer-button")
													.slideToggle();
										});
							});
			            });
			            
			            function responseDelete(iId) {
			            	if(window.confirm('답변을 삭제하시겠습니까?')) {
			            		location.href='responseDelete.ad?iId='+iId;
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
					<div class="chart2 left" onclick="viewLarge(1)">
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
										data.addColumn('number', '조회수');
										data.addRows([
											<c:forEach var="item" items="${cvList}">
												['${item.title}', ${item.nowMemberCount}], 
											</c:forEach>
										]);
										var options = {
											title : '최다 조회수',
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
					<div class="chart2 left" onclick="viewLarge(2)">
						<div class="table chart-table">
							<div id="piechart_5d" style="width: 650px; height: 300px;">
								<c:set var="cType1" value="0" />
								<c:set var="cType2" value="0" />
								<c:set var="cType3" value="0" />
								<c:set var="cType4" value="0" />
								<c:set var="cType5" value="0" />
								<c:set var="cType6" value="0" />
								<c:set var="cType7" value="0" />
								<c:set var="cType8" value="0" />
								<c:set var="cType9" value="0" />
								<c:set var="cType10" value="0" />
								<c:set var="cType11" value="0" />
								<c:set var="cType12" value="0" />
								<c:set var="cType13" value="0" />
								<c:forEach var="item" items="${cvList}">
									<c:choose>
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
										<c:when test="${item.cateId eq 8}">
											<c:set var="cType8" value="${cType8 + 1}" />
										</c:when>
										<c:when test="${item.cateId eq 9}">
											<c:set var="cType9" value="${cType9 + 1}" />
										</c:when>
										<c:when test="${item.cateId eq 10}">
											<c:set var="cType10" value="${cType10 + 1}" />
										</c:when>
										<c:when test="${item.cateId eq 11}">
											<c:set var="cType11" value="${cType11 + 1}" />
										</c:when>
										<c:when test="${item.cateId eq 12}">
											<c:set var="cType12" value="${cType12 + 1}" />
										</c:when>
										<c:when test="${item.cateId eq 13}">
											<c:set var="cType13" value="${cType13 + 1}" />
										</c:when>
									</c:choose>
								</c:forEach>
								<script type="text/javascript">
									var ctype = new Array();
									ctype[1] = ${cType1};
									ctype[2] = ${cType2};
									ctype[3] = ${cType3};
									ctype[4] = ${cType4};
									ctype[5] = ${cType5};
									ctype[6] = ${cType6};
									ctype[7] = ${cType7};
									ctype[8] = ${cType8};
									ctype[9] = ${cType9};
									ctype[10] = ${cType10};
									ctype[11] = ${cType11};
									ctype[12] = ${cType12};
									ctype[13] = ${cType13};
									
									google.charts.load("current", {
										packages : [ "corechart" ]
									});
									google.charts.setOnLoadCallback(drawChart5);
									function drawChart5() {
										var data5 = google.visualization.arrayToDataTable([
												[ 'Task', 'Hours per Day' ], [ 'TOEIC', ctype[1] ],
												[ 'TOFEL', ctype[2] ], [ 'TEPS', ctype[3] ], [ 'G_TELP', ctype[4] ],
												[ 'FLEX', ctype[5] ], [ '중등', ctype[6] ], [ '고등', ctype[7] ], [ '수능', ctype[8] ],
												[ '9급 공무원', ctype[9] ], [ '경찰 공무원', ctype[10] ], [ '편입', ctype[11] ], [ '프로그래머', ctype[12] ],
												[ '기타', ctype[13] ]
												]);
										 
										var options5 = {
											title : '유형별',
											titleFontSize : 14,
											fontSize : 14,
											is3D : true,
											backgroundColor : "",
											fontName: "Roboto"
										};
					
										var chart5 = new google.visualization.PieChart(document
												.getElementById('piechart_5d'));
										chart5.draw(data5, options5);
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
					<div class="chart2" onclick="viewLarge(3)">
						<!-- <button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(5);">크게 보기</button> -->
						<c:set var="itype0" value="0" />
						<c:set var="itype1" value="0" />
						<c:set var="itype2" value="0" />
						<c:set var="itype3" value="0" />
						<c:forEach var="item" items="${inquireList}">
							<c:choose>
								<c:when test="${item.type eq 0}">
									<c:set var="itype0" value="${itype0 + 1}" />
								</c:when>
								<c:when test="${item.type eq 1}">
									<c:set var="itype1" value="${itype1 + 1}" />
								</c:when>
								<c:when test="${item.type eq 2}">
									<c:set var="itype2" value="${itype2 + 1}" />
								</c:when>
								<c:when test="${item.type eq 3}">
									<c:set var="itype3" value="${itype3 + 1}" />
								</c:when>
							</c:choose>
						</c:forEach>

						<div class="table chart-table">
							<div id="piechart_3d" style="width: 650px; height: 300px;">
								<script type="text/javascript">
								var itype = new Array();
								itype[0] = ${itype0};
								itype[1] = ${itype1};
								itype[2] = ${itype2};
								itype[3] = ${itype3};
								
								google.charts.load("current", {
									packages : [ "corechart" ]
								});
								google.charts.setOnLoadCallback(drawChart);
								function drawChart() {
									var data = google.visualization.arrayToDataTable([
											[ 'Task', 'Hours per Day' ], [ '계정', itype[0] ],
											[ '시스템', itype[1] ], [ '사용자', itype[2] ], [ '기타', itype[3] ]]);
				
									var options = {
										title : '유형별',
										titleFontSize : 14,
										fontSize : 14,
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
					<div class="chart2 left" onclick="viewLarge(4)">
						<!-- <button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(6);">크게 보기</button> -->
						<div class="table chart-table" id="t3">
							<div id="chart_div1" style="width: 650px; height: 300px"></div>
						</div>
					</div>
					<div class="chart2 left" onclick="viewLarge(5)">
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
									data.addColumn('number', '방문자수');
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
								var curMonth = 4;
								
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
									data.addColumn('number', '방문자수');
									
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
				<br> <br>

				<!-- voca -->
				<h6 class="title2">단어장 통계</h6>
				<div class="chart">
					<div class="chart2 left" onclick="viewLarge(6)">
						<div class="table">
							<div id="chart_div4" style="width: 650px; height: 300px">
								<script>
								var vocaList = Array();
								var vocaLength = 0;
								
								$.ajax(
							            {
							                type: "POST",
							                dataType: "json",
							                contentType: "application/json; charset=utf-8",
							                data: JSON.stringify({_id:"CSID_45"}),
							                url: 'http://192.168.10.13:1222/total',
							                success: function (data) {
							                        var vocaLengthText = $("#vocaLength");
							                        vocaLength = data.length;
							                        
							                        // 관리자 정보에서 등록된 단어장 수 수정
							                        vocaLengthText.text("등록된 단어장 수 : " + 35);
													
													// 2차원 배열화
													for(var i = 0; i < 100; i++) {
														vocaList[i] = new Array();
													}
							                        console.log(data);
													// 단어 데이터 추출

													var count = 0;
								                    for(var i = 0; i < vocaLength; i++) {
								                       	for(var j in data[i].category) {
								                       		vocaList[count][0] = j; // 단어장 제목
								                       		vocaList[count][1] = data[i].category[j]; // 카테고리 숫자
								                       		vocaList[count][2] = 0;
								                        	for(var k in data[i].privilege) {
								                        		if(vocaList[count][0] == k) {
								                        			var priCount = 0;
								                        			for(var l in data[i].privilege[k]) {
								                        				priCount++;
								                        			}
								                        			vocaList[count][2] = priCount; // 사용자 수
								                        		}
								                        	}
								                        	count++;
								                        }
								                    }
								                    
								                    vocaLength = count;
							                        
							                        // 전체 통계를 위한 배열 생성
							                        for(var i = 0; i < 13; i++) {
														arr1[i] = new Array();
														arr1[i] = 0;
													}
													// arr[월][일] = 해당값   으로 구분지을 것. 일단 이번년도만 포함하기로 함
													<c:forEach var="item" items="${logList}">
														arr1[${fn:substring(item.visitDate, 5, 7)}]
														 = arr1[${fn:substring(item.visitDate, 5, 7)}] + 1;
													</c:forEach>
							                },
							                error: function () {
							                    console.log("error has occured retriving data from MongoServer")
							                }
							            });
				setTimeout(function() {
					google.charts.load('current', {
						packages : [ 'corechart', 'bar' ]
					});
					google.charts.setOnLoadCallback(drawAxisTickColors4);	
				}, 3000);	            
				

				function drawAxisTickColors4() {
					var data4 = new google.visualization.DataTable();
					vocaList = vocaList.sort(function(a, b) {
                   		return a[2] > b[2] ? -1 : a[2] < b[2] ? 1 : 0; 
                   	});
					
					data4.addColumn('string', 'Element');
					data4.addColumn('number', '이용자수');
					if(vocaLength > 10) {
						vocaLength = 10;
					}
					for(var i = 0; i < vocaLength; i++) {
						data4.addRows([ [vocaList[i][0], vocaList[i][2]] ]);
					}
					var options = {
						title : '최다 조회수',
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
								italic : false
							},
							gridlines : {
								count : 24
							}
						},
						vAxis : {
							textStyle : {
								fontSize : 18,
								color : '#67055f',
								bold : false,
								italic : false
							},
							titleTextStyle : {
								fontSize : 18,
								color : '#67055f',
								bold : true,
								italic : false
							}
						}
					};

					var chart = new google.visualization.ColumnChart(document
							.getElementById('chart_div4'));
					chart.draw(data4, options);
					
					
					
					// 유형별 단어장
					var vtype = new Array();
					for(var i = 0; i < 13; i++) {
						vtype[i] = 0;
					}
					
					google.charts.load("current", {
						packages : [ "corechart" ]
					});
					google.charts.setOnLoadCallback(drawChart4);
					function drawChart4() {
						var vocaType = Array();
						for(var i = 0; i < 13; i++) {
							vocaType[i] = 0;
						} 
						for(var i = 0; i < vocaLength; i++) {
							if(vocaList[i][2] <= 13 && vocaList[i][2] >= 0) {
								vocaType[vocaList[i][2]]++;
							}
						}
						var data = google.visualization.arrayToDataTable([
								[ 'Task', 'Hours per Day' ], [ 'TOEIC', 6 ],
								[ 'TOFEL', vocaType[1] ], [ 'TEPS', vocaType[2] ], [ 'G_TELP', vocaType[3] ],
								[ 'FLEX', vocaType[4] ], [ '중등', vocaType[5] ], [ '고등', vocaType[6] ],
								[ '수능', vocaType[7] ], [ '9급 공무원', vocaType[8] ], [ '경찰 공무원', vocaType[9] ],
								[ '편입', vocaType[10] ], [ '프로그래머', vocaType[11] ], [ '기타', vocaType[12] ],
						]);

						var options = {
							title : '유형별',
							titleFontSize : 14,
							fontSize : 14,
							is3D : true,
							backgroundColor : ""
						};

						var chart = new google.visualization.PieChart(document
								.getElementById('piechart_3d4'));
						chart.draw(data, options);
					}
				}
			</script>
							</div>
						</div>
					</div>
					<div class="chart2 left" onclick="viewLarge(7)">
						<div class="table chart-table">
							<div id="piechart_3d4" style="width: 650px; height: 300px;">
							</div>
						</div>
					</div>
				</div>
				<script>
				function viewLarge(value) {
	            	var url = "";
	            	
	            	switch(value) {
	            	case 1:
	            		url = "${ class2 }";
	            		break;
	            	case 2 :
	            		url = "${ class1 }";
	            		break;
	            	case 3:
	            		url = "${ inquire }";
	            		break;
	            	case 4: 
	            		url = "${ visit3 }";
	            		break;
	            	case 5:
	            		url = "${ visit2 }";
	            		break;
	            	case 6:
	            		url = "${ voca1 }";
	            		break;
	            	case 7:
	            		url = "${ voca2 }";
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
	            	var width = 1300;
	            	var height = 650;
	            	var openX = (window.screen.width / 2) - (width / 2);
	            	var openY = (window.screen.height / 2) - (height / 2);
	            	window.open(url, "_blank", "status=no, width=" + width + ",height=" + height + ", left=" + openX + ", top=" + openY);           
	            }
			</script>
		</section>

		<div style="height: 30px; margin-bottom: 60px;"></div>
	</c:if>

	<c:if test="${sessionScope.loginMember.mId ne 'admin'}">
		<script>
			window.onload = function() {
				location.href="viewMain.ad";
			}
		</script>
	</c:if>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>