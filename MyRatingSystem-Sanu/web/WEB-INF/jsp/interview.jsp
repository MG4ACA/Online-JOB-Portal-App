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
        <title>Interview</title>
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
                            <div class="main" id="cds" style="margin-top: 70px; z-index: 2">

                                <!--Interview-->
                                <div class="Interview" style="display: block">
                                    <div class="page-content-wrapper">
                                        <div class="page-content inset">
                                            <div class="dfg-sanu">
                                                <div class="row">
                                                    <!--////////////////////-->
                                                    <div class="col-md-6 col-sm-12">                                                                                                         
                                                        <div class="row">
                                                            <div class="col-md-8">
                                                                <!--<canvas  id="kjk" class="abcd"></canvas>-->
                                                                <iframe scrolling="no" class="abcd" id="calll" src="https://appr.tc"></iframe>
                                                                <!--                                                                <video id="kjk" class="abcd"  autoplay="true"></video>
                                                                                                                                <video id="video_call" class="abcd2" style="height: 130px;margin-top: -100px;width: 130px;margin-left: 409px;;"  autoplay="autoplay"></video>-->

                                                            </div>                                                            
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12" style="margin-top: -60px">
                                                                <ul class="social-network social-circle">
                                                                    <li><a  class="icoFacebook" id="startButton" title="Facebook"><i class="fa fa-video-camera"></i></a></li>
                                                                    <li><a  class="icoTwitter" title="Twitter"><i class="fa fa-comment"></i></a></li>
                                                                    <li><a   id="callButton" class="icoGoogle" title="Google +"><i class="fa fa fa-phone"></i></a></li>
                                                                    <li><a  class="icoInstagram" title="Instagram"><i class="fa fa-microphone"></i></a></li>
                                                                    <li><a  id="hangupButton" class="icoYelp" title="Yelp"><i class="fa fa-tty"></i></a></li>
                                                                </ul>				
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 col-sm-12">
                                                        <div class="page-header" style="margin-top: -3px;">
                                                        </div>
                                                        <div class="comment-tabs">
                                                            <ul class="nav nav-tabs" role="tablist">
                                                                <li class="active"><a href="#comments-logout" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Chats</h4></a></li>
                                                                <li class=""><a href="#add-comment" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">My Invitation</h4></a></li>
                                                                <li><a href="#account-settings" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Other Invitations</h4></a></li>
                                                            </ul>            
                                                            <div class="tab-content">
                                                                <div class="tab-pane active" id="comments-logout">  
                                                                    <div class="row" style="margin-top: -20px;height: 300px;overflow-x: auto">
                                                                        <ul class="media-list">
                                                                            <li class="media">
                                                                                <a class="pull-left" >
                                                                                    <img class="media-object img-circle" src="resources/profile/pavatar.png" alt="profile">
                                                                                </a>
                                                                                <div class="media-body">
                                                                                    <div class="well well-lg">
                                                                                        <h4 class="media-heading text-uppercase reviews">Test </h4>
                                                                                        <ul class="media-date text-uppercase reviews list-inline">
                                                                                            <li class="dd">22</li>
                                                                                            <li class="mm">09</li>
                                                                                            <li class="aaaa">2014</li>
                                                                                        </ul>
                                                                                        <p class="media-comment">
                                                                                            My-Ratings-Test Message One
                                                                                        </p>                       
                                                                                    </div>              
                                                                                </div>                                                                            
                                                                            </li>          



                                                                        </ul> 
                                                                    </div>
                                                                    <div class="row">                                                                        
                                                                        <form action="#" method="post" class="form-horizontal" id="commentForm" role="form">                                                                   
                                                                            <div class="form-group">                                                                                
                                                                                <div class="input-group">
                                                                                    <textarea type="text" class="form-control" name="uploadMedia" id="uploadMedia"></textarea>
                                                                                    <div class="input-group-addon">
                                                                                        <button class="btn btn-danger btn-circle text-uppercase" type="submit" id="submitComment"><span class="glyphicon glyphicon-send"></span>Send</button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>                                                                                       
                                                                        </form>                                                                     
                                                                    </div>
                                                                </div>

                                                                <div class="tab-pane" id="add-comment">
                                                                    <div class="row" style="margin-top: -20px;height: 386px;overflow-x: auto">

                                                                    </div>
                                                                </div>

                                                                <div class="tab-pane" id="account-settings">
                                                                    <div class="row" style="margin-top: -20px;height: 386px;overflow-x: auto">

                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="row">

                                                        <div class="col-sm-10 col-sm-offset-1" id="logout">

                                                        </div>
                                                    </div>  
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>  <!-- interview main tag end-->


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
        <script type="text/javascript" src="resources/js/script3-sanu.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-post.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-refresh.js"></script>
        <script type="text/javascript" src="resources/js/websocket.js"></script>
    </body>
</html>
