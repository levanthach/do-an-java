<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />
    <div class="content-wrapper">
      <div class="container-fluid">

        <div class="row mt-3">
          <div class="col-lg-12">
            <button class="add-catalog"><a href="addproduct.jsp">Thêm sản phẩm</a></button>
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
                        <th scope="col">Mô tả</th>
                        <th scope="col">Nội dung</th>
                        <th scope="col">Giảm giá</th>
                        <th scope="col">Hình ảnh</th>
                        <th scope="col">Danh sách ảnh</th>
                        <th scope="col">Cảm nhận</th>
                        <th scope="col">Ngày tạo</th>
                        <th scope="col">Hành động</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>Rau Cam Lâm</td>
                        <td>Rau xanh sạch</td>
                        <td>12000</td>
                        <td>true</td>
                        <td>Đây là sản phẩm sạch ...</td>
                        <td>đây là sản phẩm mới đc tung ra thị trường</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>sản phẩm ok</td>
                        <td>12/12/2012</td>
                        <td>
                          <button>Xóa</button>
                          <button>Sửa</button>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">1</th>
                        <td>Rau Cam Lâm</td>
                        <td>Rau xanh sạch</td>
                        <td>12000</td>
                        <td>true</td>
                        <td>Đây là sản phẩm sạch ...</td>
                        <td>đây là sản phẩm mới đc tung ra thị trường</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>sản phẩm ok</td>
                        <td>12/12/2012</td>
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