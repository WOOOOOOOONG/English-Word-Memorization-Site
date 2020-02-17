<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="css/chart.css">
<style>
/* 전체 */
body {
	font-family: "Open Sans", Helvetica Neue, Helvetica, Arial, sans-serif;
}

/* 메뉴바 숨기기 */
.hide {
	display: none;
}

/* dataTable*/
#piechart_3 {
	
}
</style>
</head>
<body>
	<jsp:include page="../../common/menubar.jsp" />
	<jsp:include page="../../common/left-menubar.jsp" />

	<div class="table">
		<div id="piechart_3d" style="width: 1300px; height: 600px;">
			<script type="text/javascript">
				google.charts.load("current", {
					packages : [ "corechart" ]
				});
				google.charts.setOnLoadCallback(drawChart);
				function drawChart() {
					var data = google.visualization.arrayToDataTable([
							[ 'Task', 'Hours per Day' ], [ '토익', 11 ],
							[ '9급 공무원', 2 ], [ '경찰', 2 ], [ '수능', 2 ],
							[ '기타', 7 ] ]);

					var options = {
						title : '단어 - 분류별',
						titleFontSize : 40,
						fontSize : 20,
						is3D : true,
						backgroundColor : "whitesmoke"
					};

					var chart = new google.visualization.PieChart(document
							.getElementById('piechart_3d'));
					chart.draw(data, options);
					console.log(data.wg[0].c[0].v); // 나중에 이용
					console.log(data.wg[0].c[1].v);
				}
			</script>
		</div>

		<table class="fixed_headers">
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
		</table>
	</div>
</body>

</html>