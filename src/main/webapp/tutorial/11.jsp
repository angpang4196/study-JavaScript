<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>자바스크립트의 배열에 지원되는 함수</h1>


	<script>
		let datas = ["루피", "조로", "샹디", "우솝", "나미"];
		
		
		const test = function(e) {
			console.log(e + "!!!");
		}
		
		datas.forEach(test);	// 넘겨준 fucntion을 차례대로 호출함(호출하면서 배열의 값을 넘기면서)
		
		datas.forEach(function(item, idx, array, not) {
			// console.log(item, idx, array, not);
			array[idx] = "["+item+"]";
		});
	
		console.log(datas);
		
		
		let nums = [1,2,3,4,5];
		let sum=0;
		
		nums.forEach((n) => {
			sum += n;
		});
		
		console.log(sum);
	
	</script>








	<%if(Math.random() < 0) { %>	
	<script>
		let arr = [ "월", "화", "수", "목", "금", "금", "금" ];
		let idx = arr.indexOf("금");	// 여러개일때는 첫 매치되는 요소의 위치가 나온다.
		console.log(idx);
		console.log(arr.indexOf("수", 2));	// 두번쨰 인자는 탐색시작할 인덱스값 , 없으면 -1
		
		// splice() : 몇번째부터 몇개를 지우고 대체를 함.
		arr.splice(1, 2, "-");
		console.log(arr);
		arr.splice(arr.indexOf("목"), 1);
		console.log(arr);
		arr.splice(1, 1, "화","화","화","화");
		console.log(arr);
		console.log(arr.includes("월"));	// true, false
	</script>
	<%} %>
	<%
	if (Math.random() > 1) {
	%>
	<script>
		const arr = [];
		// 맨 마지막요소로 추가
		arr.push("유비");
		arr.push("조조");
		arr[arr.length] = "제갈량";
		console.log(arr);
		let p = arr.pop(); // 맨마지막 요소를 지움.
		console.log(arr);
		console.log("p", p);

		arr.unshift("사마의"); // 맨 첫번째요소로 추가 >>
		console.log(arr);
		arr.shift();
		console.log(arr); // 맨 첫번째 요소를 삭제
		// 0
	</script>
	<%
	}
	%>
</body>
</html>