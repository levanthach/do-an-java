<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                      <tr>
                        <th scope="row">1</th>
                        <td>Lê Văn T</td>
                        <td>lvt@gmail.com</td>
                        <td>0123456789</td>
                        <td>levanthach</td>
                        <td>********</td>
                  
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
        <div class="overlay toggle-menu"></div>
      </div>
    </div>

  
    <jsp:include page = "./footer/footer.jsp" flush = "true" />