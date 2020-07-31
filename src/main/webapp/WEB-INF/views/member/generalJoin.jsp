<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<html lang="ko">

<head>
<meta charset="utf-8" />
<title>daily</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>

<div id="wrapper">

<form action="generalJoin" method="POST" onsubmit="return check();">

<!-- 아이디 -->
<divs>
<input required placeholder="아이디 *" name="id" type="text" class="form-control"/>
</div>
<!-- /아이디 -->

<!-- 이메일 -->
<div>
<input required placeholder="이메일 *" name="email" type="email" class="form-control"/>
</div>
<!-- /이메일 -->

<!-- 비밀번호 -->
<div>
<input required placeholder="비밀번호*" name="password" id="password"
 type="password"  class="form-control" onchange="isSame()"/>
</div>
<!-- /비밀번호 -->

<!-- 비밀번호확인 -->
<div>
<input required placeholder="비밀번호 확인*" id="checkPassword" type="password"
 class="form-control" onchange="isSame()"/>
 <p id="same"></p>
</div>
<!-- /비밀번호확인 -->

<!-- 이름 -->
<div>
<input required placeholder="이름*" name="name" type="text" class="form-control"/>
</div>
<!-- /이름 -->

<!-- 연락처 -->
<div>
<input placeholder="연락처" name="tel" type="text" class="form-control phoneNumber" />
</div>
<!-- /연락처 -->
 
 <!-- 회원가입 -->
 <div class="row">
 
 <div>
 <input type="submit" class="btn btn-primary btn-block"
 style="display: block; margin: 0 90px;" value="회원가입"/>
 </div>
  
 </div> 
 <!-- 회원가입 -->
 
</form>

</div>

<script>

function isSame() {
    var password = document.getElementById("password").value;
    var checkPassword = document.getElementById("checkPassword").value;

    if (password.length < 6 || password.length > 16) {
      password = null;
      checkPassword = null;
      document.getElementById("same").innerHTML = null;
      Swal.fire({
    	  icon: 'error',
    	  text: '비밀번호는 6글자 이상, 16글자 이하만 사용 가능합니다.'
    	})
    } else {
      if (password != "" && checkPassword != "") {
        if (password === checkPassword) {
          document.getElementById("same").innerHTML =
            "비밀번호가 일치합니다.";
          document.getElementById("same").style.color = "blue";
        } else {
          document.getElementById("same").innerHTML =
            "비밀번호가 일치하지 않습니다.";
          document.getElementById("same").style.color = "red";
        }
      }
    }
  }
  
function check() {
	var check = document.getElementById('same').innerHTML;
	  if(check==='비밀번호가 일치합니다.') {
		  Swal.fire({
			  icon: 'success',
			  title: '회원가입 완료',
			  text: '환영합니다!',
			  showConfirmButton: true,
			  timer: 1500
			})
	    return true;
	  }else{
		  Swal.fire({
        	  icon: 'error',
        	  text: '비밀번호를 확인해 주세요.'
        	})
	    return false;
	  }
}

$(document).on("keyup", ".phoneNumber", function() { 
	$(this).val( 
			$(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})/,"$1-$2-$3").replace("--", "-") 
			); 
});
  
</script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="../../resources/assets/js/core.min.js"></script>
</body>
</html>