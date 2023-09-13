<%@ page contentType = "text/html;charset=utf-8" %>

	 <%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>
    
<%! String greeting = "꾸팡.COM에 오신것을 환영합니다.";
	String tagline = "하단 페이지 : 확인";%>
	<div class="jumbotron">
		IKEA에 오신걸 환영합니다.
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