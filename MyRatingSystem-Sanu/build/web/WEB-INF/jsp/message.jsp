<%-- 
    Document   : index
    Created on : Aug 10, 2017, 6:16:07 AM
    Author     : Sanu
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
        <title>Messages</title>
        <link rel="icon" type="image/png" href="resources/icon/fav-ico.png">
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap-theme.css">
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" >
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
        <div id="wrapper" class="active" style="min-height: 645px">    <!--1st div-->        
            <div class="">
                <%@include file="sidebar.jsp" %>
            </div>
            <!--side bar end-->

            <!--Page content  .this is the page header-->
            <div id="page-content-wrapper">    <!--2nd div-->
                <div class="page-content inset"> <!--3rd div-->
                    <!--..-->
                    <%@include file="header.jsp" %>

                    <div class="row"> <!--main row of contect-sanu-->
                        <div class="col-md-12">
                            <div class="main" id="cds" style="margin-top: 70px;">                                
                                <!--Messaging-->
                                <div class="Message" style="display: block">
                                    <div class="page-content-wrapper">
                                        <div class="page-content inset">
                                            <div class="container-fluid main_section">
                                                <div class="row" style="margin-top: -25px;z-index: 2">
                                                    <div class=" app">
                                                        <div class="row app-one">

                                                            <div class="col-sm-4 side">
                                                                <div class="side-one">
                                                                    <!-- Heading -->
                                                                    <div class="row heading">
                                                                        <div class="col-sm-2 col-xs-2 heading-avatar">
                                                                            <div class="heading-avatar-icon">
                                                                                <img src="resources/profile/${cuser.cf}">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6 col-xs-6 heading-avatar">
                                                                            <h4 class="pull-left mnm">${cuser.firstName} ${cuser.lastName}</h4><br>
                                                                            <p class="pull-left" style="font-size: 10px;margin: 0px 0 0 -4px;; color: white;">${cuser.possition}</p>
                                                                        </div>
                                                                        <div class="col-sm-1 col-xs-1  heading-dot  pull-right">
                                                                            <i class="fa fa-ellipsis-v fa-2x  pull-right" aria-hidden="true"></i>
                                                                        </div>
                                                                        <div class="col-sm-2 col-xs-2 heading-compose  pull-right">
                                                                            <i class="fa fa-comments fa-2x  pull-right" aria-hidden="true"></i>
                                                                        </div>
                                                                    </div>
                                                                    <!-- Heading End -->

                                                                    <!-- SearchBox -->
                                                                    <div class="row searchBox">
                                                                        <div class="col-sm-12 searchBox-inner">
                                                                            <form method="post" id="jhg">
                                                                                <div class="form-group has-feedback">
                                                                                    <input id="searchTextw" type="text" class="form-control" name="search-text" placeholder="Search">
                                                                                    <span class="glyphicon glyphicon-search form-control-feedback"></span>
                                                                                </div>
                                                                            </form>
                                                                        </div>

                                                                    </div>
                                                                    <ul style="display: none" id="mesSe">

                                                                    </ul>

                                                                    <!-- Search Box End -->
                                                                    <!-- sideBar -->
                                                                    <div class="row sideBar" id="messageLoad"> </div>
                                                                    <!-- Sidebar End -->
                                                                </div>

                                                                <!-- Sidebar End -->
                                                            </div>


                                                            <!-- New Message Sidebar End -->

                                                            <!-- Conversation man name Start -->
                                                            <div class="col-sm-8 conversation">
                                                                <!-- Heading -->
                                                                <div class="row heading">
                                                                    <div class="col-sm-2 col-md-1 col-xs-3 heading-avatar">
                                                                        <div class="heading-avatar-icon">
                                                                            <div id="mesUser">

                                                                            </div>                                                                       
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-8 col-xs-7 heading-name">
                                                                        <div id="meName"></div>                                                                   
                                                                    </div>
                                                                    <div class="col-sm-1 col-xs-1  heading-dot pull-right">
                                                                        <i class="fa fa-ellipsis-v fa-2x  pull-right" aria-hidden="true"></i>
                                                                    </div>
                                                                </div>
                                                                <!-- Heading End -->

                                                                <!-- Message Box -->
                                                                <div class="row message" id="conversation">
                                                                    <div class="row message-body" id="messageAre" style="margin-top: 50px"> 

                                                                    </div>
                                                                </div>
                                                                <!-- Message Box End -->

                                                                <!-- Reply Box -->
                                                                <div class="row reply">
                                                                    <form method="post" id="messageF">
                                                                        <input type="hidden" value="amo" class="prueba"/>
                                                                        <div class="col-sm-1 col-xs-1 reply-emojis">
                                                                            <i class="fa fa-smile-o fa-2x"></i>
                                                                        </div>
                                                                        <div id="reId"></div>
                                                                        <div class="col-sm-9 col-xs-9 reply-main">
                                                                            <textarea class="form-control" name="userMesss" rows="1" id="commentf"></textarea>
                                                                        </div>
                                                                        <div class="col-sm-1 col-xs-1 reply-recording">
                                                                            <i class="fa fa-microphone fa-2x" aria-hidden="true"></i>
                                                                        </div>
                                                                        <div  class="col-sm-1 col-xs-1 reply-send">
                                                                            <i id="msendbtn" class="fa fa-send fa-2x" aria-hidden="true"></i>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                                <!-- Reply Box End -->
                                                            </div>
                                                            <!-- Conversation End -->
                                                        </div>
                                                        <!-- App One End -->
                                                    </div>

                                                </div> <!--end -->
                                            </div>
                                        </div>
                                    </div>
                                </div> <!--Messaging end-->

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
        <script type="text/javascript" src="resources/js/script2-sanu.js"></script>
        <script type="text/javascript" src="resources/js/script4-sanu.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-post.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-message.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-refresh.js"></script>
        <script type="text/javascript" src="resources/js/websocket.js"></script>
    </body>
</html>
