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
<link rel="stylesheet" href="css/left-menubar.css">
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
        google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawAxisTickColors);

function drawAxisTickColors() {
      var data = new google.visualization.DataTable();
      var data = new google.visualization.DataTable();
      data.addColumn('string', 'Element');
      data.addColumn('number', 'Percentage');
      data.addRows([
        ['1월', 0.78],
        ['2월', 0.21],
        ['3월', 0.01],
        ['4월', 0.78],
        ['5월', 0.21],
        ['6월', 0.01],
        ['7월', 0.78],
        ['8월', 0.21],
        ['9월', 0.01],
        ['10월', 0.78],
        ['11월', 0.21],
        ['12월', 0.01],
      ]);
      var options = {
        title: '일자별 방문내역',
          backgroundColor: "whitesmoke",
          focusTarget: 'category',
          hAxis: {
              title: 'Time of Day',
              format: 'dd',
              viewWindow: {
                //   min: [7, 0, 0],
                //   max: [37, 30, 30]
              },
              textStyle: {
                  fontSize: 14,
                  color: '#053061',
                  bold: true,
                  italic: false
              },
              titleTextStyle: {
                  fontSize: 18,
                  color: '#053061',
                  bold: true,
                  italic: false
              },
              gridlines: {count:30}
          },
          vAxis: {
              textStyle: {
                  fontSize: 18,
                  color: '#67001f',
                  bold: false,
                  italic: false
              },
              titleTextStyle: {
                  fontSize: 18,
                  color: '#67001f',
                  bold: true,
                  italic: false
              }
          }
      };

      var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
      chart.draw(data, options);
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