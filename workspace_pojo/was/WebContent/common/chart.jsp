<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>    
window.onload = function () {
var options = {
	animationEnabled: true,
	theme: "light2",
	title:{
		text: "매출 현황 2019"
	},
	axisY :{
		includeZero: false,
		prefix: "$",
		lineThickness: 0
	},
	toolTip: {
		shared: true
	},
	legend: {
		fontSize: 13
	},
	data: [{
		type: "splineArea",
		showInLegend: true,
		name: "Salaries",
		yValueFormatString: "$#,##0",
		xValueFormatString: "MMM YYYY",
		dataPoints: [
			{ x: new Date(2016, 2), y: 28000 },
			{ x: new Date(2016, 3), y: 31500 },
			{ x: new Date(2016, 4), y: 28500 },
			{ x: new Date(2016, 5), y: 30400 },
			{ x: new Date(2016, 6), y: 26900 },
			{ x: new Date(2016, 7), y: 31400 },
			{ x: new Date(2016, 8), y: 31400 },
			{ x: new Date(2016, 9), y: 31000 },
			{ x: new Date(2016, 10), y: 33000 },
			{ x: new Date(2016, 11), y: 35000 },
			{ x: new Date(2017, 0),  y: 37900 },
			{ x: new Date(2017, 1),  y: 38000 }
		]
 	},
	{
		type: "splineArea", 
		showInLegend: true,
		name: "Office Cost",
		yValueFormatString: "$#,##0",
		dataPoints: [
			{ x: new Date(2016, 2), y: 18100 },
			{ x: new Date(2016, 3), y: 15000 },
			{ x: new Date(2016, 4), y: 14000 },
			{ x: new Date(2016, 5), y: 18500 },
			{ x: new Date(2016, 6), y: 18500 },
			{ x: new Date(2016, 7), y: 21800 },
			{ x: new Date(2016, 8), y: 20000 },
			{ x: new Date(2016, 9), y: 23000 },
			{ x: new Date(2016, 10), y: 22000 },
			{ x: new Date(2016, 11), y: 24000 },
			{ x: new Date(2017, 0), y: 23000 },
			{ x: new Date(2017, 1), y: 20500 }
		]
 	},
	{
		type: "splineArea", 
		showInLegend: true,
		name: "Entertainment",
		yValueFormatString: "$#,##0",     
		dataPoints: [
			{ x: new Date(2016, 2), y: 13100 },
			{ x: new Date(2016, 3), y: 8000 },
			{ x: new Date(2016, 4), y: 5400 },
			{ x: new Date(2016, 5), y: 4000 },
			{ x: new Date(2016, 6), y: 7000 },
			{ x: new Date(2016, 7), y: 7500 },
			{ x: new Date(2016, 8), y: 6200 },
			{ x: new Date(2016, 9), y: 8500 },
			{ x: new Date(2016, 10), y: 11300 },
			{ x: new Date(2016, 11), y: 12500 },
			{ x: new Date(2017, 0), y: 10500 },
			{ x: new Date(2017, 1), y: 9500 }
		]
 	},
	{
		type: "splineArea", 
		showInLegend: true,
		yValueFormatString: "$#,##0",      
		name: "Maintenance",
		dataPoints: [
			{ x: new Date(2016, 2), y: 1900 },
			{ x: new Date(2016, 3), y: 2300 },
			{ x: new Date(2016, 4), y: 1650 },
			{ x: new Date(2016, 5), y: 1860 },
			{ x: new Date(2016, 6), y: 1200 },
			{ x: new Date(2016, 7), y: 1000 },
			{ x: new Date(2016, 8), y: 1200 },
			{ x: new Date(2016, 9), y: 4500 },
			{ x: new Date(2016, 10), y: 1300 },
			{ x: new Date(2016, 11), y: 3700 },
			{ x: new Date(2017, 0), y: 2700 },
			{ x: new Date(2017, 1), y: 2300 }
		]
	}]
};
$("#chartContainer").CanvasJSChart(options);
}
</script>
</head>
<body>
	<div id="chartContainer" style="height: 400px; width: 500px; style=margin:0px; border: outset;"></div>
</body>
</html>