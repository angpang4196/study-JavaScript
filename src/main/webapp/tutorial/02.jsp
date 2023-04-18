<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>자바스크립트 연산</h1>
	<p>
		자바스크립트를 이용해서도 산술연산을 포함하여 비교연산 등등이 가능하다.	
	</p>
	<p>
		+,-, *, ** (제곱), /, % , ++ , --  
	</p>
	<p>
		>, >=, &lt;, &lt;= , ==, !=,  ===, !==  
	</p>
	
	<script>
		console.log(3 ** 4);
		console.log(10 / 4);	// 2.5
		// 몫을 구하고 싶으면?
		console.log( Math.floor(10/4) );	// Math.round  , Math.ceil 
		console.log(10 % 4);

		console.log("11" + 22);
		console.log("11" * 1);
		console.log("33" - "3");	// 자바스크립트 string도 + 을 제외한 산술연산은 자동 파싱
		
		let a = "33223";
		let b = "33";
		console.log(a + b);
		console.log(Number.parseInt(a) + parseInt(b));
	
		console.log("cmp1" , 1111 > 1000);
		console.log("cmp2", "111" > "2");
		console.log("cmp3", "조조" > "관우");
		//================================================
			
		console.log("eq1",  "1332" == 1332);
		console.log("eq1",  "1" === 1);
		
		// 3항 연산자도 있음. ?  : 
		
		
		
	</script>
</body>
</html>



