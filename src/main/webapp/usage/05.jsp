<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 활용</title>
</head>
<body>
	<h3>자바스크립트 기반의 프론트API</h3>
	<p>
		HTML만 이용해서 데이터를 표기하는데 한계가 있기때문에
		예를 들어, 어딘가의 장소를 텍스트로 출력만 가능
		다양한 곳에서 데이터 시각화를 위해 라이브러리를 제공한다. 
	</p>
	<p>
		그나마 활용도가 높은 지도API를 써보려고 한다.
		연동할 수 있는 옵션 => 카카오맵, 네이버맵, 구글맵 정도가 있음. 대부분 사용법이 비슷함. 
	</p>
	<div id="map" style="width:500px;height:400px; margin: auto;">-</div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fa50ba81310359fa007dce1d4eb86753">
	
	</script>
	
	<script>
		let pos = new kakao.maps.LatLng(35.1595454, 126.8526012);
		let container = document.querySelector('#map'); //지도를 담을 영역의 DOM 레퍼런스
		
		let options = { //지도를 생성할 때 필요한 기본 옵션
			center: pos, //지도의 중심좌표
			level: 4 //지도의 레벨(확대, 축소 정도)
		};

		let map = new kakao.maps.Map(container, options);
		
		var marker = new kakao.maps.Marker({
		    position: pos
		});
		
		marker.setMap(map);
	</script>
</body>
</html>