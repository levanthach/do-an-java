<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />
    <div class="content-wrapper">
      <div class="container-fluid">

        <div class="row mt-3">
          <div class="col-lg-8">
            <div class="card">
              <div class="card-body">
                <div class="card-title">Thêm chuyên mục</div>
                <hr>
                <form action="${pageContext.request.contextPath}/CategoryAdd" method="post">
                 <div class="form-group">
                    <label for="input-1">ID</label>
                    <input type="number" class="form-control" id="input-1" placeholder="ID" name="cate-id">
                  </div>
                  <div class="form-group">
                    <label for="input-1">Tên chuyên mục</label>
                    <input type="text" class="form-control" id="input-1" placeholder="Tên chuyên mục" name="cate-name">
                  </div>
                  <div class="form-group">
                    <label for="input-2">ID chuyên mục cha</label>
                    <input type="number" class="form-control" id="input-2" placeholder="Id chuyên mục cha" name="parent-id">
                  </div>
               
                  <div class="form-group">
                    <button type="submit" class="btn btn-light px-5"> Thêm</button>
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