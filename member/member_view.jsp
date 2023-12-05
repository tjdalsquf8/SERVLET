<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>    
<script type="text/javascript" src="../js/validation.js"></script>
<title>회원 보기</title>
<script type="text/javascript">
    function deleteConfirm(id) {
        if(confirm("회원을 삭제합니다!") == true)
            location.href="member_delete_process.jsp?id=" + id;
        else
            return;
    }
</script>
</head>
<body>
    <jsp:include page="../admin/top_menu_ad.jsp" />
        <div class="jumbotron">
            <div class="container">
                <h1 class="display-3">회원 보기</h1>
            </div>
        </div>
<%
    String sql = "SELECT * FROM member";
    pstmt = conn.prepareStatement(sql);
    rs = pstmt.executeQuery();
    while (rs.next()) {
%>
    <div class="container">
        <table border="2" width="1200">
            <th>아이디</th>
            <th>패스워드</th>
            <th>이름</th>
            <th>성별</th>
            <th>생년월일</th>
            <th>이메일</th>
            <th>휴대전화</th>
            <th>주소</th>
            <th>가입일</th>
            <tr>
                <td><%=rs.getString("id")%></td>
                <td><%=rs.getString("password")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("gender")%></td>
                <td><%=rs.getString("birth")%></td>
                <td><%=rs.getString("mail")%></td>
                <td><%=rs.getString("phone")%></td>
                <td><%=rs.getString("address")%></td>
                <td><%=rs.getString("regist_day")%></td>
                <td><a href="member_update.jsp?id=<%=rs.getString("id")%>" class="btn btn-success" role="button">수정 &raquo;</a></td>
                <td><a href="#" onclick="deleteConfirm('<%=rs.getString("id")%>')" class="btn btn-danger" role="button">삭제 &raquo;</a></td>
            </tr>
            <hr>
        </table>
        <%
            }
    
            if (rs != null)
                rs.close();
            if(pstmt != null)
                pstmt.close();
            if(conn != null)
                conn.close();
        %>
    </div>
    <hr>
    <div class="container">
        <a href="../admin/index_ad.jsp" class="btn btn-primary">이전</a>
    </div>
    <jsp:include page="../admin/footer_ad.jsp" />
</body>
</html>
