<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>
  <!-- Start header section -->
  <jsp:include page = "./header/mainHeader.jsp" flush = "true" />
  
  
  
  <section id="aa-catg-head-banner">
   <img src="${url}/images/banner_tc.jpg" alt="banner sản phẩm">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Hướng dẫn đặt hàng</h2>
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>   
          <li style="color:#fff">Đăt hàng</li>      
        </ol>
      </div>
     </div>
   </div>
  </section>
  <section id="aa-product-category">
    <div class="container">
      <div class="row">
      	<div>
      		<h1 style ="text-align: center; color: red;">Hướng dẫn đặt hàng</h1>
      		<strong>Các bước mua hàng trên Nông Sản 24h: </strong>
      		<p>
      		- Tìm kiếm sản phẩm <br>
      		- Chọn sản phẩm <br>
      		- Kiểm tra thông tin sản phẩm <br> 
      		- Xác nhận giỏ hàng <br>
      		- Nhập thông tin giao hàng <br>
      		- Chọn phương thức thanh toán <br>
      		- Đặt hàng <br>
      		- Nhận thông báo xác nhận đơn hàng.</p>
      		
			<p>Cách thức thực hiện cực đơn giản, dễ dàng, và nhanh chóng và có đầy đủ hướng dẫn sẽ tiết kiệm thời gian mua hàng của khách hàng.</p>
      		
      		<p>Ngoài mua hàng thông qua website, khách hàng cũng có thể đặt hàng các sản phẩm của <strong>Nông Sản 24h</strong> qua Hotline: 19001234</p>
      		<i>Hy vọng rằng với những kênh đặt hàng tiện lợi, đơn giản chúng tôi sẽ phục vụ khách hàng một cách nhanh nhất, hiệu quả nhất.</i>
      		<br><br/>
      	</div>
      </div>
     </div>
    </section>
    
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
      