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
		DOM 에서 특정요소를 접근하는 메서드는 getElement(s) 계열과 querySelector() 계열이 있다.	
	</p>
	<ul class="container">
		<li>querySelector ==> one or nothing</li>
		<li>querySelectorAll ==> collection</li>
	</ul>
	<select>
		<option>출발지 선택</option>
		<optgroup label="서울특별시">
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
		</optgroup>
	</select>
	
	<script>
		const elm = document.querySelector("#heading"); //  그냥적으면 tag, .이면 class, #이면 id
		console.log(elm.innerHTML);
		
		// const elms = document.querySelectorAll("#heading");
		// console.log(elms[0].innerHTML);
		
		const elms = document.querySelectorAll("li");
		elms.forEach((one)=>{
			one.style.color = "#ff7777";
		});
		
		for(let o of elms){
			o.style.color = "#77ff77";
		}
	</script>
</body>
</html>