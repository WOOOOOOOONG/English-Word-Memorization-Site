<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>SEW</title>
<!--Load the AJAX API-->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<!-- <link rel="stylesheet" href="css/chart.css">
<link rel="stylesheet" href="css/left-menubar.css"> -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/shotcuticon.png"
	type="image/x-icon">
<style>
/* 전체 */
body {
	font-family: "Open Sans", Helvetica Neue, Helvetica, Arial, sans-serif;
	;
}

/* 메뉴바 숨기기 */
.hide {
	display: none;
}

.buttons a {
	text-decoration: none;
	display: inline-block;
	padding: 8px 16px;
}

.buttons a:hover {
	background-color: #ddd;
	color: black;
}

.buttons .previous {
	background-color: #4CAF50;
	color: white;
}

.buttons .next {
	background-color: #4CAF50;
	color: white;
}

.buttons .round {
	border-radius: 50%;
}
</style>
</head>

<body>
	<div class="chart2 left">
		<!-- button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(7);">크게 보기</button> -->
		<div class="table chart-table" id="t4" style="z-index: 10">
			<div id="chart_div2" style="width: 1300px; height: 650px"></div>
		</div>
		<div style="text-align: center; ; margin-top: -60px; width:1300px; z-index: 999; position:absolute">
				<button type="button" class="btn" id="prev">&lt;</button>
				<button type="button" class="btn" id="curMonth"></button>
				<button type="button" class="btn" id="next">&gt;</button>
				
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
									data.addColumn('number', '조회수');
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
											.getElementById('chart_div2'));
									chart1.draw(data, options);
								}
								
								// 2
								var arr2 = [];
								var curMonth = 4;
								var curM = $('#curMonth');
								curM.text(curMonth + "월");
								
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
											curM.text(curMonth + "월");
										}
									});
									
									$("#next").click(function() {
										if(curMonth < 12) {
											curMonth = curMonth + 1;
											drawAxisTickColors2();
											curM.text(curMonth + "월");
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
									data.addColumn('number', '조회수');
									
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
</body>

</html>