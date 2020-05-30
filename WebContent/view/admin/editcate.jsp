<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />
    <div class="content-wrapper">
      <div class="container-fluid">

        <div class="row mt-3">
          <div class="col-lg-8">
            <div class="card">
              <div class="card-body">
                <div class="card-title">Sửa chuyên mục</div>
                <hr>
          	
	                <form action="${pageContext.request.contextPath}/admin/cate/edit" method="post">
	    
	                 <div class="form-group">
	                    <label for="input-1">ID</label>
	                    <input type="text" class="form-control" id="input-1" placeholder="ID" name="cate-id" value="${category.id}">
	                  </div>
	                  <div class="form-group">
	                    <label for="input-1">Tên chuyên mục</label>
	                    <input type="text" class="form-control" id="input-1" placeholder="Tên chuyên mục" name="cate-name" value="${category.name }">
	                  </div>
		               <div class="form-group">
		                  <label for="input-2">Chuyên mục cha</label>
		                  <div>
		                    <select class="form-control valid" id="input-6" name="intersted" required="" aria-invalid="false" value="${category.parent_id}">
		                        <option>NULL</option>
		                        <option>Mobile Development</option>
		                        <option>Digital Marketing</option>
		                        <option>Graphic Designing</option>
		                        <option>Ecommerce Industr</option>
		                    </select>
		                  </div>
		                </div>
	                 <div class="form-footer">
	                    <button type="submit" class="btn btn-danger"><i class="fa fa-times"></i> Hủy</button>
	                    <button type="submit" class="btn btn-success"><i class="fa fa-check-square-o"></i> Sửa</button>
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