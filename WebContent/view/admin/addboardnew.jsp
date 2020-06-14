<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />
    <div class="content-wrapper">
      <div class="container-fluid">

        <div class="row mt-3">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <div class="card-title">Thêm tin tức</div>
                <hr>
                <form action="${pageContext.request.contextPath}/admin/new/add" method="post">
                 
                  <div class="form-group">
                    <label for="input-2">Tên tin tức</label>
                    <input type="text" class="form-control" id="input-2" placeholder="Tên tin tức" name="new-title">
                  </div>
                  <div class="form-group">
                    <label for="input-3">Nội dung</label>
                    <textarea class="form-control" rows="4" id="input-17" name="new-content"></textarea>
                  </div>
                  <div class="form-group">
                    <label for="input-3">Hình ảnh</label>
                    <input type="text" class="form-control" id="input-18" placeholder="Địa chỉ hình ảnh" name="new-image_link">
                  </div>
	               <div class="form-group">
	                  <label for="input-4">Người đăng</label>
                  <div>
                    <select class="form-control valid" id="input-4" name="new-author" required aria-invalid="false">
                        <option>Thịnh Dương</option>
                        <option>Lê Thạch</option>
                        <option>Lan Ngọc</option>
                        <option>Kim Vy</option>
                    </select>
                  </div>
                  </div>
                  <div class="form-group">
	                  <label for="input-5">Ngày đăng</label>
	                  <input type="date" class="form-control" id="the-date" name="new-created">
	              </div>
                 <div class="form-footer">
                 	
                    <button class="btn btn-danger"><i class="fa fa-times"></i><a href="${pageContext.request.contextPath}/admin/new/list">Hủy</a></button>
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