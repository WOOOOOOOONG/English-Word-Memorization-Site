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
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

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
	<div class="table chart-table">
							<div id="piechart_5d" style="width: 1300px; height: 650px; margin-left: 120px;">
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
									console.log(ctype);
									
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
											titleFontSize : 20,
											fontSize : 20,
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
</body>

</html>