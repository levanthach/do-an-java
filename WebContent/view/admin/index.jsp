<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />
 
    <div class="content-wrapper">
      <div class="container-fluid">
        <div class="card mt-3">
          <div class="card-content">
            <div class="row row-group m-0">
              <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">9526 <span class="float-right"><i class="fa fa-shopping-cart"></i></span>
                  </h5>
                  <div class="progress my-3" style="height:3px;">
                    <div class="progress-bar" style="width:55%"></div>
                  </div>
                  <p class="mb-0 text-white small-font">Đơn hàng(theo tuần)<span class="float-right">+4.2% <i
                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
              </div>
              <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">8323 <span class="float-right"><i class="fa fa-usd"></i></span></h5>
                  <div class="progress my-3" style="height:3px;">
                    <div class="progress-bar" style="width:55%"></div>
                  </div>
                  <p class="mb-0 text-white small-font">Lợi nhuận(theo tuần)<span class="float-right">+1.2% <i
                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
              </div>
              <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">6200 <span class="float-right"><i class="fa fa-eye"></i></span></h5>
                  <div class="progress my-3" style="height:3px;">
                    <div class="progress-bar" style="width:55%"></div>
                  </div>
                  <p class="mb-0 text-white small-font">Ghé trang(theo tuần)<span class="float-right">+5.2% <i
                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
              </div>
              <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">5630 <span class="float-right"><i class="fa fa-envira"></i></span></h5>
                  <div class="progress my-3" style="height:3px;">
                    <div class="progress-bar" style="width:55%"></div>
                  </div>
                  <p class="mb-0 text-white small-font">Bán ra(theo tuần)<span class="float-right">+2.2% <i
                        class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-12 col-lg-4 col-xl-4">
            <div class="card">
              <div class="card-header">Danh mục bán chạy
              </div>
              <div class="card-body">
                <div class="chart-container-2">
                  <canvas id="chart2"></canvas>
                </div>
              </div>
              <div class="table-responsive">
                <table class="table align-items-center">
                  <tbody>
                    <tr>
                      <td><i class="fa fa-circle text-white mr-2"></i>Rau sạch</td>
                      <td>$5856</td>
                      <td>+55%</td>
                    </tr>
                    <tr>
                      <td><i class="fa fa-circle text-light-1 mr-2"></i>Củ quả</td>
                      <td>$2602</td>
                      <td>+25%</td>
                    </tr>
                    <tr>
                      <td><i class="fa fa-circle text-light-2 mr-2"></i>Hạt</td>
                      <td>$1802</td>
                      <td>+15%</td>
                    </tr>
                    <tr>
                      <td><i class="fa fa-circle text-light-3 mr-2"></i>Mật ong</td>
                      <td>$1105</td>
                      <td>+5%</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <div class="right-sidebar">
      <div class="switcher-icon">
        <i class="zmdi zmdi-settings zmdi-hc-spin"></i>
      </div>
      <div class="right-sidebar-content">
        <p class="mb-0">Màu nền admin</p>
        <hr>
        <ul class="switcher">
          <li id="theme1"></li>
          <li id="theme2"></li>
          <li id="theme3"></li>
          <li id="theme4"></li>
          <li id="theme5"></li>
          <li id="theme6"></li>
        </ul>
        <p class="mb-0">Màu nền gradient</p>
        <hr>
        <ul class="switcher">
          <li id="theme7"></li>
          <li id="theme8"></li>
          <li id="theme9"></li>
          <li id="theme10"></li>
          <li id="theme11"></li>
          <li id="theme12"></li>
          <li id="theme13"></li>
          <li id="theme14"></li>
          <li id="theme15"></li>
        </ul>
      </div>
    </div>
  </div>
  
    <jsp:include page = "./footer/footer.jsp" flush = "true" />