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
                    
                  </article>
                </div>
              </div>
              <!-- blog sidebar -->
              <div class="col-md-3">
                <aside class="aa-blog-sidebar">

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
 
  
