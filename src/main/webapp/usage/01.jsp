<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 활용</title>
</head>
<body>
	<h3></h3>
	<p>
		당신이 원하시는 옵션 2개를 선택하신 후 전송해주세요.
	</p>
	<form action="">
		<c:forTokens items="월,화,수,목,금,토,일" delims="," var="d" varStatus="vs">
			<input type="checkbox" name="day" value="${d }" id="day${vs.count }"/> ${d }
		</c:forTokens>
		<button type="submit" id="sbt" disabled>전송</button>
	</form>
	<script>
		let arr = [];
		<c:forTokens items="월,화,수,목,금,토,일" delims="," var="d" varStatus="vs">
			document.getElementById("day${vs.count}").onchange=function() {
				console.log(this.checked, this.value);
				if(this.checked) {
					if(arr.length ==2) {
						window.alert("이미 2개를 선택하셨습니다");
						this.checked = false;
					}else {
						arr.push(this.value);
					}
				}else {
					arr = arr.filter( item => item != this.value ); // 배열에서 해당 밸류를 뺴는 작업
				}
				console.log(arr);
				if(arr.length != 2) {
					document.getElementById("sbt").disabled = true;
				}else {
					document.getElementById("sbt").disabled = false;
				}
			}
		</c:forTokens>
	</script>
</body>
</html>












