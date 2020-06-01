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
                <div class="card-title">Vertical Form</div>
                <hr>
                <form action="${pageContext.request.contextPath}/admin/user/edit" method="post">
                  <div class="form-group">
                    <label for="input-1">ID</label>
                    <input type="text" class="form-control" id="input-1" placeholder="Enter Your ID" value="${user.id}" name="user-id">
                  </div>
                  <div class="form-group">
                    <label for="input-1">Name</label>
                    <input type="text" class="form-control" id="input-2" placeholder="Enter Your Name" value="${user.name}" name="user-name">
                  </div>
                  <div class="form-group">
                    <label for="input-2">Email</label>
                    <input type="text" class="form-control" id="input-3" placeholder="Enter Your Email Address" value="${user.email}" name="user-email">
                  </div>
                  <div class="form-group">
                    <label for="input-3">Mobile</label>
                    <input type="text" class="form-control" id="input-4" placeholder="Enter Your Mobile Number" value="${user.phone}" name="user-phone">
                  </div>
                  <div class="form-group">
                    <label for="input-3">UserName</label>
                    <input type="text" class="form-control" id="input-5" placeholder="Enter Your User Name" value="${user.username}" name="user-userName">
                  </div>
                  <div class="form-group">
                    <label for="input-4">Password</label>
                    <input type="password" class="form-control" id="myinput" placeholder="Enter Password" value="${user.password}" name="user-password">
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
                    <input type="date" class="form-control" id="input-6" placeholder="Date" value="${user.created}" name="user-created">
                  </div>
                  <div class="form-group py-2">
                    <div class="icheck-material-white">
                      <input type="checkbox" id="user-checkbox1" checked="" />
                      <label for="user-checkbox1">I Agree Terms & Conditions</label>
                    </div>
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn btn-light px-5"><i class="icon-lock"></i> Edit</button>
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