<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h3>데이터 시각화 라이브러리</h3>
	<p>
		앞서 주소를 단순히 텍스트가 아닌 지도위에 표시를 해봤다. 
		이번에는 데이터를 차트 형태로 렌더링하는 API 를 살펴보자. 
	</p>
	<p>
		웹에서 차트를 지원하는 라이브러리는 다양한데 <b>chart.js</b> / d3.js / highchart.js / google chart 등이 주로 쓰인다.
	</p>
	
	<div style="max-height: 400px; display: flex; justify-content: center">
  		<canvas id="myChart"></canvas>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

	<script>
  		const ctx = document.querySelector('#myChart');

  		new Chart(ctx, {
  			type: 'bar',
    		data: {
      			labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
      			datasets: [{
        			label: '# of man',
        			data: [12, 19, 3, 5, 23, 23],
        			borderWidth: 1
      			}, {
      				label: '# of woman',
        			data: [22, 17, 15, 35, 22, 13],
        			borderWidth: 1
      				
      			}]
    		},
  		});
	</script>
	
</body>
</html>