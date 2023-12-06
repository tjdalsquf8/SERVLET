<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>

<%
    String id = request.getParameter("user_name");
    String password = request.getParameter("user_password");

    String sql = "SELECT * FROM member WHERE id = ? and password = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    pstmt.setString(2, password);
    rs = pstmt.executeQuery();

    if (rs.next()) {
        session.setAttribute("user_id", id);
        response.sendRedirect("../index.jsp");
    }
    else {
        response.sendRedirect("login_user_failed.jsp");
    }
        
    if (rs != null)
        rs.close();
    if (pstmt != null)
        pstmt.close();
    if (conn != null)
        conn.close();
%>