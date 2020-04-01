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
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/images/shotcuticon.png"
	type="image/x-icon">	
<title>Insert title here</title>
<style>
/* sidebar */
@import "compass/css3";

@import url('https://getbootstrap.com/dist/css/bootstrap.css');

@import
	url("//netdna.bootstrapcdn.com/bootstrap/3.0.0-rc2/css/bootstrap-glyphicons.css")
	;

<
style> /* 전체 */ body {
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
		<div class="chart2 left">
			<!-- <button type="button"
							class="btn btn-outline-secondary btn-sm moreBtn2"
							onclick="goHomePage(3);">크게 보기</button> -->
			<div class="table chart-table">
				<div id="chart_divC" style="width: 1300px; height: 650px">
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
</body>

</html>