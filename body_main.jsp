<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "꾸팡.COM에 오신것을 환영합니다.";
	String tagline = "하단 페이지 : 확인";%>
	<div class="jumbotron">
		IKEA에 오신걸 환영합니다.
	</div>

<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 	

	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
<div class="card bg-dark text-white">
    <img src="image/Ikea app.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">모바일 앱 출시</h5>
    <p class="card-text">출처 : 이케아</p>
  </div>
     <div class="list-group">
      <a href="https://www.ikea.com/kr/ko/campaigns/ikea-pub152ac1c0?itm_campaign=seasonality&itm_element=sb&itm_content=homepage" target="_blank" class="list-group-item list-group-item-action active" aria-current="true">
        낭만의 계절, 캠핑으로 떠나요~
      </a>
      <a href="https://www.ikea.com/kr/ko/live-shopping/" target="_blank" class="list-group-item list-group-item-action">매주 목요일 오후 2시, IKEA live!</a>
      A disabled link item
    </div>
  </div>
