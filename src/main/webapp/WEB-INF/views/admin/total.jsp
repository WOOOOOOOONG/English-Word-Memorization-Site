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
	background: none repeat scroll 0 0 #09f;
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
	height: 300px;
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
	margin-left: 30px;
	float: left;
}

.avatar img {
	width: 110px;
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
	width: 800px;
	height: 200px;
	margin-top: -90px;
	margin-left: 400px;
	position: absolute;
}

/* section3 */
#t2 {
	width: 800px;
	height: 200px;
	margin-top: -85px;
	margin-left: 360px;
	position: absolute;
}

/* section4 */
.sec4 {
	height: 1500px;
}

.chart {
	background: whitesmoke;
	width: 1350px;
	height: 300px;
	margin: 0 auto;
}

.chart2 {
	background: whitesmoke;
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
			<a href='#' id='logout-icon' title='Logout'> <span
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
				<div class="avatar">
					<img
						src="https://s3.amazonaws.com/uifaces/faces/twitter/kolage/128.jpg" />
					<h2>홍길동</h2>
					<p>자기소개</p>
				</div>
				<p class="profile">방문자 수 : ${fn:length(logList)}</p>
				<p class="profile">보유 회원 수 : ${fn:length(mList)}</p>
				<p class="profile">등록된 단어장 수 :</p>
				<p class="profile">등록된 클래스 수 :</p>
				<div style="margin-top: 20px; border: 1px solid black;"></div>
			</div>
		</section>

		<section>
			<div class="section sec2" id="sec2">
				<h4 class="title">회원 정보</h4>
				<p class="subtitle">회원 관련 정보입니다</p>
				<button type="button" class="btn btn-outline-secondary moreBtn"
					onclick="goHomePage(1)">자세히</button>
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
										<td>${ item.mId }</td>
										<td>${ item.name }</td>
										<td>${ item.nickname }</td>
										<td>${ item.enrollDate }</td>
										<td>${ item.updateDate }</td>
										<c:if test="${ item.userStatus eq 'Y'}">
											<c:set var="selectedY" value="selected" />
										</c:if>
										<c:if test="${ item.userStatus eq 'N'}">
											<c:set var="selectedN" value="selected" />
										</c:if>
										<td>${item.userStatus}</td>
									</tr>
								</c:forEach>
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
							"pageLength": 3,
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
				<button type="button" class="btn btn-outline-secondary moreBtn"
					onclick="goHomePage(2);">자세히</button>
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
								<th>신고된 아이디</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0" />
							<c:forEach var="item" items="${ inquireList }">
								<c:set var="i" value="${i+1}" />
								<tr class="view">
									<td>${item.iId}</td>
									<td>${item.inquirerId}</td>
									<td>${item.name}</td>
									<td>${item.type}</td>
									<td>${item.title}</td>
									<td>${item.registDate}</td>
									<td>${item.isAnswer}</td>
									<td>${item.reportedId}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<script>
		            $(document).ready(function () {
		            	// DataTable 정의
						$('#table2').DataTable({
			            	"ordering":false,
			            	"pageLength": 3,
							"language" : {
								"emptyTable" : "등록된 문의가 없습니다."
							}
			            });
		            	
		            	// 문의/답변란 토글 기능
		                $(".inquire").hide();
		                $(".answer").hide();
		                $(".answer-button").hide();
		            });
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
						<button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(3);">자세히</button>
					</div>
					<div class="chart2 left">
						<button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(4);">자세히</button>
					</div>
				</div>
				<br>
				<br>

				<!-- inquire -->
				<h6 class="title2">문의 통계</h6>
				<div class="chart">
					<div class="chart2">
						<button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(5);">자세히</button>
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
										backgroundColor : "whitesmoke"
									};
				
									var chart = new google.visualization.PieChart(document
											.getElementById('piechart_3d'));
									chart.draw(data, options);
									/* console.log(data.wg[0].c[0].v); // 나중에 이용
									console.log(data.wg[0].c[1].v); */
								}
							</script>
							</div>
						</div>
					</div>
				</div>
				<br>
				<br>

				<!-- visit -->
				<h6 class="title2">방문 통계</h6>
				<div class="chart">
					<div class="chart2 left">
						<button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(6);">자세히</button>
						<div class="table chart-table" id="t3">
							<div id="chart_div1" style="width: 650px; height: 300px"></div>
						</div>
					</div>
					<div class="chart2 left">
						<button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(7);">자세히</button>
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
										backgroundColor : "whitesmoke",
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
												italic : false
											},
											titleTextStyle : {
												fontSize : 18,
												color : '#053061',
												bold : true,
												italic : false
											},
											gridlines : {
												count : 30
											}
										},
										vAxis : {
											textStyle : {
												fontSize : 18,
												color : '#67001f',
												bold : false,
												italic : false
											},
											titleTextStyle : {
												fontSize : 18,
												color : '#67001f',
												bold : true,
												italic : false
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
										/* console.log(curMonth); */
										if(curMonth > 1) {
											curMonth = curMonth - 1;
											/* console.log(curMonth); */
											drawAxisTickColors2();
										}
									});
									
									$("#next").click(function() {
										if(curMonth < 12) {
											curMonth = curMonth + 1;
											/* console.log(curMonth); */
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
										backgroundColor : "whitesmoke",
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
												italic : false
											},
											titleTextStyle : {
												fontSize : 18,
												color : '#053061',
												bold : true,
												italic : false
											},
											gridlines : {
												count : 30
											}
										},
										vAxis : {
											textStyle : {
												fontSize : 18,
												color : '#67001f',
												bold : false,
												italic : false
											},
											titleTextStyle : {
												fontSize : 18,
												color : '#67001f',
												bold : true,
												italic : false
											}
										}
									};
				
									var chart2 = new google.visualization.ColumnChart(document
											.getElementById('chart_div2'));
									chart2.draw(data, options);
								}
							</script>
				</div>
				<br>
				<br>

				<!-- voca -->
				<h6 class="title2">단어장 통계</h6>
				<div class="chart">
					<div class="chart2 left">
						<button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(8);">자세히</button>
					</div>
					<div class="chart2 left">
						<button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(9);">자세히</button>
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