<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />
    <div class="content-wrapper">
      <div class="container-fluid">
        <div class="row mt-3">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <div class="card-title">Sửa đơn hàng</div>
                <hr>
                <form method="post" action="${pageContext.request.contextPath}/admin/order/edit">
                
                 <div class="form-group">
                    <label for="input-1">Mã đơn hàng</label>
                    <input type="text" class="form-control" readonly="readonly" id="input-1" placeholder="Mã sản phẩm" name="order-id" value="${order.id}">
                  </div>
                  
                  <div class="form-group">
                    <label for="input-1">Tên khách hàng</label>
                    <input type="text" class="form-control" id="input-1" name="order-name" value="${order.user_name}">
                  </div>
                  
                   <div class="form-group">
                    <label for="input-1">Email</label>
                    <input type="text" class="form-control" id="input-1" name="order-mail" value="${order.user_mail}">
                  </div>
                  
                   <div class="form-group">
                    <label for="input-1">Số điện thoại</label>
                    <input type="text" class="form-control" id="input-1" name="order-phone" value="${order.user_phone}">
                  </div>
                  
                      
                 <div class="form-group">
                  <label for="input-2" class="col-form-label">Địa chỉ</label>
                  <div>
                    <textarea class="form-control" rows="4" id="input-17" name="order-address">${order.address}</textarea>
                  </div>
                </div>
                <div class="form-group">
                  <label for="input-2" class="col-form-label">Ghi chú</label>
                  <div>
                    <textarea class="form-control" rows="4" id="input-17" name="order-mess">${order.message}</textarea>
                  </div>
                </div>
                  
	              <div class="form-group">
                    <label for="input-1">Tổng tiền</label>
                    <input type="text" class="form-control" id="input-1" name="order-amount" value="${order.amount}">
                  </div>
                  
                    <div class="form-group">
	                  <label for="input-2">Phương thức thanh toán</label>
	                  <div>
	                    <select class="form-control valid" id="input-6" name="order-payment" required aria-invalid="false">
	                        <option value="1">Thẻ nội địa ATM</option>
	                        <option value="0" selected="selected">COD</option>
	                    </select>
	                  </div>
	                </div>
                  
                    <div class="form-group">
	                  <label for="input-2">Trạng thái</label>
	                  <div>
	                    <select class="form-control valid" id="input-6" name="order-status" required aria-invalid="false">
	                        <option value="Đã thanh toán">Đã thanh toán</option>
	                        <option value="Chưa thanh toán" selected="selected">Chưa thanh toán</option>
	                    </select>
	                  </div>
	                </div>
	          
		               <div class="form-footer">
		                     <button class="btn btn-danger"><a href="${pageContext.request.contextPath}/admin/order/list">Hủy</a></button>
		                         
		                     <button type="submit" class="btn btn-success">Cập nhật</button>
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