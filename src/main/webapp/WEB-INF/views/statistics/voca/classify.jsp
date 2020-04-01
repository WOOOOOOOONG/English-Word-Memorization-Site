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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
	<div class="table chart-table">
		<div id="piechart_3d4" style="width: 1300px; height: 650px; margin-left: 100px;"></div>
	</div>
	<script>
								var vocaList = Array();
								var vocaLength = 0;
								
								$.ajax(
							            {
							                type: "POST",
							                dataType: "json",
							                contentType: "application/json; charset=utf-8",
							                data: JSON.stringify({_id:"CSID_45"}),
							                url: 'http://192.168.10.13:1222/total',
							                success: function (data) {
							                        var vocaLengthText = $("#vocaLength");
							                        vocaLength = data.length;
							                        
							                        // 관리자 정보에서 등록된 단어장 수 수정
							                        vocaLengthText.text("등록된 단어장 수 : " + vocaLength);
													
													// 2차원 배열화
													for(var i = 0; i < 100; i++) {
														vocaList[i] = new Array();
													}
							                        console.log(data);
													// 단어 데이터 추출

													var count = 0;
								                    for(var i = 0; i < vocaLength; i++) {
								                       	for(var j in data[i].category) {
								                       		vocaList[count][0] = j; // 단어장 제목
								                       		vocaList[count][1] = data[i].category[j]; // 카테고리 숫자
								                       		vocaList[count][2] = 0;
								                        	for(var k in data[i].privilege) {
								                        		if(vocaList[count][0] == k) {
								                        			var priCount = 0;
								                        			for(var l in data[i].privilege[k]) {
								                        				priCount++;
								                        			}
								                        			vocaList[count][2] = priCount; // 사용자 수
								                        		}
								                        	}
								                        	count++;
								                        }
								                    }
								                    
								                    vocaLength = count;
							                },
							                error: function () {
							                    console.log("error has occured retriving data from MongoServer")
							                }
							            });
				setTimeout(function() {
					google.charts.load('current', {
						packages : [ 'corechart', 'bar' ]
					});
					google.charts.setOnLoadCallback(drawAxisTickColors4);	
				}, 3000);	            
				

				function drawAxisTickColors4() {
					
					google.charts.load("current", {
						packages : [ "corechart" ]
					});
					google.charts.setOnLoadCallback(drawChart4);
					function drawChart4() {
						var vocaType = Array();
						for(var i = 0; i < 13; i++) {
							vocaType[i] = 0;
						} 
						for(var i = 0; i < vocaLength; i++) {
							if(vocaList[i][2] <= 13 && vocaList[i][2] >= 0) {
								vocaType[vocaList[i][2]]++;
							}
						}
						var data = google.visualization.arrayToDataTable([
								[ 'Task', 'Hours per Day' ], [ 'TOEIC', vocaType[0] ],
								[ 'TOFEL', vocaType[1] ], [ 'TEPS', vocaType[2] ], [ 'G_TELP', vocaType[3] ],
								[ 'FLEX', vocaType[4] ], [ '중등', vocaType[5] ], [ '고등', vocaType[6] ],
								[ '수능', vocaType[7] ], [ '9급 공무원', vocaType[8] ], [ '경찰 공무원', vocaType[9] ],
								[ '편입', vocaType[10] ], [ '프로그래머', vocaType[11] ], [ '기타', vocaType[12] ],
						]);

						var options = {
							title : '유형별',
							titleFontSize : 14,
							fontSize : 14,
							is3D : true,
							backgroundColor : ""
						};

						var chart = new google.visualization.PieChart(document
								.getElementById('piechart_3d4'));
						chart.draw(data, options);
					}
				}
			</script>
</body>

</html>