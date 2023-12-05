<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Date" %>
<%@ page errorPage = "exception/main_server_downtime.jsp" %>

<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script type ="text/javascript" src ="../js/validation.js"></script>
<title>상품 삭제</title>
    
</head>
<body>
   <jsp:include page="top_menu_ad.jsp" />
   <div class="jumbotron">
      <div class="container">
      <h1 class="display-3">상품 삭제</h1>
      </div>
   </div>
    <%@ include file = "../db/db_conn.jsp"%>
    
<%
    String productId = request.getParameter("id");
    
    String sql = "select * from product";
    pstmt = conn.prepareStatement(sql);
    rs = pstmt.executeQuery();
    
    if(rs.next()) {
        sql = "delete from product where P_id = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,productId);
        pstmt.executeUpdate();
    }
    
    if(rs !=null) rs.close();
    if(pstmt != null) pstmt.close();
    if(conn != null) conn.close();
    
    response.sendRedirect("product_edit.jsp?edit=delete");
    
    %>
