<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script type="text/javascript">
    function test() {
      var p1 = document.getElementById('password').value;
      var p2 = document.getElementById('re_password').value;
          
          if( p1 != p2 ) {
            alert("비밀번호가 일치하지 않습니다");
            return false;
          } else{
            alert("비밀번호가 일치합니다");
            return true;
          }
    }
  </script>
<title>회원 수정</title>
</head>
<body>
   <jsp:include page="../top_menu.jsp" />
   <div class="jumbotron">
	<div class="container">
		<h1 class="display-3">회원 수정</h1>
	</div>
   </div>
    <%@ include file="../db/db_conn.jsp"%>
    <%
	    String id = request.getParameter("id");

	    String sql = "SELECT * FROM member where id = ?";
	    pstmt = conn.prepareStatement(sql);
	    pstmt.setString(1, id); 
	    rs = pstmt.executeQuery();
	    while (rs.next()) {
    %>
    <div class="container">
      <div class="row">
	<div class="col-md-8">
	    <form name="member_join" action="member_update_process.jsp" class="form-horizontal" method="post">
	    <div class="form-group row">
		<label class="col-sm-3">아이디</label>
		<div class="col-sm-3">
			<input type="text" id="id" name="id" class="form-control" value="<%=rs.getString("id")%>" required>
		</div>
	    </div>
	    <div class="form-group row">
		<label class="col-sm-3">패스워드</label>
		<div class="col-sm-3">
			<input type="password" id="password" name="password" class="form-control" value="<%=rs.getString("password")%>" required>
		</div>
	    </div>
	    <div class="form-group row">
		<label class="col-sm-3">패스워드 재입력</label>
		<div class="col-sm-3">
			<input type="password" onchange="test()" id="re_password" name="re_password" class="form-control" required>
		</div>
	    </div>
        <div class="form-group row">
		    <label class="col-sm-3">이름</label>
		    <div class="col-sm-3">
			    <input type="text" id="name" name="name" class="form-control" value="<%=rs.getString("name")%>" required>
		    </div>
	    </div>
	    <div class="form-group row">
		    <label class="col-sm-3">성별</label>
		    <div class="col-sm-2">
			    <select name="gender" type="text" class="form-control" required>
                            <option value="">선택</option>
                            <option value="남">남</option>
                            <option value="여">여</option>
                </select>
            </div>
	    </div>
	    <div class="form-group row">
		<label class="col-sm-3">생년월일</label>
		<div class="col-sm-3">
			<input type="text" id="birth" name="birth" class="form-control" value="<%=rs.getString("birth")%>" required>
		</div>
	    </div>
	    <div class="form-group row">
		<label class="col-sm-3">메일</label>
		<div class="col-sm-4">
			<input type="text" id="mail" name="mail" class="form-control" value="<%=rs.getString("mail")%>" required>
		</div>
	    </div>
	    <div class="form-group row">
		<label class="col-sm-3">휴대전화</label>
		<div class="col-sm-4">
			<input type="text" id="phone" name="phone" class="form-control" value="<%=rs.getString("phone")%>" required>
		</div>
	    </div>
	    <div class="form-group row">
		<label class="col-sm-3">주소</label>
		<div class="col-sm-5">
		    <input type="text" id="address" name="address" class="form-control" value="<%=rs.getString("address")%>" required>
		</div>
	    </div>
        <div class="form-group row">
		<div class="col-sm-offset-2 col-sm-10 ">
			<input type="submit" class="btn btn-primary" value="수정">
                <a class="btn btn-success" href="member_view.jsp">이전</a>
		</div>
	    </div>
	</form>
	</div>
   </div>
</div>
<%
	}
	if (rs != null)
		rs.close();
    
	if (pstmt != null)
		pstmt.close();
    
	if (conn != null)
		conn.close();
 %>
<hr>
<jsp:include page="../admin/footer_ad.jsp" />