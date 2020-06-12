<%-- 
    Document   : index
    Created on : May 5, 2020, 10:57:00 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>

  <!-- Start header section -->
  <jsp:include page = "./header/mainHeader.jsp" flush = "true" />
  <!-- / header section -->
  
<!--  content -->
   <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
      <img src="${pageContext.request.contextPath}/view/client/assets/images/banner-product.png" alt="banner sản phẩm">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Chi tiết sản phẩm</h2>
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/view/client/home">Trang chủ</a></li>         
          <li><a href="${pageContext.request.contextPath}/view/client/product">Sản phẩm</a></li>
          <li style="color:#fff">${detail_product.name }</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

  <!-- product category -->
  <section id="aa-product-details">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-product-details-area">
            <div class="aa-product-details-content">
              <div class="row">
                <!-- Modal view slider -->
             
                <div class="col-md-5 col-sm-5 col-xs-12">                              
                  <div class="aa-product-view-slider">                                
                    <div id="demo-1" class="simpleLens-gallery-container">
                      <div class="simpleLens-container">
                        <div class="simpleLens-big-image-container"><a data-lens-image="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${detail_product.image_link}" class="simpleLens-lens-image"><img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${detail_product.image_link}" class="simpleLens-big-image"></a></div>
                      </div>
                    
                    </div>
                  </div>
                </div>
                <!-- Modal view content -->

                <div class="col-md-7 col-sm-7 col-xs-12">
                  <div class="aa-product-view-content">
                    <h3>${detail_product.name }</h3>
                    <div class="aa-price-block">
                        <span class="aa-product-view-price"><b>${detail_product.price }</b> VNĐ</span>
                      <p class="aa-product-avilability">Tình trạng: <span>
                      	<c:choose>
			                        <c:when test="${detail_product.status == 1}"> 
			                        	<c:out value="Còn hàng"/>
			                       	</c:when>
			                       	<c:otherwise>
								        <c:out value="Hết hàng"/>
								    </c:otherwise>
		                       	</c:choose>
                      </span></p>
                    </div>
                    <p>${detail_product.description }</p>
                    <div class="aa-prod-quantity">
                      <form action="">
                        <select id="" name="">
                          <option selected="1" value="0">1</option>
                          <option value="1">2</option>
                          <option value="2">3</option>
                          <option value="3">4</option>
                          <option value="4">5</option>
                          <option value="5">6</option>
                        </select>
                      </form>
                      <p class="aa-prod-category">
                       <c:forEach items="${name_cate_of_product}" var="name_cate">
                        Danh mục: <a href="product.jsp">${name_cate.name }</a>
                        </c:forEach>
                      </p>
                    </div>
                    <div class="aa-prod-view-bottom">
                      <a class="aa-add-to-cart-btn" href="#">Thêm vào giỏ hàng</a>
                    </div>
                  </div>
                </div>
              </div>

            </div>
            <div class="aa-product-details-bottom">
              <ul class="nav nav-tabs aa-products-tab" id="myTab2">
                <li class="active"><a href="#description" data-toggle="tab" class="">Mô tả</a></li>
                <li><a href="#review" data-toggle="tab">Đánh giá</a></li>                
              </ul>

              <!-- Tab panes -->
              <div class="tab-content">
                <div class="tab-pane fade in active" id="description">
                  <p>${detail_product.content }</p>
                </div>
                <div class="tab-pane fade " id="review">
                 <div class="aa-product-review-area">
                   <h4>2 Đánh giá cho Quả óc chó</h4> 
                   <ul class="aa-review-nav">
                     <li>
                        <div class="media">
                          <div class="media-left">
                            <a href="#">
                              <img class="media-object" src="${url}/img/testimonial-img-3.jpg" alt="girl image">
                            </a>
                          </div>
                          <div class="media-body">
                            <h4 class="media-heading"><strong>Hangutan</strong> - <span>DEC 26, 2019</span></h4>
                            <div class="aa-product-rating">
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star-o"></span>
                            </div>
                            <p>Hàng tốt, giao hàng nhanh đóng gói cẩn thận. Sử dụng Ok!</p>
                          </div>
                        </div>
                      </li>
                      <li>
                        <div class="media">
                          <div class="media-left">
                            <a href="#">
                              <img class="media-object" src="${url}/img/testimonial-img-3.jpg" alt="girl image">
                            </a>
                          </div>
                          <div class="media-body">
                            <h4 class="media-heading"><strong>Thach</strong> - <span>Oct 5, 2019</span></h4>
                            <div class="aa-product-rating">
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star-o"></span>
                            </div>
                            <p>Cam kết hàng đúng với ảnh, sử dụng chất lượng!</p>
                          </div>
                        </div>
                      </li>
                   </ul>
                   <h4>Thêm đánh giá</h4>
                   <div class="aa-your-rating">
                     <p>Chấm điểm</p>
                     <a href="#"><span class="fa fa-star-o"></span></a>
                     <a href="#"><span class="fa fa-star-o"></span></a>
                     <a href="#"><span class="fa fa-star-o"></span></a>
                     <a href="#"><span class="fa fa-star-o"></span></a>
                     <a href="#"><span class="fa fa-star-o"></span></a>
                   </div>
                   <!-- review form -->
                   <form action="" class="aa-review-form">
                      <div class="form-group">
                        <label for="message">Đánh giá của bạn</label>
                        <textarea class="form-control" rows="3" id="message"></textarea>
                      </div>
                      <div class="form-group">
                        <label for="name">Tên</label>
                        <input type="text" class="form-control" id="name" placeholder="Name">
                      </div>  
                      <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" placeholder="example@gmail.com">
                      </div>

                      <button type="submit" class="btn btn-default aa-review-submit">Gửi</button>
                   </form>
                 </div>
                </div>            
              </div>
            </div>
            <!-- Related product -->
            <div class="aa-product-related-item">
              <h3>Sản phẩm liên quan</h3>
              <ul class="aa-product-catg aa-related-item-slider">
                <!-- start single product item -->
                <c:forEach items="${productById}" var="product">
	                <li>
	                  <figure>
	                    <a class="aa-product-img" href="${pageContext.request.contextPath}/view/client/product-detail?id=${product.id}"><img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}" alt=""></a>
	                    <a class="aa-add-card-btn"href="#"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
	                     <figcaption>
	                      <h4 class="aa-product-title"><a href="#">${product.name}</a></h4>
	                      <span class="aa-product-price"> ${product.price} VNĐ </span>
	                    </figcaption>
	                  </figure>                     
	                   <div class="aa-product-hvr-content">
	                    <a href="#" data-toggle="tooltip" data-placement="top" title="Yêu thích"><span class="fa fa-heart-o"></span></a>
	          
	                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Xem nhanh" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>                            
	                  </div>
	                  <!-- product badge -->
	                  <span class="aa-badge aa-sale">- ${product.discount}%</span>
	                </li>
                </c:forEach>
                 <!-- start single product item -->                                                                                   
              </ul>
              <!-- quick view modal -->                  
              <div class="modal fade" id="quick-view-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">                      
                    <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                      <div class="row">
                        <!-- Modal view slider -->
                        <div class="col-md-6 col-sm-6 col-xs-12">                              
                          <div class="aa-product-view-slider">                                
                            <div class="simpleLens-gallery-container" id="demo-1">
                              <div class="simpleLens-container">
                                  <div class="simpleLens-big-image-container">
                                      <a class="simpleLens-lens-image" data-lens-image="assets/img/view-slider/large/polo-shirt-1.png">
                                          <img src="${url}/img/view-slider/medium/polo-shirt-1.png" class="simpleLens-big-image">
                                      </a>
                                  </div>
                              </div>
                              <div class="simpleLens-thumbnails-container">
                                  <a href="#" class="simpleLens-thumbnail-wrapper"
                                     data-lens-image="assets/img/view-slider/large/polo-shirt-1.png"
                                     data-big-image="assets/img/view-slider/medium/polo-shirt-1.png">
                                      <img src="${url}/img/view-slider/thumbnail/polo-shirt-1.png">
                                  </a>                                    
                                  <a href="#" class="simpleLens-thumbnail-wrapper"
                                     data-lens-image="assets/img/view-slider/large/polo-shirt-3.png"
                                     data-big-image="assets/img/view-slider/medium/polo-shirt-3.png">
                                      <img src="${url}/img/view-slider/thumbnail/polo-shirt-3.png">
                                  </a>

                                  <a href="#" class="simpleLens-thumbnail-wrapper"
                                     data-lens-image="assets/img/view-slider/large/polo-shirt-4.png"
                                     data-big-image="assets/img/view-slider/medium/polo-shirt-4.png">
                                      <img src="${url}/img/view-slider/thumbnail/polo-shirt-4.png">
                                  </a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- Modal view content -->
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="aa-product-view-content">
                            <h3>T-Shirt</h3>
                            <div class="aa-price-block">
                              <span class="aa-product-view-price">$34.99</span>
                              <p class="aa-product-avilability">Avilability: <span>In stock</span></p>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis animi, veritatis quae repudiandae quod nulla porro quidem, itaque quis quaerat!</p>
                            <h4>Size</h4>
                            <div class="aa-prod-view-size">
                              <a href="#">S</a>
                              <a href="#">M</a>
                              <a href="#">L</a>
                              <a href="#">XL</a>
                            </div>
                            <div class="aa-prod-quantity">
                              <form action="">
                                <select name="" id="">
                                  <option value="0" selected="1">1</option>
                                  <option value="1">2</option>
                                  <option value="2">3</option>
                                  <option value="3">4</option>
                                  <option value="4">5</option>
                                  <option value="5">6</option>
                                </select>
                              </form>
                              <p class="aa-prod-category">
                                Category: <a href="#">Polo T-Shirt</a>
                              </p>
                            </div>
                            <div class="aa-prod-view-bottom">
                              <a href="#" class="aa-add-to-cart-btn"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                              <a href="#" class="aa-add-to-cart-btn">View Details</a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>                        
                  </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
              </div>
              <!-- / quick view modal -->   
            </div>  
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / product category -->
<!--  end content-->
  
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
 
  
