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
	<div id="chart_div4" style="width: 1300px; height: 650px; margin-left: 100px;">
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
                    vocaList = vocaList.sort(function(a, b) {
                   		return a[2] > b[2] ? -1 : a[2] < b[2] ? 1 : 0; 
                   	});
					var data4 = new google.visualization.DataTable();
					
					data4.addColumn('string', 'Element');
					data4.addColumn('number', '이용자수');
					if(vocaLength > 20) {
						vocaLength = 20;
					}
					for(var i = 0; i < vocaLength; i++) {
						data4.addRows([ [vocaList[i][0], vocaList[i][2]] ]);
					}
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
								italic : false
							},
							gridlines : {
								count : 24
							}
						},
						vAxis : {
							textStyle : {
								fontSize : 18,
								color : '#67055f',
								bold : false,
								italic : false
							},
							titleTextStyle : {
								fontSize : 18,
								color : '#67055f',
								bold : true,
								italic : false
							}
						}
					};

					var chart = new google.visualization.ColumnChart(document
							.getElementById('chart_div4'));
					chart.draw(data4, options);
				}
			</script>
	</div>
</body>

</html>