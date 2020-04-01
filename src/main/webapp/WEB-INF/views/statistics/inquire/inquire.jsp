<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- <link rel="stylesheet" href="css/chart.css">
<link rel="stylesheet" href="css/left-menubar.css"> -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/shotcuticon.png"
	type="image/x-icon">
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
				<div id="piechart_3d" style="width: 1800px; height: 650px;">
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
										title : '유형별',
										titleFontSize : 20,
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
</body>

</html>