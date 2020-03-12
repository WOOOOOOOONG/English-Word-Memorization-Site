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
						arr[i] = 0;
					}
					// arr[월][일] = 해당값   으로 구분지을 것. 일단 이번년도만 포함하기로 함
					<c:forEach var="item" items="${logList}">
						arr[${fn:substring(item.visitDate, 5, 7)}]
						 = arr[${fn:substring(item.visitDate, 5, 7)}] + 1;
					</c:forEach>
				});
				
				google.charts.load('current', {
					packages : [ 'corechart', 'bar' ]
				});
				google.charts.setOnLoadCallback(drawAxisTickColors);

				function drawAxisTickColors() {
					var data = new google.visualization.DataTable();
					var data = new google.visualization.DataTable();
					data.addColumn('string', 'Element');
					data.addColumn('number', 'Percentage');
					data.addRows([ [ '1월', arr[1] ], [ '2월', arr[2] ],
							[ '3월', arr[3] ], [ '4월', arr[4] ], [ '5월', arr[5] ],
							[ '6월', arr[6] ], [ '7월', arr[7] ], [ '8월', arr[8] ],
							[ '9월', arr[9] ], [ '10월', arr[10] ], [ '11월', arr[11] ],
							[ '12월', arr[12] ], ]);
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