<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />
    <div class="content-wrapper">
      <div class="container-fluid">

        <div class="row mt-3">
          <div class="col-lg-8">
            <div class="card">
              <div class="card-body">
                <div class="card-title">Sửa tin tức</div>
                <hr>
                <form action="${pageContext.request.contextPath}/admin/new/edit" method="post">
                 <div class="form-group">
                    <label for="input-1">ID</label>
                    <input type="text" class="form-control" readonly id="input-1" placeholder="ID" value="${boardnew.id}" name="new-id">
                  </div>
                  <div class="form-group">
                    <label for="input-2">Tên tin tức</label>
                    <input type="text" class="form-control" id="input-2" placeholder="Tên tin tức" value="${boardnew.title}"name="new-title">
                  </div>
                  <div class="form-group">
                    <label for="input-3">Nội dung</label>
                    <textarea class="form-control" rows="4" id="input-17" name="new-content">${boardnew.content}</textarea>
                  </div>
                  <div class="form-group">
                    <label for="input-2">Hình ảnh</label>
                    <input type="text" class="form-control" id="input-10" placeholder="Địa chỉ hình ảnh" value="${boardnew.image_link}"name="new-image_link">
                  </div>
	               <div class="form-group">
	                  <label for="input-4">Người đăng</label>
                  <div>
                    <select class="form-control valid" id="input-4" name="new-author"" >
                        <option>NULL</option>
                        <option>Thịnh Dương</option>
                        <option>Lê Thạch</option> 
                        <option>Lan Ngọc</option>
                        <option>Kim Vy</option>
                    </select>
                  </div>
                  </div>
                  <div class="form-group">
	                  <label for="input-5">Ngày đăng</label>
	                  <input type="date" class="form-control" id="input-5" value="${boardnew.created}" name="new-created">
	              </div>
                 <div class="form-footer">
                 	<button class="btn btn-danger"><a href="${pageContext.request.contextPath}/admin/product/list">Hủy</a></button>
                     <button class="btn btn-success">Cập nhật</button>
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