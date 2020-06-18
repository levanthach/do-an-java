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
   <img src="${pageContext.request.contextPath}/view/client/assets/images/blog-banner.png" alt="banner blog">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Chi tiết bài viết</h2>
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>
          <li style="color:#fff">Bài viết</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

  <!-- Blog Archive -->
  <section id="aa-blog-archive">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-blog-archive-area">
            <div class="row">
              <div class="col-md-9">
                <!-- Blog details -->
                <div class="aa-blog-content aa-blog-details">
                  <article class="aa-blog-content-single">                        
                    <h2><a href="#">${boardnew.title}</a></h2>
                     <div class="aa-article-bottom">
                      <div class="aa-post-author">
                        Đăng bởi <a href="#">${boardnew.author}</a>
                      </div>
                      <div class="aa-post-date">${boardnew.created}</div>
                    </div>
                    <figure class="aa-blog-img">
                      <a href="#"><img src="${pageContext.request.contextPath}/view/client/assets/images/news/${boardnew.image_link}" alt="fashion img"></a>
                    </figure>
                    <p>${boardnew.content}</p>
                    <div class="blog-single-bottom">
                      <div class="row">
                        <div class="col-md-8 col-sm-6 col-xs-12">
                          <div class="blog-single-tag">
                            <span>Tags:</span>
                            <a href="#">Nông sản,</a>
                            <a href="#">Định nghĩa,</a>
                            <a href="#">Tầm quan trọng</a>
                          </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-xs-12">
                          <div class="blog-single-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                          </div>
                        </div>
                      </div>
                    </div>
                   
                  </article>
                  <!-- blog navigation -->
                  <div class="aa-blog-navigation">
                    <a class="aa-blog-prev" href="#"><span class="fa fa-arrow-left"></span>Bài đăng trước</a>
                    <a class="aa-blog-next" href="#">Bài đăng tiếp theo<span class="fa fa-arrow-right"></span></a>
                  </div>
                  <!-- Blog Comment threats -->
                  <div class="aa-blog-comment-threat">
                    <h3>Bình luận</h3>
                    <div class="comments">
                      <ul class="commentlist">
                        <li>
                          <div class="media">
                            <div class="media-left">    
                                <img  src="${url}/img/fashion/pp.jpg" alt="img" width="100" height="100">
                            </div>
                            <div class="media-body">
                             <h4 class="author-name">Maria</h4>
                             <span class="comments-date"> May 9th 2020</span>
                             <p>Cám ơn tác giả vì bài viết bổ ích</p>
                             <a href="#" class="reply-btn">Trả lời</a>
                            </div>
                          </div>
                        </li>
                        <li>
                          <div class="media">
                            <div class="media-left">    
                                <img  src="${url}/img/fashion/pp.jpg" alt="img" width="100" height="100">
                            </div>
                            <div class="media-body">
                             <h4 class="author-name">Otoke</h4>
                             <span class="comments-date"> May 9th 2020</span>
                             <p>Một bài đánh giá có chiều sâu và chi tiết. Nội dung rất đầy đủ và bổ ích :)))) </p>
                             <a href="#" class="reply-btn">Trả lời</a>
                            </div>
                          </div>
                        </li>
                        <ul class="children">
                          <li class="author-comments">
                            <div class="media">
                              <div class="media-left">    
                                  <img  src="${url}/img/fashion/pp1.jpg" alt="img" width="100" height="100">
                              </div>
                              <div class="media-body">
                               <h4 class="author-name">Admin</h4>
                               <span class="comments-date"> May 9th 2020</span>
                               <span class="author-tag">Author</span>
                               <p>Cám ơn vì đã theo dõi bài viết. Hứa hẹn sẽ còn nhiều bài đăng khác cực kì bổ ích đang chờ....</p>
                               <a href="#" class="reply-btn">Trả lời</a>
                              </div>
                            </div>
                          </li>
                    </div>
                    <div class="aa-blog-archive-pagination">
                      <nav>
                        <ul class="pagination">
                          <li>
                            <a href="#" aria-label="Previous">
                              <span aria-hidden="true">«</span>
                            </a>
                          </li>
                          <li><a href="#">1</a></li>
                          <li><a href="#">2</a></li>
                          <li><a href="#">3</a></li>
                          <li><a href="#">4</a></li>
                          <li><a href="#">5</a></li>
                          <li>
                            <a href="#" aria-label="Next">
                              <span aria-hidden="true">»</span>
                            </a>
                          </li>
                        </ul>
                      </nav>
                    </div>
                  </div>
                </div>
              </div>
              <!-- blog sidebar -->
              <div class="col-md-3">
                <aside class="aa-blog-sidebar">
                  <div class="aa-sidebar-widget">
                    <h3>Tags</h3>
                    <div class="tag-cloud">
                      <a href="#">Nông sản</a>
                      <a href="#">Hàng hóa</a>
                      <a href="#">Cửa hàng</a>
                      <a href="#">Nông nghiệp</a>
                      <a href="#">Thương mại hóa</a>
                    </div>
                  </div>
                  <div class="aa-sidebar-widget">
                    <h3>Bài đăng gần đây</h3>
                    <div class="aa-recently-views">
                      <ul>
                   <c:forEach items="${boardnewlist}" var="boardnew" end="2">
                        <li>
                          <a class="aa-cartbox-img" href="${pageContext.request.contextPath}/view/client/news-list-detail?id=${boardnew.id}"><img src="${pageContext.request.contextPath}/view/client/assets/images/news/${boardnew.image_link}" alt="img bài viết"></a>
                          <div class="aa-cartbox-info">
                            <h4><a href="${pageContext.request.contextPath}/view/client/news-list-detail?id=${boardnew.id}"><b>${boardnew.title }</b></a></h4>
                            <p>${boardnew.created }</p>
                          </div>                    
                        </li>
                        </c:forEach>
                      </ul>
                    </div>                            
                  </div>
                </aside>
              </div>
            </div>           
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Blog Archive -->
<!--  end content-->
  
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
 
  
