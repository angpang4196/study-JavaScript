<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트 함수</h1>
	<p>
		자바스크립트 함수에 대해서 알아보자.
	</p>
	<ul>
		<li>function 이라는 키워드로 만들고 리턴타입이나 매개변수 타입을 고민할 필요는 없다</li>
		<li>리턴을 시킬 함수는 함수바디에서 return 쓰면 되고, 매개변수 필요한 함수는 ( ) 안에 변수명만 적어두면 된다.</li>
		<li>매개변수 꼭 맞춰서 호출해야될 필요없음. (부족하면 undefined로 작동하고 넘치면 버림)</li>
		<li>리턴값이 함수사용결과를 리턴받아도 됨. 그럼 undefined가 뜰거임</li>
		<li>function 도 변수 형태로 관리가 됨.</li>
		<li>모든 변수는 호출이 가능함. (단, function이 아니면 에러가 뜰거임)</li>
		<li>데이터를 카피하듯 함수도 카피할 수 있다.</li>
	</ul>
	<script>
		// 다른 형태로 함수를 만들어 보려고 함.
		function absolute(target){
			return target > 0 ? target : -target;
		};
		const abs = function(target){
			return target > 0 ? target : -target;
		};
		
		console.log(abs(-11));
		
		const test = function(){
			console.log("one ==");
		};
		
		test();
		const ABS = abs;
		ABS(33);
		//======================================
		let rst = test; // test();
		//======================================
		// arrow function 을 만들어두고 쓸 수도 있다.
		const diff = (one, other) => {
			if(one > other){
				return one - other;
			} else {
				return other - one;
			}
		};
		console.log(diff(3,8));
		// arrow function 은 더 간단해 질 수도 있다. 특정상황을 만족한다면...
		const isEven = one => {
			return one % 2 == 0 ? true : false;
		}
		
		console.log(isEven(44));
		
	</script>
</body>
</html>