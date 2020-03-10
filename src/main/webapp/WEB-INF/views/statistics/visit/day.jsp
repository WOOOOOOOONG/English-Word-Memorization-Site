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
	<jsp:include page="../../common/menubar.jsp" />
	<jsp:include page="../../common/left-menubar.jsp" />
	<div class="table">
		<div id="chart_div" style="width: 1300px; height: 600px">
			<script>
				var arr = [];
				var curMonth = 3;
				
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
					
					$("#prev").click(function() {
						console.log(curMonth);
						if(curMonth > 1) {
							curMonth = curMonth - 1;
							console.log(curMonth);
							drawAxisTickColors();
						}
					});
					
					$("#next").click(function() {
						if(curMonth < 12) {
							curMonth = curMonth + 1;
							console.log(curMonth);
							drawAxisTickColors();
						}
					});
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
					
					data.addRows([ [ '1일', arr[curMonth][1] ], [ '2일', arr[curMonth][curMonth] ],
						[ '3일', arr[curMonth][curMonth] ], [ '4일', arr[curMonth][4] ], [ '5일', arr[curMonth][5] ],
						[ '6일', arr[curMonth][6] ], [ '7일', arr[curMonth][7] ], [ '8일', arr[curMonth][8] ],
						[ '9일', arr[curMonth][9] ], [ '10일', arr[curMonth][10] ], [ '11일', arr[curMonth][11] ],
						[ '12일', arr[curMonth][12] ], [ '13일', arr[curMonth][13] ], [ '14일', arr[curMonth][14] ],
						[ '15일', arr[curMonth][15] ], [ '16일', arr[curMonth][16] ], [ '17일', arr[curMonth][17] ],
						[ '18일', arr[curMonth][18] ], [ '19일', arr[curMonth][19] ], [ '20일', arr[curMonth][20] ],
						[ '21일', arr[curMonth][21] ], [ '22일', arr[curMonth][22] ], [ '23일', arr[curMonth][23] ],
						[ '24일', arr[curMonth][24] ], [ '25일', arr[curMonth][25] ], [ '26일', arr[curMonth][26] ],
						[ '27일', arr[curMonth][27] ], [ '28일', arr[curMonth][28] ], [ '29일', arr[curMonth][29] ], 
						[ '30일', arr[curMonth][30] ], [ '31일', arr[curMonth][31] ] ]);
					
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

					var chart = new google.visualization.ColumnChart(document
							.getElementById('chart_div'));
					chart.draw(data, options);
				}
			</script>
		</div>
		<div class="buttons" style="text-align:center">
			<a href="#" class="previous round" id="prev">&#8249;</a>
			<a href="#" class="next round" id="next">&#8250;</a>
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