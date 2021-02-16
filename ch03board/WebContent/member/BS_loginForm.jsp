<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 화면</title>

  <!-- Bootstrap 라이브러리 등록 - CDN방식 -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



</head>
<body>
<div class="container">
<h1>로그인</h1>
  <form action="login.jsp">
    <!-- 입력란 한개당  form-group 한개씩 만든다. -->
    <div class="form-group">
      <label for="id">아이디</label>
      <!-- 실제적인 입력 부분은 form-control이라고 지정. 최대글자 -->
      <input type="text" class="form-control" id="id" placeholder="아이디 입력" name="id" required="required"
       maxlength="20" autofocus="autofocus">
    </div>
    <div class="form-group">
      <label for="pw">비밀번호</label>
      <!-- 실제적인 입력 부분은 form-control이라고 지정. 최대글자 -->
      <input type="password" class="form-control" id="pw" placeholder="비밀번호 입력" name="pw"
       required="required" maxlength="20" >
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember_id"> 아이디 기억하기</label>
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="auto_login"> 자동 로그인</label>
    </div>
    <button type="submit" class="btn btn-default">로그인</button>
  </form>

</div>
</body>
</html>