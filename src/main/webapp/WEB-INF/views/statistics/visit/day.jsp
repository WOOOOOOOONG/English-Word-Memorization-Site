<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>외웟</title>
<!--Load the AJAX API-->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<!-- <link rel="stylesheet" href="css/chart.css">
<link rel="stylesheet" href="css/left-menubar.css"> -->
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
</style>
</head>

<body>
	<jsp:include page="../../common/menubar.jsp" />
	<jsp:include page="../../common/left-menubar.jsp" />
	<div class="table">
		<div id="chart_div" style="width: 1300px; height: 600px">
			<script>
				var arr = [];
				$(document).ready(function() {
					// 값 초기화
					for(var i = 0; i < 13; i++) {
						arr[i] = new Array();
						for (var j = 0; j < 32; j++) {
							arr[i][j] = 0;
						}
					}
					// arr[월][일] = 해당값   으로 구분지을 것. 일단 이번년도만 포함하기로 함
					<c:forEach var="item" items="${logList}">
						arr[${fn:substring(item.visitDate, 5, 7)}][${fn:substring(item.visitDate, 8, 10)}]
						 = arr[${fn:substring(item.visitDate, 5, 7)}][${fn:substring(item.visitDate, 8, 10)}] + 1;
					</c:forEach>
				});
				
				/* ${dateMap}.forEach(function(element) {
					console.log(element);
				}); */
				google.charts.load('current', {
					packages : [ 'corechart', 'bar' ]
				});
				google.charts.setOnLoadCallback(drawAxisTickColors);

				function drawAxisTickColors() {
					var data = new google.visualization.DataTable();
					var data = new google.visualization.DataTable();
					data.addColumn('string', 'Element');
					data.addColumn('number', 'Percentage');
					
					data.addRows([ [ '1일', arr[2][1] ], [ '2일', arr[2][2] ],
						[ '3일', arr[2][3] ], [ '4일', arr[2][4] ], [ '5일', arr[2][5] ],
						[ '6일', arr[2][6] ], [ '7일', arr[2][7] ], [ '8일', arr[2][8] ],
						[ '9일', arr[2][9] ], [ '10일', arr[2][10] ], [ '11일', arr[2][11] ],
						[ '12일', arr[2][12] ], [ '13일', arr[2][13] ], [ '14일', arr[2][14] ],
						[ '15일', arr[2][15] ], [ '16일', arr[2][16] ], [ '17일', arr[2][17] ],
						[ '18일', arr[2][18] ], [ '19일', arr[2][19] ], [ '20일', arr[2][20] ],
						[ '21일', arr[2][21] ], [ '22일', arr[2][22] ], [ '23일', arr[2][23] ],
						[ '24일', arr[2][24] ], [ '25일', arr[2][25] ], [ '26일', arr[2][26] ],
						[ '27일', arr[2][27] ], [ '28일', arr[2][28] ], [ '29일', arr[2][29] ]]); 
						/* [ '30일', arr[1][0] ], [ '31일', arr[1][0] ], ]; 2월은 29일까지만 있음 */
					
					var options = {
						title : '일자별 방문내역',
						backgroundColor : "whitesmoke",
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

					var chart = new google.visualization.ColumnChart(document
							.getElementById('chart_div'));
					chart.draw(data, options);
				}
			</script>
		</div>

		<!-- <table class="fixed_headers">
			<thead>
				<tr>
					<th>Name</th>
					<th>Color</th>
					<th>Description</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Apple</td>
					<td>Red</td>
					<td>These are red.</td>
				</tr>
				<tr>
					<td>Pear</td>
					<td>Green</td>
					<td>These are green.</td>
				</tr>
				<tr>
					<td>Grape</td>
					<td>Purple / Green</td>
					<td>These are purple and green.</td>
				</tr>
				<tr>
					<td>Orange</td>
					<td>Orange</td>
					<td>These are orange.</td>
				</tr>
				<tr>
					<td>Banana</td>
					<td>Yellow</td>
					<td>These are yellow.</td>
				</tr>
			</tbody>
		</table> -->
	</div>
</body>

</html>