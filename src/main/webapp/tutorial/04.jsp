<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>자바스크립트 &&, || 숏컷현상</h1>
	<p>
		논리 계산 && 는 둘다 true 인지 확인하는 연산 : 만약 앞이 true 면 뒷값에 따라 결정이 됨.
	</p>
	<script>
		console.log(true && false);
		console.log(true && true);
		console.log(true && "아아아");
		
		console.log(false && false);
		console.log(false && true);
		console.log(0 && "아아아");
		
		let obj = { "name" : "윤형호", "role" : "관리자"};
		
		console.log(obj && obj.name);
	</script>
</body>
</html>