<%-- 
    Document   : index
    Created on : Aug 10, 2017, 6:16:07 AM
    Author     : Sanu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
        <title>Company</title>
        <link rel="icon" type="image/png" href="resources/icon/fav-ico.png">
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap-theme.css">
        <link rel="stylesheet" type="text/css" href="resources/css/font-awesome.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/style1-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style2-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style3-sanu.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/style4-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/mywall.css" >                  
        <link href="https://fonts.googleapis.com/css?family=Encode+Sans" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="resources/css/alertify.core.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/alertify.default.css">
    </head>
    <%
        if (!session.isNew() && session.getAttribute("cuser") != null) {
        } else {
            response.sendRedirect("index.htm");
        }
    %>
    <body style="background-color: rgba(240, 240, 240, 0.96)">
        <div id="wrapper" class="active">    <!--1st div-->        
            <div class="">
                <%@include file="sidebar.jsp" %>
            </div>
            <!--side bar end-->

            <!--Page content  .this is the page header-->
            <div id="page-content-wrapper">    <!--2nd div-->
                <div class="page-content inset"> <!--3rd div-->
                    <%@include file="header.jsp" %>
                    <div class="row"> <!--main row of contect-sanu-->
                        <div class="col-md-12">
                            <div class="main" id="cds" style="margin-top: 60px; z-index: 2">

                                <!--Company-->
                                <div class="Company" style="display: block">
                                    <div class="page-content-wrapper">
                                        <div class="page-content inset">
                                            <div class="row ">
                                                <!--///////////-->

                                                <div class='carousel'>
                                                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                                        <!-- Indicators -->
                                                        <ol class="carousel-indicators">
                                                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                                        </ol>
                                                        <!-- Wrapper for slides -->
                                                        <div class="carousel-inner text-center" role="listbox" >
                                                            <div class="item active">
                                                                <div class="col-lg-8 pull-right">
                                                                    <img src="resources/profile/wallAvatar.jpg" class="img-responsive">
                                                                </div>
                                                                <div class="col-lg-4" style="background-color: rgba(237, 2, 2, 0.47);color: white">                            
                                                                    <h2>UNBEATABLE REACH<br>
                                                                        <small style="color: white">Best Traffic For You Company</small></h2>
                                                                    <p style="height: 210px;margin-top: 95px">
                                                                        Get access to the world’s largest professional network, 
                                                                        where 85% of our 500+ million members are open to new opportunities,
                                                                        seven if they aren’t looking on job boards. The main target was to
                                                                        reduces the distance between you and your job occasions
                                                                    </p>                                                                 
                                                                </div>
                                                            </div>
                                                            <div class="item">                    
                                                                <div class="col-lg-8 pull-right">
                                                                    <img src="resources/profile/wallAvatar.jpg" class="img-responsive">
                                                                </div>
                                                                <div class="col-lg-4" style="background-color: rgba(237, 2, 2, 0.47);color: white">                            
                                                                    <h2>JOB CANDIDATES<br>
                                                                        <small style="color: white">Easiest Way To Add A Job</small></h2>
                                                                    <p style="height: 210px;margin-top: 95px">
                                                                        We’ll automatically target your job post to qualified professionals
                                                                        who match the skills and experience you’re looking for - both in emails and across LinkedIn.                           
                                                                    </p>    
                                                                </div>                    
                                                            </div> 
                                                            <div class="item">                    
                                                                <div class="col-lg-8 pull-right">
                                                                    <img src="resources/profile/wallAvatar.jpg" class="img-responsive">
                                                                </div>
                                                                <div class="col-lg-4" style="background-color: rgba(237, 2, 2, 0.47);color: white">                            
                                                                    <h2>PAY FOR RESULT<br>
                                                                        <small style="color: white">Help to improve us more.</small></h2>
                                                                    <p style="height: 210px;margin-top: 95px">
                                                                        You now only pay when candidates view your job post; tell us how much you want to spend and we will give you an estimate of how many applicants you can expect to receive. Whether you have a tight budget or want to get more applicants for a priority role, LinkedIn jobs can meet your needs.
                                                                    </p>       
                                                                </div>                    
                                                            </div> 
                                                        </div>
                                                        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                                            <span class="sr-only">Previous</span>
                                                        </a>
                                                        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                                            <span class="sr-only">Next</span>
                                                        </a>
                                                    </div>
                                                </div>

                                                <!--////-->
                                                <div class="dfg-sanu">
                                                    <section class="publicaciones-blog-home">

                                                        <div class="new-box1">
                                                            <h2 class="sfg1">Your <b>Companies</b></h2>
                                                            <div class="row-page row">
                                                                <div id="mycom">
                                                                    <div class="col-page col-sm-8 col-md-6">
                                                                        <a href="" class="black fondo-publicacion-home">
                                                                            <div class="img-publicacion-principal-home">
                                                                                <img class="" src="https://placeholdit.imgix.net/~text?txtsize=34&txt=&w=500&h=300">
                                                                            </div>
                                                                            <div class="contenido-publicacion-principal-home">
                                                                                <h3>Add Your Company Here For Get More Traffic "My-Ratings"</h3>
                                                                                <p>This is your only chance to promote your own business easily and freely..<span>...</span></p>
                                                                            </div>
                                                                            <div class="mascara-enlace-blog-home">
                                                                                <span>View </span>
                                                                            </div>
                                                                        </a>
                                                                    </div>
                                                                    <div class="col-page col-sm-4 col-md-3">
                                                                        <a href=""  class="fondo-publicacion-home">
                                                                            <div class="img-publicacion-home">
                                                                                <img class="img-responsive" src="https://placeholdit.imgix.net/~text?txtsize=34&txt=&w=500&h=300">
                                                                            </div>
                                                                            <div class="contenido-publicacion-home">
                                                                                <h3>Neque porro quisquam est qui dolorem ipsum</h3>
                                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed placerat porta ex, sed ullamcorper ipsum lacinia nec.<span>...</span></p>
                                                                            </div>
                                                                            <div class="mascara-enlace-blog-home">
                                                                                <span>View </span>
                                                                            </div>
                                                                        </a>
                                                                    </div>
                                                                    <div class="col-page col-sm-4 col-md-3">
                                                                        <a href="" class="fondo-publicacion-home">
                                                                            <div class="img-publicacion-home">
                                                                                <img class="img-responsive" src="https://placeholdit.imgix.net/~text?txtsize=34&txt=&w=500&h=300">
                                                                            </div>
                                                                            <div class="contenido-publicacion-home">
                                                                                <h3>Neque porro quisquam est qui dolorem ipsum</h3>
                                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed placerat porta ex, sed ullamcorper ipsum lacinia nec.<span>...</span></p>
                                                                            </div>
                                                                            <div class="mascara-enlace-blog-home">
                                                                                <span>View </span>
                                                                            </div>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="new-box2">
                                                            <h2 class="sfg" style="">Companies <b>in your network</b></h2>
                                                            <div class="row-page row">
                                                                <div id="mclo">
                                                                    <div class="col-page col-sm-4 col-md-3">
                                                                        <a href="" class="fondo-publicacion-home">
                                                                            <div class="img-publicacion-home">
                                                                                <img class="img-responsive" src="https://placeholdit.imgix.net/~text?txtsize=34&txt=&w=500&h=300">
                                                                            </div>
                                                                            <div class="contenido-publicacion-home">
                                                                                <h3>Company Name</h3>
                                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed placerat porta ex, sed ullamcorper ipsum lacinia nec.<span>...</span></p>
                                                                            </div>
                                                                            <div class="mascara-enlace-blog-home">
                                                                                <span>View </span>
                                                                            </div>
                                                                        </a>
                                                                    </div>

                                                                    <div class="hidden-sm col-page col-sm-4 col-md-3">
                                                                        <a href="" class="fondo-publicacion-home">
                                                                            <div class="img-publicacion-home">
                                                                                <img class="img-responsive" src="https://placeholdit.imgix.net/~text?txtsize=34&txt=&w=500&h=300">
                                                                            </div>
                                                                            <div class="contenido-publicacion-home">
                                                                                <h3>Company Name</h3>
                                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed placerat porta ex, sed ullamcorper ipsum lacinia nec.<span>...</span></p>
                                                                            </div>
                                                                            <div class="mascara-enlace-blog-home">
                                                                                <span>View </span>
                                                                            </div>
                                                                        </a>
                                                                    </div>
                                                                    <div class="hidden-sm col-page col-sm-4 col-md-3">
                                                                        <a href="" class="fondo-publicacion-home">
                                                                            <div class="img-publicacion-home">
                                                                                <img class="img-responsive" src="https://placeholdit.imgix.net/~text?txtsize=34&txt=&w=500&h=300">
                                                                            </div>
                                                                            <div class="contenido-publicacion-home">
                                                                                <h3>Company Name</h3>
                                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed placerat porta ex, sed ullamcorper ipsum lacinia nec.<span>...</span></p>
                                                                            </div>
                                                                            <div class="mascara-enlace-blog-home">
                                                                                <span>View </span>
                                                                            </div>
                                                                        </a>
                                                                    </div>
                                                                    <div class="col-page col-sm-4 col-md-3">
                                                                        <a href="#" class="todas-las-publicaciones-home">
                                                                            <span>Adds Area</span>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <ul id="pagination-demo" class="pagination-sm"></ul>
                                                            </div>
                                                        </div>
                                                    </section>                                                                                                                                                        
                                                </div>
                                                <!--////////////-->
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- Company main tag end-->
                            </div>  <!-- end of main main of content-->
                        </div> <!-- end of main column of content-->
                    </div> <!-- end of main row of content-->
                </div> <!--3nd div-->
            </div>  <!--2nd div-->
        </div><!-- end of  div 1-->

        <!--/////////////////////-->
        <script type="text/javascript" src="resources/js/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap.js"></script>
        <script type="text/javascript" src="resources/js/alertify.js"></script>
        <script type="text/javascript" src="resources/js/script1-sanu.js"></script>
        <script type="text/javascript" src="resources/ajax/jquery.twbsPagination.min.js"></script>
        <script type="text/javascript" src="resources/js/script2-sanu.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-post.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-comp.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-refresh.js"></script>
        <script type="text/javascript" src="resources/js/websocket.js"></script>
    </body>
</html>
