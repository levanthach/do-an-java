<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />
    <div class="content-wrapper">
      <div class="container-fluid">

        <div class="row mt-3">
          <div class="col-lg-12">
            <button class="add-catalog"><a href="${pageContext.request.contextPath}/admin/product/add">Thêm sản phẩm</a></button>
          </div>
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Danh sách sản phẩm</h5>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên sản phẩm</th>
                        <th scope="col">Tên danh mục</th>
                        <th scope="col">Giá</th>
                        <th scope="col">Status</th>
                        <th scope="col">Giảm giá</th>
                        <th scope="col">Mô tả</th>
                        <th scope="col">Nội dung</th>
                        <th scope="col">Hình ảnh</th>
                        <th scope="col">Danh sách ảnh</th>
                        <th scope="col">Ngày tạo</th>
                        <th scope="col">Hành động</th>
                      </tr>
                    </thead>
                    <tbody>
                     <c:forEach items="${productlist}" var="product">
                      <tr>
                        <th scope="row">${product.id }</th>
                        <td>${product.name }</td>
                        <td>${product.catalog_id }</td>
                        <td>${product.price }</td>
                        <td>${product.status }</td>
                        <td>${product.discount }%</td>
                        <td>${product.description }</td>
                        <td>${product.content }</td>
                        <td>${product.image_link }</td>
                        <td>${product.image_list }</td>
                        <td>${product.created }</td>
                        <td>
                           <button><a href="${pageContext.request.contextPath}/admin/product/delete?id=${product.id}">Xóa</a></button>
                         
                          <button><a href="${pageContext.request.contextPath}/admin/cate/product?id=${product.id}">Sửa</a></button>
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