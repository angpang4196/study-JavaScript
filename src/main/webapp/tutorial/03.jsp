<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>자바스크립트 분기/반복처리</h1>
	<p>자바스크립트라는 언어를 통해서도 분기/반복 처리를 할 수 있다.</p>
	<p>분기처리에 사용되는 if 와 switch는 사용법이 같다.</p>
	<p>if / else if 에 써야되는 데이터가 boolean일 필요는 없다.</p>
	<p>while, for는 특별하게 다른 점은 없다.</p>
	<script>
		for(let cnt = 1; cnt <=5; cnt++){
			console.log(cnt ** cnt);
		}
		let v = 3;
		let vv = "ss";
		
		if(v && vv){ // 변수를 적어도 되는데 0, null, undefined, ""은 false
			console.log("!!!!");
		}
		
		const r = 1 + Math.floor(Math.random() * 10);
		console.log(r);

		if (r > 3) {
			
		} else {

		}
	</script>
</body>
</html>