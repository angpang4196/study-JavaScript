<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트</title>
</head>
<body>
	<h1>자바스크립트 객체</h1>
	<p>
		HTML에 발생하는 이벤트를 처리를 하기 위해선 자바스크립트의 객체 형태에 대한 이해가 필요하다.
	</p>
	<script>
		function makeMessage() {
			return "ZZZZZZ";
		}	
	
		let obj = {
			skill : [`고무고무도끼`, '고무고무종'],
			introduce : function() {
				console.log("nick =" + this.nick +" (" + this.talent+")");
			},
			sayHi : function() {
				let msg = this.makeMessage();
				console.log(msg);
			},
			makeMessage : ()=> "에헴!",
			nick : "luffy",
			talent : true
		};
		
		obj.sayHi();
		
		obj.makeMessage = function() {
			return "해적왕이 될꺼야";	
		}
		
		obj.sayHi();
		
		
		
		console.log(obj.nick);
		obj.introduce();
		obj.introduce = function() {
			console.log(this.nick +" , " + this.talent);
		};
		obj.introduce();
		obj.addSkill = function(one) {
			this.skill.push(one);
		}
		
		obj.addSkill("고무고무총");
		console.log(obj.skill);
				
		let sample = {
			skill : ["막기","돌던지기"]	
		};
				
		sample.add = obj.addSkill;1
		sample.add("발로차기");
		console.log(sample.skill);
		
		this.nick = "KING"; 
			
		const pick = obj.introduce;
		pick();
	
		
		
	</script>
</body>
</html>