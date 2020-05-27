<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/admin/assets" var="url"/>
    <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
      <div class="brand-logo">
        <a href="index.jsp">
          <img src="${url}/images/logo-icon.png" class="logo-icon" alt="logo icon">
          <h5 class="logo-text">Admin Web Nông Sản</h5>
        </a>
      </div>
      <ul class="sidebar-menu do-nicescrol">
        <li class="sidebar-header">MENU ADMIN</li>
        <li>
          <a href="index.jsp">
            <i class="zmdi zmdi-view-dashboard"></i> <span>Tổng quan</span>
          </a>
        </li>
        <li>
          <a href="${pageContext.request.contextPath}/admin/user/list">
            <i class="zmdi zmdi-accounts"></i> <span>Quản lí User</span>
          </a>
        </li>
        <li>
          <a href="${pageContext.request.contextPath}/admin/cate/list">
            <i class="zmdi zmdi-grid"></i> <span>Chuyên Mục</span>
          </a>
        </li>
        <li>
          <a href="show-product.jsp">
            <i class="zmdi zmdi-widgets"></i> <span>Danh Sách Sản Phẩm</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="zmdi zmdi-shopping-cart"></i> <span>Đơn Hàng</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class="zmdi zmdi-calendar-check"></i> <span>Review</span>
          </a>
        </li>       
      </ul>
    </div>