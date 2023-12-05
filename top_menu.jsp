<%@ page contentType = "text/html; charset=utf-8" %>

<nav class="navbar navbar-expand  navbar-white bg-white">
	<div class="dropdown">
  		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    		공간별 쇼핑하기
  		</button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
        <a class="dropdown-item" href="https://www.ikea.com/kr/ko/rooms/bedroom/">침실</a>
        <a class="dropdown-item" href="https://www.ikea.com/kr/ko/rooms/living-room/">거실</a>
        <a class="dropdown-item" href="https://www.ikea.com/kr/ko/rooms/kitchen/">주방</a>
        <a class="dropdown-item" href="https://www.ikea.com/kr/ko/rooms/hallway/">현관</a>
        <a class="dropdown-item" href="https://www.ikea.com/kr/ko/rooms/bathroom/">욕실</a>
     </div>
	</div>
    
    <div>
        <img src="../image/Ikea_logo.jpg" class="img-fluid" alt="main_image">
    </div>
    
	<div class="container">
		<div class="navbar-header">
	<a class="navbar-brand" href="../index.jsp">상품목록(기본 홈)</a>
           	<a class="navbar-brand" href="">로그인</a>
            <a class="navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
           	<a class="navbar-brand" href="admin/index_ad.jsp">관리자모드</a>

		</div>
	</div>
</nav>