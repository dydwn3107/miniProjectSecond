<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/memberJoin.css" rel="stylesheet" type="text/css">
</head>
<body>
<body>
   
    <div id="login_form" ><!--로그인 폼-->
    <form  id="frm" action="memberJoin.do" onsubmit="return formCheck()" method="post" >
        <h3 class="login" style="letter-spacing:-1px; color: white">회 원 가 입</h3>

        <!-- <p>
            <input type="submit" value="Sign in with Google" class="btn" style="background-color:#217Af0">
        </p> 구글로 로그인-->

        <hr>
      
        <!-- <span>ID</span> -->
        <p style="text-align: left; font-size:12px; color: #fff">userID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        
        <button type="button" id="btn" onclick="idCheck()">중복체크</button></p>
        
        <input type="text" id="memberId" name="memberId" placeholder="아이디" class="size" required="required">
        
        </label><!--아이디-->
        
        <p style="text-align: left; font-size:12px; color: #fff">username</p>
        <input type="text" id="memberName" name="memberName" placeholder="이름" class="size" required="required">
        <p></p>
        </label><!--이름-->

        <label>
        <!-- <span>PW</span> -->
        <p style="text-align: left; font-size:12px; color: #fff">Password </p>
        <input type="password" id="memberPw" name="memberPw" placeholder="비밀번호" class="size" required="required">
        </label><!--비밀번호-->

        <label>
            <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color: #fff"> </p>
            <input type="password" id="memberPwc" name="memberPwc" placeholder="비밀번호 확인" class="size" required="required">
        </label><!--비밀번호 확인-->

        <label>
            <!-- <span>PW</span> -->
        <p style="text-align: left; font-size:12px; color: #fff">Mobile Phone</p>
            <select class="size num1">
                <option value="1" selected>SKT</option>
                <option value="2" selected>KT</option>
                <option value="3" selected>LG</option>
            </select>
            <input type="tel" id="memberTel" name="memberTel" placeholder="-빼고 숫자만 입력"  class="size num2" required>
         </label> <!--전화번호-->
      
       <label>
                <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color: #fff">
                <input type='radio' id="memberGender" name='memberGender' value='여성' checked/>여성
  <input type='radio' id="memberGender" name='memberGender' value='남성' />남성</p>
        </label> <!--성별-->  
      
      
      <label>
                <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color: #fff">생년월일</p>
                <input type="text" id="memberBirth" name="memberBirth" placeholder="ex) 19940306" class="size">
        </label> <!--생년월일-->  
        
      
      
      
         <label>
                <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color: #fff">E-mail</p>
                <input type="text" id="memberEmail" name="memberEmail" placeholder="이메일" class="size">
        </label> <!--이메일-->  
        
         <label>
                <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color: #fff">address</p>
                <input type="text" id="memberAddress" name="memberAddress" placeholder="주소" class="size">
        </label> <!--주소-->  


    <br>
        <p>
            <input type="submit" value="Create Acoout" class="btn">
            
        </p>
    </form>

    <hr>
    <p class="find">
        <span><a href="memberLoginForm.do" style="font-size:15px">로그인 페이지로 이동</a></span>
        <span><a href="main.do" style="font-size:15px">홈 페이지로 이동</a></span>
    </p>
    </div>
    <div>
    </div><!--con-->
   
   <script type="text/javascript">
   let rememberCheckedId = ''; 
   
   function formCheck() {
      let pass1 = document.getElementById("memberPw").value;
      let pass2 = document.getElementById("memberPwc").value;
      let idChecked = document.getElementById("btn").value;
      
      if (!doubleIdCheck()) {
         return false;
      }
      
      if(pass1 != pass2) {
         alert("패스워드가 일치하지 않습니다.");
         document.getElementById("memberPw").value = "";
         document.getElementById("memberPwc").value = "";
         document.getElementById("memberPw").focus();
         return false;
      }   
      return true;
   }
   // Ajax를 통해서 id 중복체크를 한다.
   function idCheck() {
      let id = document.getElementById('memberId').value;
      
      // 아이디 작성도 하지 않고 중복체크 누르면 다 사용가능하니까 막아주기
      if (id.length == 0) {
         alert('아이디를 작성해주세요.')
         document.getElementById('memberId').focus();
         return;
      }
      
      
      /* 교수님 XMLHttpRequest
      const xhttp = new XMLHttpRequest();
       xhttp.onload = function() {
          if (this.readyState == 4 && this.status == 200) {
             
              if (this.responseText == '1') {
               alert("사용 가능한 아이디 입니다.");
               document.getElementById('btn').value = 'Yes';
               document.getElementById('memberPassword').focus();
              } else {
                 alert("사용할 수 없는 아이디 입니다.");
                 document.getElementById('memberId').value = "";
                 document.getElementById('memberId').focus();
              }
          }  // 실패하면 else 이후callBack함수
      }
       xhttp.open("GET", "ajaxMemberIdCheck.do?id=" + id);
       xhttp.send();
       */
       
      
       fetch('ajaxMemberIdCheck.do?memberId=' + id)
       .then(response => response.text())
      .then(data => responseResult(data));  // 이 곳에 Call Back함수를 작성하면 됨.

       // fetch 처리 CallBack함수
       function responseResult(data) {
         console.log('data = ' + data);
         
         if (data == '1') {
            alert("사용 가능한 아이디 입니다.");
            // 중복체크를 합격한 아이디만 rememberCheckId에 따로 저장해둔다.
            rememberCheckedId = document.getElementById('memberId').value;
            document.getElementById('memberPassword').focus();
          } else {
              alert("사용할 수 없는 아이디 입니다.");
              document.getElementById('memberId').value = "";
              document.getElementById('memberId').focus();
          } // 실패하면 callBack함수

      }
      
   }
   
   // 등록 버튼 눌렀을 때 아이디 중복 더블 체크
   function doubleIdCheck() {
      
      // 중복체크를 통해 통과되었던 아이디인 rememberCheckedId와 현재 적힌 아이디가 같은 때만 최종적으로 통과
      if (rememberCheckedId == document.getElementById('memberId').value) {
         return true;
      // 중복체크를 통과한 적이 없거나
      // 혹은 통과를 했더라도 rememberCheckedId와 현재 적힌 아이디가 다른 경우. 즉, 중복체크하고 나서 아이디 바꿔 적은 경우들은
      // 무조건 아이디 중복체크를 거치게 만들기.
      } else {
            alert("아이디 중복 체크를 해주세요.");
            document.getElementById('memberId').focus();
            return false;
      }
   }
   </script>


</body>

</html>