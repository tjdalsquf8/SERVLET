<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ include file="../db/db_conn.jsp" %>
<%
    request.setCharacterEncoding("UTF-8"); //한글 깨짐 방지
    Date day = new java.util.Date();
    day.setDate(day.getDate());
    SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");

    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String gender = request.getParameter("gender");
    String birth = request.getParameter("birth");
    String mail = request.getParameter("mail");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String regist_day = date.format(day);

    String sql = "INSERT INTO member VALUES(?,?,?,?,?,?,?,?,?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    pstmt.setString(2, password);
    pstmt.setString(3, name);
    pstmt.setString(4, gender);
    pstmt.setString(5, birth);
    pstmt.setString(6, mail);
    pstmt.setString(7, phone);
    pstmt.setString(8, address);
    pstmt.setString(9, regist_day);
    pstmt.executeUpdate();

    if (pstmt != null)
        pstmt.close();
    if(conn != null)
        conn.close();

    response.sendRedirect("../index.jsp");
%>