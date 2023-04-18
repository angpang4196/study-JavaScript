<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 배열</title>
</head>
<body>
	<h1>자바스크립트의 배열</h1>
	
	<script>
		let datas =[ {win:31,lose:1}, {win:1,lose:41}, {win:21,lose:19} ];
		console.log(datas[0].win);
		console.log(datas["1"].win);
		console.log(datas[2]["lose"]);

		let arr = [3,4,5,1, 5];
		console.log(arr.length);
		let sum =0;
		for(let i=0; i<arr.length; i++) {
			sum += arr[i];
		}
		console.log("sum",sum);
		sum =0;
		for(let n  of arr) {	// 자바의 enhanced for  / for(int i : arr)
			sum += n;
		}
		console.log("sum",sum);
		
		// ================== 특정요소가 가지고 있는 속성들을 하나씩 뽑아준다. 
		for(let  v in arr) {	// 배열보다는 객체 반복문 돌릴때
			console.log(v , arr[v]);
		}
		
		let obj = {
			id : "master",
			name : "윤형호",
			pass : "1q2w3e4r"
		};
		for(let  v in obj) {
			console.log(v, obj[v]);
		}
		
		
		
		
		
		
	</script>
</body>
</html>



