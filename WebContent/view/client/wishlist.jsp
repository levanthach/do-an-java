<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>
  <!-- Start header section -->
  <jsp:include page = "./header/mainHeader.jsp" flush = "true" />
  <!-- / header section -->
  
<!--  content -->
 
  <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
   <img src="${url}/img/fashion/wishlist.jpg" alt="fashion img" width="1480" height="500">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Sản phẩm yêu thích</h2>
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/view/client/home">Trang chủ</a></li>
          <li class="active">Sản phẩm yêu thích</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

 <!-- Cart view section -->
 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table aa-wishlist-table">
             <form action="">
               <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>Bỏ chọn</th>
                        <th>Mô tả</th>
                        <th>Sản phẩm</th>
                        <th>Giá</th>
                        <th>Trình trạng</th>
                        <th></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><a class="remove" href="#"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="#"><img src="${url}/img/fashion/vitao.jpg" alt="img"></a></td>
                        <td><a class="aa-cart-title" href="#">Vi tảo cao cấp</a></td>
                        <td>$250</td>
                        <td>Còn hàng</td>
                        <td><a href="#" class="aa-add-to-cart-btn">Thêm vào giỏ hàng</a></td>
                      </tr>
                      <tr>
                        <td><a class="remove" href="#"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="#"><img src="${url}/img/fashion/mangtay.jpg" alt="img"></a></td>
                        <td><a class="aa-cart-title" href="#">Măng tây</a></td>
                        <td>$250</td>
                        <td>Còn hàng</td>
                        <td><a href="#" class="aa-add-to-cart-btn">Thêm vào giỏ hàng</a></td>
                      </tr>
                      <tr>
                        <td><a class="remove" href="#"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="#"><img src="${url}/img/fashion/hatdieu.jpg" alt="img"></a></td>
                        <td><a class="aa-cart-title" href="#">Hạt điều</a></td>
                        <td>$50</td>
                        <td>Còn hàng</td>
                        <td><a href="#" class="aa-add-to-cart-btn">Thêm vào giỏ hàng</a></td>
                      </tr>                     
                      </tbody>
                  </table>
                </div>
             </form>             
           </div>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->
<!--  end content-->
  
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
  
