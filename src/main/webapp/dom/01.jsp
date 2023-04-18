<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>DOM</title>
	<style>
		.root {
			color: white;
		}
		.root-reverse  {
			color : yellow;
		}
	</style>
</head>
<body style="background: #dddddd" class="root" id="t">
	<h1>Document Object Model</h1>
	<p>이제까지 자바스크립트 기본문법을 살펴본 이유는 스크립트를 통해서 DOM 제어를 해야되기 때문에</p>
	<p>우리가 작성하고 있는 이 HTML도 전부 객체화되는 데 이 객체를 DOM 이라고 부른다.</p>
	<p>자바스크립트는 이 DOM을 제어할수 있는데 진입점 역할을 하는 객체가 document 객체</p>

	<script>
		console.log(document.head);
		console.log(document.body.style);
		document.body.style.background = "#111111";
		
		setInterval(()=>{
			console.log(document.body.id);
			if(document.body.className=="root") {
				document.body.className ="root-reverse";
			}else {
				document.body.className ="root";
			}
		}, 1000);
		// document.body.className ="root-reverse";
		
	</script>
</body>
</html>