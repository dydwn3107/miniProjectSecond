<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css1/css/memberLogin2.css" rel="stylesheet" type="text/css">
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">
   <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">

<style type="text/css">
.custom-btn {
  width: 130px;
  height: 40px;
  color: #fff;
  border-radius: 5px;
  padding: 10px 25px;
  font-family: 'Lato', sans-serif;
  font-weight: 500;
  background: transparent;
  cursor: pointer;
  transition: all 0.3s ease;
  position: relative;
  display: inline-block;
   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
   7px 7px 20px 0px rgba(0,0,0,.1),
   4px 4px 5px 0px rgba(0,0,0,.1);
  outline: none;
}
.btn-16 {
  border: none;
  color: #000;
}
.btn-16:after {
  position: absolute;
  content: "";
  width: 0;
  height: 100%;
  top: 0;
  left: 0;
  direction: rtl;
  z-index: -1;
  box-shadow:
   -7px -7px 20px 0px #fff9,
   -4px -4px 5px 0px #fff9,
   7px 7px 20px 0px #0002,
   4px 4px 5px 0px #0001;
  transition: all 0.3s ease;
}
.btn-16:hover {
  color: #000;
}
.btn-16:hover:after {
  left: auto;
  right: 0;
  width: 100%;
}
.btn-16:active {
  top: 2px;
}
</style>

</head>
<body>
<form id="lgm" action="memberLogin.do" method="post">
<div class="page" style="padding-left: 100px">
  <div class="container">
    <div class="left" style="padding-top: 60px">
      <div class="login">Login</div>
      <div class="eula" style="color: black; font-size: 30px">Yedam Community</div>
    </div>
    <div class="right" style="padding-top: 60px">
     
      
      <div class="form">
        <label for="id" style= "font-size:20px; color: white">ID</label>
        <input type="text" id="memberId" name="memberId">
        <label for="password" style= "font-size:20px; color: white">Password</label>
        <input type="password" id="memberPw" name="memberPw">
        <br> <br> <br>
        
         <button  type="submit" class="custom-btn btn-16" style="color: white" value="Submit" onclick="loginAlter()">로그인</button>
         <button type="button" class="custom-btn btn-16" style="color: white; margin: 30px" onclick="location.href='memberJoinForm.do'">회원가입</button>
         <button type="button" class="custom-btn btn-16" style="color: white" onclick="location.href='main.do'">홈</button>
      </div>
    </div>
  </div>
</div>
</form>
<script type="text/javascript">
   function loginAlter() {
      alert('로그인이 완료되었습니다!')
   }
   
   var current = null;
   document.querySelector('#memberId').addEventListener('focus', function(e) {
     if (current) current.pause();
     current = anime({
       targets: 'path',
       strokeDashoffset: {
         value: 0,
         duration: 700,
         easing: 'easeOutQuart'
       },
       strokeDasharray: {
         value: '240 1386',
         duration: 700,
         easing: 'easeOutQuart'
       }
     });
   });
   document.querySelector('#memberPw').addEventListener('focus', function(e) {
     if (current) current.pause();
     current = anime({
       targets: 'path',
       strokeDashoffset: {
         value: -336,
         duration: 700,
         easing: 'easeOutQuart'
       },
       strokeDasharray: {
         value: '240 1386',
         duration: 700,
         easing: 'easeOutQuart'
       }
     });
   });
   document.querySelector('#submit').addEventListener('focus', function(e) {
     if (current) current.pause();
     current = anime({
       targets: 'path',
       strokeDashoffset: {
         value: -730,
         duration: 700,
         easing: 'easeOutQuart'
       },
       strokeDasharray: {
         value: '530 1386',
         duration: 700,
         easing: 'easeOutQuart'
       }
     });
   });
   
</script>
<script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous">
   </script>
   
   
</body>
</html>