<%-- 
    Document   : mainHeader
    Created on : May 5, 2020, 11:51:44 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Web Nông Sản</title>
    
    <!-- Font awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css"
          integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V" crossorigin="anonymous">
    <link href="./assets/css/font-awesome.css" rel="stylesheet">
    
    <!-- Bootstrap -->
    <link href="./assets/css/bootstrap.css" rel="stylesheet">   
    <!-- SmartMenus jQuery Bootstrap Addon CSS -->
    <link href="./assets/css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
    <!-- Product view slider -->
    <link rel="stylesheet" type="text/css" href="./assets/css/jquery.simpleLens.css">    
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="./assets/css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="./assets/css/nouislider.css">
    <!-- Theme color -->
    <link id="switcher" href="./assets/css/theme-color/default-theme.css" rel="stylesheet">
    <!-- <link id="switcher" href="./assets/css/theme-color/bridge-theme.css" rel="stylesheet"> -->
    <!-- Top Slider CSS -->
    <link href="./assets/css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

    <!-- Main style sheet -->
    <link href="./assets/css/style.css" rel="stylesheet">    

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  
  </head>
    <body>
        
          <header id="aa-header">
            <jsp:include page = "topHeader.jsp" flush = "true" />
          <!-- start header bottom  -->
             <jsp:include page = "bottomHeader.jsp" flush = "true" />
          <!-- / header bottom  -->
        </header>
          
        <!-- menu -->
        <jsp:include page = "menu.jsp" flush = "true" />
        <!-- / menu -->
        
          
        <!-- wpf loader Two -->
          <div id="wpf-loader-two">          
            <div class="wpf-loader-two-inner">
              <span>Loading</span>
            </div>
          </div> 
          <!-- / wpf loader Two -->       
        <!-- SCROLL TOP BUTTON -->
          <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
        <!-- END SCROLL TOP BUTTON -->
