<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DOM 탐색</title>
</head>
<body>
	<h1 id="heading">Document Object Model</h1>
	<p id="test" class="container">
		DOM에서 특정요소를 접근하는 메서드는 getElement(s) 계열과 querySelector() 계열이 있다.
	</p>
	<ul class="container">
		<li >querySelector ==> one or nothing</li>
		<li>querySelectorAll ==> collection</li>
	</ul>
	<script>
		const elm = document.querySelector("#heading");	// 그냥적으면 tag, .이면 class , #이면 id
		console.log(elm.innerHTML);
		
		// const elms = document.querySelectorAll("#heading");
		// console.log(elms[0].innerHTML);

		const elms = document.querySelectorAll("li");
		console.log(Array.isArray(elms));	// querySelectorAll 로 뽑아도 배열은 아닌데
		console.log(elms);
		for(let e in elms) {
			console.log(e);
		};
		
		for(let e of elms) {
			console.log(e);
		}
		
		
		elms.forEach((one)=>{	// forEach는 구현해둠.
			one.style.color ="#ff7777";
		});
		
		for(let o of elms) {
			o.style.color="#77ff77";
		}
		
		
		
		
	</script>
</body>
</html>