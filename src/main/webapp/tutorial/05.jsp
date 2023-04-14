<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트의 배열</h1>
	
	<p>HTML에 스크립트를 설정해둘 때 스크립트 처리중에 배열을 사용할 수도 있다.</p>
	
	<script>
		let arr = []; // 비어있는 배열을 쓰고 싶다면
		let datas = ["루피", "조로", "나미"];
		
		console.log(arr, arr.length);
		console.log(datas, datas.length);
		
		console.log(datas[0]);
		
		arr[3] = 111;
		console.log(arr, arr.length);
		
		datas.push("우솝");
		datas.push("쵸파");
		console.log(datas, datas.length);
		
		datas = [];
		console.log(datas, datas.length);
	</script>
</body>
</html>