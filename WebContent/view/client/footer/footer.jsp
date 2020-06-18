<%-- 
    Document   : footer
    Created on : May 5, 2020, 11:25:37 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>
<!-- Login Modal -->  
  <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4>Đăng nhập hoặc Đăng ký</h4>
          <form class="aa-login-form" action="${pageContext.request.contextPath}/login" method="post">
            <label for="">Username hoặc email<span>*</span></label>
            <input type="text" placeholder="Usernamel" name="username">
            <label for="">Mật khẩu<span>*</span></label>
            <input type="password" placeholder="Mật khẩu" name="password">
            <button class="aa-browse-btn" type="submit">Đăng nhập</button>
            <label for="rememberme" class="rememberme"><input type="checkbox" id="rememberme"> Ghi nhớ tài khoản </label>
            <p class="aa-lost-password"><a href="#">Quên mật khẩu?</a></p>
            <div class="aa-register-now">
              Bạn chưa có tài khoản?<a href="account.jsp">Đăng ký ngay!</a>
            </div>
          </form>
        </div>                        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>    
        <!-- footer -->  
  <footer id="aa-footer">
    <!-- footer bottom -->
    <div class="aa-footer-top">
     <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-top-area">
            <div class="row">
              <div class="col-md-4 col-sm-6">
                <div class="aa-footer-widget">
                  <a href="${pageContext.request.contextPath}/view/client/home"><img src="${url}/images/logo_footer.jpg" alt="logo img" width="185px"></a> 
                  <ul class="aa-footer-nav">
                    <li><a href="${pageContext.request.contextPath}/view/client/home">Trang chủ</a></li>
                    <li><a href="${pageContext.request.contextPath}/view/client/introduce">Giới thiệu</a></li>
                    <li><a href="${pageContext.request.contextPath}/view/client/contact">Liên hệ</a></li>
                    <li><img src="${pageContext.request.contextPath}/view/client/assets/images/dadangky.png" alt="logo img" width="40%"></li>
                  </ul>
                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>HỖ TRỢ KHÁCH HÀNG</h3>
                    <ul class="aa-footer-nav">
                      <li><a href="${pageContext.request.contextPath}/view/client/order">Hướng dẫn đặt hàng</a></li>
                      <li><a href="${pageContext.request.contextPath}/view/client/payment">Hướng dẫn thanh toán</a></li>
                      <li><a href="${pageContext.request.contextPath}/view/client/security">Chính sách bảo mật thông tin</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>LIÊN HỆ</h3>
                    <address>
                      <p>Khu phố 6 - P.Linh Trung - Q.Thủ Đức - TP HCM</p>
                      <p><span class="fa fa-phone"></span>037.7026.186</p>
                      <p><span class="fa fa-envelope"></span>webnongsan@gmail.com</p>
                    </address>
                    <div class="aa-footer-social">
                      <a href="#"><span class="fab fa-facebook"></span></a>
                      <a href="#"><span class="fab fa-youtube"></span></a>
                      <a href="#"><span class="fab fa-instagram"></span></a>
                      <a href="#"><span class="fab fa-skype"></span></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
    </div>
    <!-- footer-bottom -->
    <div class="aa-footer-bottom">
      <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-bottom-area">
            <p>Copyright 2020 &copy VT3 Team</p>
            <div class="aa-footer-payment">
              <span class="fab fa-cc-mastercard"></span>
              <span class="fab fa-cc-visa"></span>
              <span class="fab fa-paypal"></span>
              <span class="fab fa-cc-discover"></span>
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
  </footer>
  <!-- / footer -->
   
    </body>
     <jsp:include page = "script.jsp" flush = "true" />

</html>
