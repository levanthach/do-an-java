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
   <img src="${pageContext.request.contextPath}/view/client/assets/images/checkout-banner.png" alt="banner thanh toán">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Thanh toán</h2>
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>
          <li style="color:#fff">Thông tin thanh toán</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

 <!-- Cart view section -->
 <section id="checkout">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="checkout-area">
          <form action="${pageContext.request.contextPath}/view/client/transaction" method="post">
            <div class="row">
              <div class="col-md-8">
                <div class="checkout-left">
                  <div class="panel-group" >
                   <c:if test="${sessionScope.username == null}">
                   		<p> Bạn cần đăng nhập để thanh toán! Đăng nhập <a href="${pageContext.request.contextPath}/view/client/login" style="color: #754110">tại đây!</a></p>
                   </c:if>
				 <c:if test="${sessionScope.username != null}">
                    <!-- Shipping Address -->
                    <div class="panel panel-default aa-checkout-billaddress">
                      <div class="panel-heading">
                        <h4 class="panel-title" style="color:#754110">
                            Địa chỉ giao hàng
                        </h4>
                      </div>
                      <div id="collapseFour">
                        <div class="panel-body">
                         <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                <input type="text" placeholder="Họ Tên*" required="required" name="transaction_name">
                              </div>                             
                            </div>
                          
                          </div> 
                         
                          <div class="row">
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="email" placeholder="Email*" required="required" name="transaction_email">
                              </div>                             
                            </div>
                            <div class="col-md-6">
                              <div class="aa-checkout-single-bill">
                                <input type="tel" placeholder="Số điện thoại*" required="required" name="transaction_phone">
                              </div>
                            </div>
                          </div> 
                          <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                <textarea cols="8" rows="3" required="required" placeholder="Địa chỉ*" name="transaction_address"></textarea>
                              </div>                             
                            </div>                            
                          </div>
                           <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                <textarea cols="8" rows="3" placeholder="Ghi chú" name="transaction_mess"></textarea>
                              </div>                             
                            </div>                            
                          </div>     
                          
                          <div class="row">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                  <input type="date" placeholder="Password" name="transaction_created" id="the-date" style="display: none">             
                              </div>                             
                            </div>                            
                          </div>             
                          
                          <div class="row" style="display: none">
                            <div class="col-md-12">
                              <div class="aa-checkout-single-bill">
                                  <input type="text" placeholder="userid_session" name="transaction_usersession" value="${username }"> 
                                  
                                 <input type="text" placeholder="totalmoney_session" name="transaction_amount" value="${sumprice}">         
                              </div>                             
                            </div>                            
                          </div>              
                        </div>
                      </div>
                    </div>
				</c:if>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="checkout-right">
                  <h4>Thông tin đơn hàng</h4>
                  <div class="aa-order-summary-area">
                    <table class="table table-responsive">
                      <thead>
                        <tr>
                          <th>Sản phẩm</th>
                          <th>Số tiền</th>
                        </tr>
                      </thead>
                      <tbody>
                      <c:forEach items="${order.items}" var="item">
                        <tr>
                          <td>${item.product.name } <strong> x  ${item.qty}</strong></td>
                          <td>${item.price}00 VNĐ</td>
                        </tr>
                       </c:forEach>
                      </tbody>
                      <tfoot>
                        <tr>
                          <th>Tạm tính</th>
                          <td>${sumprice} VNĐ</td>
                        </tr>
                         <tr>
                          <th>Thuế</th>
                          <td>0 VNĐ</td>
                        </tr>
                         <tr>
                          <th>Tổng cộng</th>
                          <td><strong>${sumprice} VNĐ</strong></td>
                        </tr>
                      </tfoot>
                    </table>
                  </div>
                  <h4>Hình thức thanh toán</h4>
                  <div class="aa-payment-method">                    
                    <label for="cashdelivery"><input type="radio" id="cashdelivery" name="transaction_payment" checked value="0"> Thanh toán khi nhận hàng (COD) </label>
                    <label for="paypal"><input type="radio" id="paypal" name="transaction_payment" value="1" > Thanh toán bằng thể ngân hàng (ATM) </label>
                    <img src="${pageContext.request.contextPath}/view/client/assets/img/paypal.jpg" border="0" alt="PayPal Acceptance Mark">    
                    <input type="submit" value="Đặt hàng" class="aa-browse-btn">
                  </div>
                   <c:if test="${sessionScope.username != null && sessionScope.order == null}">
                   <br>
                   		<p style="color: red">Bạn đã đặt hàng thành công!</p>
                   </c:if>
                </div>
              </div>
            </div>
          </form>
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- / Cart view section -->
<!--  end content-->
   <script>
		var date = new Date();
		
		var day = date.getDate();
		var month = date.getMonth() + 1;
		var year = date.getFullYear();
		
		if (month < 10) month = "0" + month;
		if (day < 10) day = "0" + day;
		
		var today = year + "-" + month + "-" + day;
		
		
		document.getElementById('the-date').value = today;
</script>
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->


  
