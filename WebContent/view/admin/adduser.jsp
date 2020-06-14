<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />

    <div class="content-wrapper">
      <div class="container-fluid">

        <div class="row mt-3">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <div class="card-title">Thêm User</div>
                <hr>
                <form action="${pageContext.request.contextPath}/admin/user/add" method="post">
                
                  <div class="form-group">
                    <label for="input-1">Họ tên</label>
                    <input type="text" class="form-control" id="input-2" placeholder="Nhập họ tên" name="user-name">
                  </div>
                  <div class="form-group">
                    <label for="input-2">Email</label>
                    <input type="text" class="form-control" id="input-3" placeholder="Nhập địa chỉ Email" name="user-email">
                  </div>
                  <div class="form-group">
                    <label for="input-3">Số Điện Thoại</label>
                    <input type="text" class="form-control" id="input-4" placeholder="Nhập số điện thoại" name="user-phone">
                  </div>
                  <div class="form-group">
                    <label for="input-3">UserName</label>
                    <input type="text" class="form-control" id="input-5" placeholder="Nhập User Name" name="user-userName">
                  </div>
                  <div class="form-group">
                    <label for="input-4">Mật khẩu</label>
                    <input type="password" class="form-control" id="myinput" placeholder="Nhập mật khẩu" name="user-password">
					<input type="checkbox" onclick="myFunction1()">Hiển thị mật khẩu
					<script>function myFunction1() {
                    	  var x = document.getElementById("myinput");
                    	  if (x.type === "password") {
                    	    x.type = "text";
                    	  } else {
                    	    x.type = "password";
                    	  }
                    	}
					</script>                   
                  </div>
                  <div class="form-group">
                    <label for="input-5">Date</label>
                    <input type="date" class="form-control" id="the-date" placeholder="Ngày tạo" name="user-created">
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn btn-light px-5"><i class="icon-lock"></i> Đăng ký</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="overlay toggle-menu"></div>
      </div>
    </div>
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

    <jsp:include page = "./footer/footer.jsp" flush = "true" />