<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />

    <div class="content-wrapper">
      <div class="container-fluid">

        <div class="row mt-3">
          <div class="col-lg-8">
            <div class="card">
              <div class="card-body">
                <div class="card-title">Thêm sản phẩm</div>
                <hr>
                <form>
                  <div class="form-group">
                    <label for="input-1">Tên sản phẩm</label>
                    <input type="text" class="form-control" id="input-1" placeholder="Tên chuyên mục">
                  </div>
                  <div class="form-group">
                    <label for="input-2">ID chuyên mục cha</label>
                    <input type="number" class="form-control" id="input-2" placeholder="Id chuyên mục cha">
                  </div>
                  <!-- <div class="form-group">
                    <label for="input-2">Email</label>
                    <input type="text" class="form-control" id="input-2" placeholder="Enter Your Email Address">
                  </div>
                  <div class="form-group">
                    <label for="input-3">Mobile</label>
                    <input type="text" class="form-control" id="input-3" placeholder="Enter Your Mobile Number">
                  </div>
                  <div class="form-group">
                    <label for="input-4">Password</label>
                    <input type="text" class="form-control" id="input-4" placeholder="Enter Password">
                  </div>
                  <div class="form-group">
                    <label for="input-5">Confirm Password</label>
                    <input type="text" class="form-control" id="input-5" placeholder="Confirm Password">
                  </div>
                  <div class="form-group py-2">
                    <div class="icheck-material-white">
                      <input type="checkbox" id="user-checkbox1" checked="" />
                      <label for="user-checkbox1">I Agree Terms & Conditions</label>
                    </div>
                  </div> -->
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