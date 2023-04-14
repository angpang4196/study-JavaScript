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
		HTML에서 발생하는 이벤트를 처리하기 위해서는 자바스크립트의 객체 형태를 이해할 필요가 있다.
	</p>
	
	<script>
		function makeMessage(){
			return "zzzzzzzzz";
		}	
	
		let obj = {
			nick : "luffy",
			talent : true,
			skill : [''],
			introduce : function(){
				console.log("nick=" + this.nick + " (" + this.talent + ")");
			},
			sayHi : function(){
				let msg = this.makeMessage();
				console.log(msg);
			},
			makeMessage : () => "에헴!"
		};
		obj.sayHi();
		obj.makeMessage = function(){
			return "해적왕이 될거야";
		};
		obj.sayHi();
		
		console.log(obj.nick);
		obj.introduce();
		obj.introduce = function(){
			console.log(this.nick + ", " + this.talent);
		}
		obj.introduce();
		obj.addSkill = function(one){
			this.skill.push(one);
		}
		obj.addSkill("고무고무총");
		console.log(obj.skill);
		
		let sample = {
			skill : ["막기", "돌던지기"]
		};
		sample.addSkill = obj.addSkill;
		sample.addSkill("발로 차기");
		console.log(sample.skill);
		
		const pick = obj.introduce;
		pick();
		
		var a = "aaaa";
		console.log(this.a);
		
	</script>
</body>
</html>