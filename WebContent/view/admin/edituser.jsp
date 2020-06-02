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
                <div class="card-title">Sửa User</div>
                <hr>
                <form action="${pageContext.request.contextPath}/admin/user/edit" method="post">
                  <div class="form-group">
                    <label for="input-1">ID</label>
                    <input type="text" class="form-control" id="input-1" readonly="readonly" placeholder="ID" value="${user.id}" name="user-id">
                  </div>
                  <div class="form-group">
                    <label for="input-1">Họ tên</label>
                    <input type="text" class="form-control" id="input-2" placeholder="Họ tên" value="${user.name}" name="user-name">
                  </div>
                  <div class="form-group">
                    <label for="input-2">Email</label>
                    <input type="text" class="form-control" id="input-3" placeholder="Địa chỉ Email" value="${user.email}" name="user-email">
                  </div>
                  <div class="form-group">
                    <label for="input-3">Số điện thoại</label>
                    <input type="text" class="form-control" id="input-4" placeholder="Số điện thoại" value="${user.phone}" name="user-phone">
                  </div>
                  <div class="form-group">
                    <label for="input-3">UserName</label>
                    <input type="text" class="form-control" id="input-5" placeholder="Username" value="${user.username}" name="user-userName">
                  </div>
                  <div class="form-group">
                    <label for="input-4">Mật khẩu</label>
                    <input type="password" class="form-control" id="myinput" placeholder="Mật khẩu" value="${user.password}" name="user-password">
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
                    <input type="date" class="form-control" id="input-6" placeholder="Ngày tạo" value="${user.created}" name="user-created">
                  </div>
                  
                  <div class="form-group">
                    <button class="btn btn-danger"><a href="${pageContext.request.contextPath}/admin/user/list">Hủy</a></button>
                         
                     <button type="submit" class="btn btn-success">Cập nhật</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="overlay toggle-menu"></div>
      </div>
    </div>

    <jsp:include page = "./footer/footer.jsp" flush = "true" />