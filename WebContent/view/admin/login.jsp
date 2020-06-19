<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value ="/view/admin/assets" var="url"/>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>Admin web nông sản</title>
  <!-- loader-->
  <link href="${url}/css/pace.min.css" rel="stylesheet"/>
  <script src="${url}/js/pace.min.js"></script>
  <!--favicon-->
  <link rel="icon" href="${url}/images/favicon.ico" type="image/x-icon">
  <!-- Bootstrap core CSS-->
  <link href="${url}/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="${url}/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="${url}/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Custom Style-->
  <link href="${url}/css/app-style.css" rel="stylesheet"/>
  <script src="${url}/js/jquery.min.js"></script>
  <script src="${url}/js/popper.min.js"></script>
  <script src="${url}/js/bootstrap.min.js"></script>
  <script src="${url}/plugins/simplebar/js/simplebar.js"></script>
  <script src="${url}/js/sidebar-menu.js"></script>
  <script src="${url}/js/app-script.js"></script>
  
</head>

<body class="bg-theme bg-theme1">

<!-- start loader -->
   <div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
   <!-- end loader -->

<!-- Start wrapper-->
 <div id="wrapper">

 <div class="loader-wrapper"><div class="lds-ring"><div></div><div></div><div></div><div></div></div></div>
	<div class="card card-authentication1 mx-auto my-5">
		<div class="card-body">
		 <div class="card-content p-2">
		 	<div class="text-center">
		 		<img src="${url}/images/logo-icon.png" alt="logo icon">
		 	</div>
		  <div class="card-title text-uppercase text-center py-3">Đăng nhập</div>
		    <form action="${pageContext.request.contextPath}/admin/login"  method="post">
			  <div class="form-group">
			  <label for="exampleInputUsername" class="sr-only">Username</label>
			   <div class="position-relative has-icon-right">
				  <input type="text" id="exampleInputUsername" class="form-control input-shadow" placeholder="Username" name="admin-username" required>
				  <div class="form-control-position">
					  <i class="icon-user"></i>
				  </div>
			   </div>
			  </div>
			  <div class="form-group">
			  <label for="exampleInputPassword" class="sr-only">Password</label>
			   <div class="position-relative has-icon-right">
				  <input type="password" id="exampleInputPassword" class="form-control input-shadow" placeholder="Password" name="admin-password" required>
				  <div class="form-control-position">
					  <i class="icon-lock"></i>
				  </div>
			   </div>
			  </div>
			  <div><b> <span style="color:#00d9e8"> ${errorMessage}</span></b></div>
			<div class="form-row">
			 <div class="form-group col-6">
			   <div class="icheck-material-white">
                <input type="checkbox" id="user-checkbox" />
                <label for="user-checkbox">Ghi nhớ</label>
			  </div>
			 </div>
			</div>
			 <button type="submit" class="btn btn-light btn-block">Đăng nhập</button>
			 </form>
		   </div>
		  </div>
		
	     </div>
    
     <!--Start Back To Top Button-->
  
  </div>
</body>
</html>
