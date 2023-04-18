<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// 컨트롤러에서 돌아가고 있다고 가정
	List<String> main = List.of("국산", "해외");
	Gson gson = new Gson();

	request.setAttribute("main", main);
	List<String> inCar = List.of("쏘렌토", "스포티지", "싼타페", "펠리셰이드");
	request.setAttribute("inCar", gson.toJson(inCar));
	List<String> outCar = List.of("티구안", "이보크", "카이엔");
	request.setAttribute("outCar", gson.toJson(outCar));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
<style>
select {
	padding: 4px;
}
</style>
</head>
<body>
	<h3>자바스크립트-카테고리</h3>
	<div>
		<select id="main">
			<option>1차 선택</option>
			<c:forEach items="${main }" var="i">
				<option>${i }</option>
			</c:forEach>
		</select>
		<select id="sub">
			
		</select>
	</div>
	
	<script>
		document.querySelector("#main").onchange = function(evt){
			const mv = evt.target.value;
			let items;
			if(mv === '국산'){
				items = ${inCar};
			} else if (mv === '해외'){
				items = ${outCar};
			} else {
				items = [];
			}
			
			const options = items.map((one)=> "<option>" + one + "</option>");
			console.log(options.join(""));
			document.querySelector("#sub").innerHTML = options.join("");
			/*
			for(let i of items){
				document.querySelector("#sub").innerHTML += "<option>" + i + "</option>";
			}
			*/
		};
	</script>
</body>
</html>