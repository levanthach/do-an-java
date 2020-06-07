<%-- 
    Document   : index
    Created on : May 5, 2020, 10:57:00 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Start header section -->
  <jsp:include page = "./header/mainHeader.jsp" flush = "true" />
  <!-- / header section -->
  
<!--  content -->
  <!-- 404 error section -->
  <section id="aa-error">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-error-area">
            <h2>404</h2>
            <span>Sorry! Page Not Found</span>
            <p>Xin lỗi, nội dung này đã bị xóa hoặc không tồn tại. Vui lòng tìm kiếm lại!</p>
            <a href="./"> Trở về trang chủ</a>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / 404 error section -->
<!--  end content-->
  
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
 
