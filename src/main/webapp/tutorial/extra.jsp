<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비교</title>
<style>
* {
	box-sizing: border-box;
}
</style>
</head>
<body>
	<h2>서버측의 if와 클라이언트 측의 if</h2>
	<textarea style="width: 100%; resize: none" id="tx1"></textarea>
	<textarea style="width: 100%; resize: none" id="tx2"></textarea>
	<c:if test="${!sesssionScope.logon }">
		<script>
			document.getElementById("tx1").onclick = function() {
				if (window.confirm("로그인이 필요합니다")) {

				} else {
					window.alert("로그인 안하면 글쓰기 안되는데??");
				}

			}
		</script>
	</c:if>
</body>
</html>



