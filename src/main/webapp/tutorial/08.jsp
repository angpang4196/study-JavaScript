<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트의 객체</h1>
	<p>자바스크립트에도 객체가 있다. (field, method 있는 형태)</p>
	<script>
		let obj = {};
		let score = {
			"kor" : 10,
			"eng" : 97,
			"math" : 32
		};
		
		console.log(typeof score); // object
		console.log(score);
		console.log(score.kor); // 특정 객체의 요소에 접긓나기 위해서 . 방식으로 접근해도 되고
		console.log(score["kor"]); // 배열 접근하듯이 접근 가능. 접근하고자 하는 요소의 이름을 String

		let str = JSON.stringify(score); // 객체를 JSON 표기에 따른 문자열로 바꿔주는 함수  
		console.log(str); // 출력결과를 보면 모든 요소 이름에는 "" 처리가 되어있음.
		console.log(typeof str); // string

		console.log(str.kor); // 문자열이기 때문에 undefined
		
		console.log(score.tot); // 없는 요소 접근 >>> undefined
		
		score.music = 3;
		console.log(score);
		
		score.music = function(){
			console.log("ㅋㅋㅋㅋ");
		};
		
		score.music();
		console.log(score);
	</script>
</body>
</html>