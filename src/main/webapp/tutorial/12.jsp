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
	<p>자바스크립트에서는 함수도 변수에 담겨서 사용이되다보니 함수 복제도 가능하고, 함수 전달도 가능함.</p>
	<p>자바스크립트 배열이 가지고 함수중에는 매개변수로 함수를 전달할수 있는 함수들이 있다. 이걸 고차함수라고 부른다 /
		(방금 봤던 forEach 같은)</p>




	<script>
		let datas = [11, 34, 22, 51, 44, 99, 42];
		let rst =datas.reduce((prev, next)=>{
			console.log(prev, next);
			return prev+next;
		}, 0);
		console.log("rst", rst);
		
	</script>

	<%if(Math.random()>1) { %>
	<script>
		// find 고차함수는 조건에 맞는 데이터의 위치를 알려주는.. indexOf 랑 비슷한데
		
		let users = [ {name:"윤형호", age:17}, {name:"박기태", age : 21} , {name:"박기태", age : 7} ];
		
		let sorted = users.sort(function(a, b) {
			return a.age - b.age;
		});
		console.log(sorted);
		
		
		let idx = users.find(function(item) {
			if(item.name === "박기태")
				return true;
		});
		console.log(idx);
	</script>
	<%} %>
	<%
	if (Math.random() > 1) {
	%>
	<script>
		let arr = [1 , 4, 77, 2, 45, 2];
		// filter 전달한 함수에서 true가 반환되는 애들만 모아서 새로운 배열을 만들어준다.
		let evenArr =arr.filter(function(item, idx) {
			// console.log(item);
			if(idx%2 ==0) {
				return true;
			}else {
				return false;
			}
		});
		console.log(arr);
		console.log(evenArr);
		
		let names = ["조조", "조운","관우", "제갈량", "조비"];
		let f = names.filter( (item)=> item.startsWith("조") );
		
		console.log(f);
		
		const add = (a , b) => a + b;
		console.log(add (3, 4));

		const cvt = names.map( function(item) {
			return "<b>" + item +"</b>";
		}  );
		console.log(cvt);
			
	</script>
	<%
	}
	%>
</body>
</html>







