<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="example.*" %>

	
  <footer class="container">
     <p> <br> &copy; 쇼핑몰 대표 : 조성민, 고유번호 : 20201021, 연락처 : 010-8225-6717 <br> 
        <%
    	ShopTime time = new ShopTime();
         %>    
        오늘 날짜와 시간 : <%=time.timenow() %>
        </p>
	</footer>	
