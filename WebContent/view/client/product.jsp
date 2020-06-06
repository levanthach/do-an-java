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
   <img src="${url}/img/fashion/fashion-header-bg-8.jpg" alt="fashion img">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Mặt hàng</h2>
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/view/client/home">Trang chủ</a></li>         
          <li class="active">Mặt hàng</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

  <!-- product category -->
  <section id="aa-product-category">
    <div class="container">
      <div class="row">
        <div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
          <div class="aa-product-catg-content">
            <div class="aa-product-catg-head">
              <div class="aa-product-catg-head-left">
                <form action="" class="aa-sort-form">
                  <label for="">Sắp xếp theo</label>
                  <select name="">
                    <option value="1" selected="Default">Mặc định</option>
                    <option value="2">Tên</option>
                    <option value="3">Giá cả</option>
                    <option value="4">Ngày tháng</option>
                  </select>
                </form>
                <form action="" class="aa-show-form">
                  <label for="">Hiển thị</label>
                  <select name="">
                    <option value="1" selected="12">12</option>
                    <option value="2">24</option>
                    <option value="3">36</option>
                  </select>
                </form>
              </div>
              <div class="aa-product-catg-head-right">
                <a id="grid-catg" href="#"><span class="fa fa-th"></span></a>
              </div>
            </div>
            <div class="aa-product-catg-body">
              <ul class="aa-product-catg">
                <!-- start single product item -->
                <c:if test="${empty productlist}">
                 	<p style="margin-left: 30px">Chưa có sản phẩm!</p>
                 </c:if>
                <c:forEach items="${productlist}" var="product">
	                <li>
	                  <figure>
	                    <a class="aa-product-img" href="#"><img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}" alt="${product.name}"></a>
	                    <a class="aa-add-card-btn"href="#"><span class="fa fa-shopping-cart"></span>Thêm vào giỏ hàng</a>
	                    <figcaption>
	                      <h4 class="aa-product-title"><a href="#">${product.name}</a></h4>
	                      <span class="aa-product-price">${product.price} <u>VNĐ</u></span><span class="aa-product-price"></span>
	                    
	                    </figcaption>
	                  </figure>                         
	                  <div class="aa-product-hvr-content">
	                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
	          
	                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>                            
	                  </div>
	                  <!-- product badge -->
	                  <span class="aa-badge aa-sale" href="#">- ${product.discount}%</span>
	                </li>
                </c:forEach>                                       
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
                                      <a class="simpleLens-lens-image" data-lens-image="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}">
                                          <img src="${pageContext.request.contextPath}/view/client/assets/images/products/img-test/${product.image_link}" class="simpleLens-big-image">
                                      </a>
                                  </div>
                              </div>

                            </div>
                          </div>
                        </div>
                        <!-- Modal view content -->
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <div class="aa-product-view-content">
                            <h3>${product.name}</h3>
                            <div class="aa-price-block">
                              <span class="aa-product-view-price">${product.price}</span>
                              <p class="aa-product-avilability">Tình trạng: <span>
                                 <c:choose>
			                        <c:when test="${product.status == 1}"> 
			                        	<c:out value="Còn hàng"/>
			                       	</c:when>
			                       	<c:otherwise>
								        <c:out value="Hết hàng"/>
								    </c:otherwise>
		                       	</c:choose>
                              
                              </span></p>
                            </div>
                            <p>${product.content}</p>
                           
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
                                Chuyên mục: <a href="#">Polo T-Shirt</a>
                              </p>
                            </div>
                            <div class="aa-prod-view-bottom">
                              <a href="#" class="aa-add-to-cart-btn"><span class="fa fa-shopping-cart"></span>THÊM GIỎ HÀNG</a>
                              <a href="#" class="aa-add-to-cart-btn">Chi tiết</a>
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
            <div class="aa-product-catg-pagination">
              <nav>
                <ul class="pagination">
                  <li>
                    <a href="#" aria-label="Previous">
                      <span aria-hidden="true">&laquo;</span>
                    </a>
                  </li>
                  <li><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li>
                    <a href="#" aria-label="Next">
                      <span aria-hidden="true">&raquo;</span>
                    </a>
                  </li>
                </ul>
              </nav>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
          <aside class="aa-sidebar">
            <!-- single sidebar -->
            <div class="aa-sidebar-widget">
              <h3>Danh mục</h3>
              <ul class="aa-catg-nav">
              <c:forEach items="${catelist}" var="cate">
              	<li><a href="${pageContext.request.contextPath}/view/client/product-id?id=${cate.id}">${cate.name}</a></li>
              </c:forEach>                
              </ul>
            </div>
            <!-- single sidebar -->
            <div class="aa-sidebar-widget">
              <h3>Thẻ</h3>
              <div class="tag-cloud">
                <a href="product-detail.jsp">Quả óc chó</a>
                <a href="#">Tinh dầu</a>
                <a href="#">Mật ong</a>
                <a href="#">Rau cải</a>
                <a href="#">Mật ong rừng</a>
                <a href="#">Tinh dầu bưởi</a>
              </div>
            </div>

            <!-- single sidebar -->
            <div class="aa-sidebar-widget">
              <h3>Lượt xem gần đây</h3>
              <div class="aa-recently-views">
                <ul>
                  <li>
                    <a href="product-detail.jsp" class="aa-cartbox-img"><img alt="img" src="${url}/img/woman-small-2.jpg"></a>
                    <div class="aa-cartbox-info">
                      <h4><a href="product-detail.jsp">Quả óc chó</a></h4>
                      <p>1 x 550.000<sup><u>đ</u></sup></p>
                    </div>                    
                  </li>
                  <li>
                    <a href="#" class="aa-cartbox-img"><img alt="img" src="${url}/img/woman-small-1.jpg"></a>
                    <div class="aa-cartbox-info">
                      <h4><a href="#">Tinh dầu</a></h4>
                      <p>1 x 300.000<sup><u>đ</u></sup></p>
                    </div>                    
                  </li>
                   <li>
                    <a href="#" class="aa-cartbox-img"><img alt="img" src="${url}/img/woman-small-2.jpg"></a>
                    <div class="aa-cartbox-info">
                      <h4><a href="#">Quả óc chó</a></h4>
                      <p>1 x 550.000<sup><u>đ</u></sup></p>
                    </div>                    
                  </li>                                      
                </ul>
              </div>                            
            </div>
            <!-- single sidebar -->
            <div class="aa-sidebar-widget">
              <h3>Mặt hàng xếp hạng cao</h3>
              <div class="aa-recently-views">
                <ul>
                  <li>
                    <a href="#" class="aa-cartbox-img"><img alt="img" src="${url}/img/woman-small-2.jpg"></a>
                    <div class="aa-cartbox-info">
                      <h4><a href="#">Quả óc chó</a></h4>
                      <p>1 x 550.000<sup><u>đ</u></sup></p>
                    </div>                    
                  </li>
                  <li>
                    <a href="#" class="aa-cartbox-img"><img alt="img" src="${url}/img/woman-small-1.jpg"></a>
                    <div class="aa-cartbox-info">
                      <h4><a href="#">Tinh dầu</a></h4>
                      <p>1 x 300.000<sup><u>đ</u></sup></p>
                    </div>                    
                  </li>
                   <li>
                    <a href="#" class="aa-cartbox-img"><img alt="img" src="${url}/img/woman-small-2.jpg"></a>
                    <div class="aa-cartbox-info">
                      <h4><a href="#">Quả óc chó</a></h4>
                      <p>1 x 550.000<sup><u>đ</u></sup></p>
                    </div>                    
                  </li>                                      
                </ul>
              </div>                            
            </div>
          </aside>
        </div>
       
      </div>
    </div>
  </section>
  <!-- / product category -->
<!--  end content-->
  
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
 

  
