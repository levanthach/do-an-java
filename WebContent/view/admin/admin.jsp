<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
  <!-- Start header section --> 
  <jsp:include page = "./header/header.jsp" flush = "true" /> 
    <div class="content-wrapper"> 
      <div class="container-fluid"> 
        <!--End Row--> 
 
 
        <div class="row"> 
          <div class="col-lg-12"> 
            <button class="add-catalog"><a href="${pageContext.request.contextPath}/admin/admin/add">Thêm Admin</a></button> 
          </div> 
          <div class="col-lg-12"> 
            <div class="card"> 
              <div class="card-body"> 
                <h5 class="card-title">Danh sách Admin</h5> 
                <div class="table-responsive"> 
                  <table class="table table-striped"> 
                    <thead> 
                      <tr> 
                        <th scope="col">#</th> 
                        <th scope="col">Tên đăng nhập</th> 
                        <th scope="col">Mật khẩu</th>
                        <th scope="col">Tên Admin</th>
                        <th scope="col">Hành động</th>                        
                     </tr> 
                    </thead> 
                    <tbody> 
                  <c:forEach items="${adminlist}" var="admin"> 
                      <tr> 
                        <td scope="row">${admin.id}</td> 
                        <td>${admin.username }</td> 
                        <td>${admin.password }</td> 
        				<td>${admin.name }</td> 
        				 <td> 
                          <button>Xóa</button> 
                          <button>Sửa</button> 
                        </td> 
                     </tr> 
                    </c:forEach> 
                    </tbody> 
                  </table> 
                </div> 
              </div> 
            </div> 
          </div> 
        </div> 
      </div> 
    </div> 
  
    <jsp:include page = "./footer/footer.jsp" flush = "true" />