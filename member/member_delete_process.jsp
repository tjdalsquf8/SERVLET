<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>
<%
    String id = request.getParameter("id");

    String sersql = "SELECT * FROM member WHERE id = ?";
    pstmt = conn.prepareStatement(sersql);
    pstmt.setString(1, id);
    rs = pstmt.executeQuery();

    if(rs != null){
        String delsql = "DELETE FROM member WHERE id = ?";
        pstmt = conn.prepareStatement(delsql);
        pstmt.setString(1, id);
        pstmt.executeUpdate();
    }

    if (rs != null)
        rs.close();
    if (pstmt != null)
        pstmt.close();
    if (conn != null)
        conn.close();

    response.sendRedirect("member_view.jsp");

%>