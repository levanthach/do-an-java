<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />

 
    <div class="content-wrapper">
      <div class="container-fluid">
        <!--End Row-->


        <div class="row">
          <div class="col-lg-12">
            <button class="add-catalog"><a href="addcate.jsp">Thêm chuyên mục</a></button>
          </div>
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <h5 class="card-title">Danh sách chuyên mục</h5>
                <div class="table-responsive">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Tên chuyên mục</th>
                        <th scope="col">ID danh mục cha</th>
                        <th scope="col">Action</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>Rau xanh sạch</td>
                        <td>Null</td>
                        <td>
                          <button>Xóa</button>
                          <button>Sửa</button>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">2</th>
                        <td>Củ quả</td>
                        <td>Null</td>
                        <td>
                          <button>Xóa</button>
                          <button>Sửa</button>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">3</th>
                        <td>Hạt giống</td>
                        <td>Null</td>
                        <td>
                          <button>Xóa</button>
                          <button>Sửa</button>
                        </td>
                      </tr>
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