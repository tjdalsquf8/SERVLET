<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%> <!-- 자바 리스트 자료구조 연동 -->
<%@ page import="dto.Product"%> <!-- 패키지 연동 -->
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>
<%@ page errorPage = "exception/main_server_downtime.jsp" %>

<%! String greeting = "꾸팡.COM에 오신것을 환영합니다.";
	String tagline = "하단 페이지 : 확인"; %>
<div class="jumbotron">
    IKEA에 오신걸 환영합니다.
</div>

<div class="container">
    <div class="row" align="center">
        <%
		String sql = "select * from product"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
		rs = pstmt.executeQuery(); // 쿼리 실행
		while (rs.next()) { // 결과 ResultSet 객체 반복
		%>

        <div class="col-md-4">
            <div class="card bg-dark text-white">
                <img src="image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                <div class="card-img-overlay">
                    <h5 class="card-title">Ikea 이미지</h5>
                    <p class="card-text">출처: 구글 검색</p>
                </div>
            </div>

            <h3><%=rs.getString("p_name")%></h3>
            <p><%=rs.getString("p_description")%></p>
            <p><%=rs.getString("p_UnitPrice")%>원</p>
            <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button">상세 정보 &raquo;</a></p>

        </div>
        <%
			} // 반복문 끝난 이후 db 연결 종료	
		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
		%>

    </div>
    <hr>
</div>
<div class="card bg-dark text-white">
    <img src="image/Ikea app.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
        <h5 class="card-title">모바일 앱 출시</h5>
        <p class="card-text">출처: 이케아</p>
    </div>
    <div class="list-group">
        <a href="https://www.ikea.com/kr/ko/campaigns/ikea-pub152ac1c0?itm_campaign=seasonality&itm_element=sb&itm_content=homepage" target="_blank" class="list-group-item list-group-item-action active" aria-current="true">
            낭만의 계절, 캠핑으로 떠나요~
        </a>
        <a href="https://www.ikea.com/kr/ko/live-shopping/" target="_blank" class="list-group-item list-group-item-action">매주 목요일 오후 2시, IKEA live!</a>
        A disabled link item
    </div>
</div>