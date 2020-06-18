<%-- 
    Document   : index
    Created on : May 5, 2020, 10:57:00 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>
  <!-- Start header section -->
  <jsp:include page = "./header/mainHeader.jsp" flush = "true" />
  <!-- / header section -->
  
<!--  content -->
<!-- catg header banner section -->
  <section id="aa-catg-head-banner">
   <img src="${pageContext.request.contextPath}/view/client/assets/images/banner-cart.png" alt="banner giỏ hàng">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Giỏ hàng</h2>
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}">Trang chủ </a></li>
          <li style="color:#fff">Thông tin giỏ hàng</li>
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
           <div class="cart-view-table">
             <form action="${pageContext.request.contextPath}/view/client/cart-update" method="post">
               <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>Bỏ chọn</th>
                        <th>Mô tả</th>
                        <th>Sản phẩm</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Giảm giá</th>
                        <th>Thành Tiền</th>
                      </tr>
                    </thead>
                    <tbody>
                      <c:forEach items="${order.items}" var="item">
                      <tr>
                        <td><a class="remove" href="${pageContext.request.contextPath}/view/client/cart-delete?id=${item.product.id}"><fa class="fa fa-close"></fa></a></td>
                        <td><a href="${pageContext.request.contextPath}/view/client/product-detail?id=${item.product.id}"><img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${item.product.image_link}" alt="img${item.product.name }"></a></td>
                        <td><a class="aa-cart-title" href="${pageContext.request.contextPath}/view/client/product-detail?id=${item.product.id}">${item.product.name }</a></td>
                        <td>${item.product.price} VNĐ</td>
                        <td><input class="aa-cart-quantity" type="number" name="${item.product.id}" value="${item.qty}" min=1></td>
                        <td>${item.product.discount} %</td>
                        <td>${item.price}00 VNĐ</td>
                      </tr>
          			 </c:forEach>
          			 <tr>
                        <td colspan="6" class=""><strong>TỔNG TIỀN</strong></td>
                        <td><strong>${sumprice} VNĐ</strong></td>
                      </tr>
                      <tr>
                        <td colspan="7" class="aa-cart-view-bottom">
                          <input class="aa-cart-view-btn" type="submit" value="Cập nhật giỏ hàng">
                        </td>
                      </tr>
                     
                      </tbody>
                  </table>
                  </div>
             </form>
             <!-- Cart Total view -->
             <div class="cart-view-total">
               <h4>Thông tin giỏ hàng</h4>
               <table class="aa-totals-table">
                 <tbody>
                   <tr>
                     <th>Tạm tính</th>
                     <td>${sumprice} VNĐ</td>
                   </tr>
                   <tr>
                     <th>VAT</th>
                     <td>0 VNĐ</td>
                   </tr>
                   <tr>
                     <th>Tổng cộng</th>
                     <td><strong>${sumprice} VNĐ</strong></td>
                   </tr>
                 </tbody>
               </table>
               <a href="${pageContext.request.contextPath}/view/client/checkout" class="aa-cart-view-btn">Thanh toán</a>
             </div>
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
