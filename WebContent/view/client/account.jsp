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
    <img src="${url}/img/fashion/fashion-header-bg-8.jpg" alt="fashion img">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Tài khoản</h2>
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/view/client/home">Trang chủ</a></li>                   
          <li class="active">Đăng ký tài khoản</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

 <!-- Cart view section -->
 <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
             
              <div class="col-md-8 col-md-push-2">
                <div class="aa-myaccount-register">                 
                 <h4>Đăng ký</h4>
                                               
                 <form action="${pageContext.request.contextPath}/view/client/register" method="post" class="aa-login-form">
                  	<label for="">Họ tên<span>*</span></label>
                    <input type="text" placeholder="Nhập Họ Tên" name="user-name">
                    	<label for="">Email<span>*</span></label>
                    <input type="text" placeholder="Nhập Email" name="user-email">
                    	<label for="">Số điện thoại<span>*</span></label>
                    <input type="text" placeholder="Nhập SĐT" name="user-phone">
                    <label for="">Username<span>*</span></label>
                    <input type="text" placeholder="Nhập Username" name="user-userName">
                    <label for="">Mật khẩu<span>*</span></label>
                    <input type="password" id="myinput" placeholder="Nhập Password" name="user-password">
                    <input type="checkbox" onclick="myFunction1()">Hiển thị mật khẩu
                    <input type="date"  name="user-created" id="the-date" style="display:none"/>
					<script>
					var date = new Date();

					var day = date.getDate();
					var month = date.getMonth() + 1;
					var year = date.getFullYear();

					if (month < 10) month = "0" + month;
					if (day < 10) day = "0" + day;

					var today = year + "-" + month + "-" + day;


					document.getElementById('the-date').value = today;
					function myFunction1() {
                    	  var x = document.getElementById("myinput");
                    	  if (x.type === "password") {
                    	    x.type = "text";
                    	  } else {
                    	    x.type = "password";
                    	  }
                    	}
					</script>            
                    <button type="submit" class="aa-browse-btn">Đăng ký</button>                    
                  </form>
                </div>
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
  
  
