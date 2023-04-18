<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cmd = "console.log(aa, bb, cc, cc, dd);";

	request.setAttribute("cmd", cmd);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트</h1>
	<p>
		자바스크립트에도 자료형이라는게 있고 변수도 있다.
		변수를 선언할 때는 3개중에 하나를 쓰면 됨. 
	</p>
	<ul>
		<li>var : js 처음부터 존재하던 변수 선언법 (비추)</li>
		<li>let : 값 변경이 가능한 변수</li>
		<li>const : 값 변경이 불가능한 변수</li>
	</ul>
	
	<script type="text/javascript">
		var a = 3;
		let b = 3;
		const c = 3;

		var aa = "문자열";
		let bb = "문자열";
		const cc = "문자열";
		
		console.log(a +" / "+ b +  " / " + c);
		b = true;
		bb = 3421.12;
		console.log(b +" / "+ bb);

		console.log(3, typeof 3);
		console.log(c, typeof c);
		console.log(cc, typeof cc);
		console.log(3.141592, typeof 3.141592);
		console.log(b, typeof b);
		
		console.log( typeof (typeof 3));
		
		console.log( typeof c == 'number');
		
		let n = undefined;
		console.log(n );
		console.log(n == undefined );
		console.log(n == null );
		
		let vv = null;
		console.log(vv == undefined );
		console.log(vv == null );
	</script>
</body>
</html>




