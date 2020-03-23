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
<title>외웟</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>외웟</title>
<!--Load the AJAX API-->
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
	<div class="chart2 left">
		<div class="table chart-table">
			<div id="piechart_4d" style="width: 1200px; height: 600px;">
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
											titleFontSize : 18,
											fontSize : 18,
											is3D : true,
											backgroundColor : ""
										};
					
										var chart = new google.visualization.PieChart(document
												.getElementById('piechart_4d'));
										chart.draw(data, options);
									}
								</script>
			</div>
		</div>
	</div>

</body>

</html>