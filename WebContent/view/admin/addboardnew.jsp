<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />
    <div class="content-wrapper">
      <div class="container-fluid">

        <div class="row mt-3">
          <div class="col-lg-8">
            <div class="card">
              <div class="card-body">
                <div class="card-title">Thêm tin tức</div>
                <hr>
                <form action="${pageContext.request.contextPath}/admin/new/add" method="post">
                 <div class="form-group">
                    <label for="input-1">ID</label>
                    <input type="text" class="form-control" id="input-1" placeholder="ID" name="new-id">
                  </div>
                  <div class="form-group">
                    <label for="input-2">Tên tin tức</label>
                    <input type="text" class="form-control" id="input-2" placeholder="Tên tin tức" name="new-title">
                  </div>
                  <div class="form-group">
                    <label for="input-3">Nội dung</label>
                    <input type="text" class="form-control" id="input-3" placeholder="Nội dung" name="new-content">
                  </div>
	               <div class="form-group">
	                  <label for="input-4">Người đăng</label>
                  <div>
                    <select class="form-control valid" id="input-4" name="new-author" required="" aria-invalid="false">
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
	                  <input type="text" class="form-control" id="input-5" name="new-created">
	              </div>
                 <div class="form-footer">
                    <button type="submit" class="btn btn-danger"><i class="fa fa-times"></i> Hủy</button>
                    <button type="submit" class="btn btn-success"><i class="fa fa-check-square-o"></i> Thêm</button>
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