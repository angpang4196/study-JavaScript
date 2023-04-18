<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>DOM 탐색 </h1>
	<p id="p1" class="box" name="2">
		스크립트로 <b>DOM</b> 의 특정 객체에 접근하는 방법은 여러가지다.
	</p>
	<p id="p2">
		<b>getElement*</b>,   <b>querySelector*</b>  방식이 있음.
	</p>
	<ul>
		<li class="box">getElementById   (하나)</li>
		<li>getElementsByClassName  (배열)</li>
		<li>getElementsByTagName (배열)</li>
		<li>getElementsByName (배열)</li>
	</ul>
	<script>
		const bs = document.getElementsByTagName("b");
		bs.innerHTML = "";
		console.log(bs);
		
		// getElements 로 뽑게 되면 배열이 아니고 배열비스무리한 애라서 
		// for -- of는 쓸수 있는데 map, forEach 이걸 못쓰고 
		/*
		bs.forEach((one)=>{
			console.log(one.innerHTML);
		});
		*/
		for(let v of bs) {
			console.log(v.innerHTML);
		}
		
		const p1 = document.getElementById("p1");
		const bs2 = p1.getElementsByTagName("b");
		console.log("bs2.length" , bs2.length);
		
		console.log(p1.className);
		// p1.innerHTML = "모<b>르겠</b>다.";
		
		/*
		const boxes = document.getElementsByClassName("box");
		for(let one of boxes) {
			one.style.fontSize = "2.0em";
		}
		*/
		
	
	</script>
	
</body>




</html>