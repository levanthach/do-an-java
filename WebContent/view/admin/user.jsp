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
                <h5 class="card-title">Danh sách User</h5>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên</th>
                        <th scope="col">Email</th>
                        <th scope="col">Số điện thoại</th>
                        <th scope="col">Username</th>
                        <th scope="col">Password</th>
                         <th scope="col">Hành động</th>
             
                      </tr>
                    </thead>
                    <tbody>
                  <c:forEach items="${userList}" var="user">
                      <tr>
                        <td scope="row">${user.id}</td>
                        <td>${user.name }</td>
        				<td>${user.email }</td>
        				<td>${user.phone }</td>
        				<td>${user.username }</td>
        				<td>${user.password }</td>
        				<td>${user.created }</td>
        				 <td>
                          <button type="button">
                          	<a href="${pageContext.request.contextPath}/admin/user/delete?user-id=${user.id}">Xóa</a>
                          </button>
                         
                          <button type="button">
                          <a href="${pageContext.request.contextPath}/admin/user/edit?user-id=${user.id}">Sửa</a></button>
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
        <div class="overlay toggle-menu"></div>
      </div>
    </div>

  
    <jsp:include page = "./footer/footer.jsp" flush = "true" />