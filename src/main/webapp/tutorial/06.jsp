<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<h1>자바스크립트 함수..</h1>
	<p>
		자바스크립트도 함수를 만들어서 사용할 수 있다. 만드는 방법이 다양하다.
	</p>
	
	<script>
	// 1. 기본형태 - 리턴타입 지정필요 없고, 매개변수 설정할 때 타입 지정필요없다.
	function test(a, b) {
		console.log("a="+ a + ", b=" + b);
	}
	
	test(3, 5);
	test(1);
	let vvv = test("java", "script", "zzang");
	console.log(vvv);
	
	function max(a, b) {
		if(a>b) {
			return a;
		}else {
			return b;
		}
	}
		
	let ret = max(4, 6);
	console.log(ret);
	// max = 4;
	//=======================
	console.log(typeof max);
	console.log(max);
	
	//==============================
	let test2 = test;
	console.log(test2);
	test2("AAAA", "BBBB");
	// test2 = max;
	test2 =test;
	console.log(test2(1111, 4));
		
	

	
	
	
	</script>
</body>
</html>