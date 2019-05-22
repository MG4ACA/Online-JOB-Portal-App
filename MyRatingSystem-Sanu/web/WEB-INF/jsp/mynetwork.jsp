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
        <title>MyNetwork</title>
        <link rel="icon" type="image/png" href="resources/icon/fav-ico.png">
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap-theme.css">
        <link rel="stylesheet" type="text/css" href="resources/css/font-awesome.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/style1-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style2-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style3-sanu.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/style4-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style5-sanu.css" >  
        <link rel="stylesheet" type="text/css" href="resources/css/mywall.css">  
        <link rel="stylesheet" type="text/css" href="resources/css/jquery-clockpicker.min.css" >  
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
                            <div class="main" id="cds" style="margin-top: 65px; z-index: 2">

                                <div class="dfg-sanu">
                                    <!--myNetwok-->
                                    <div class="MyNetwork" style="display: block">
                                        <div class="page-content-wrapper">                                
                                            <div class="row" > <!--main row of network-->   

                                                <div class="" style="margin-top: -20px;">
                                                    <div class="row user-menu-container square">
                                                        <div class="col-md-7 user-details">
                                                            <div class="row coralbg white">
                                                                <div class="col-md-6 no-pad">
                                                                    <div class="user-pad">
                                                                        <h3>Welcome back, ${cuser.firstName} </h3>
                                                                        <h4 class="white"><i class="fa fa-check-circle-o"></i> ${cuser.country}</h4>
                                                                        <h4 class="white"><i class="fa fa-twitter"></i>  ${cuser.possition}</h4>
                                                                        <button type="button" class="btn btn-labeled btn-default" href="myprofile">
                                                                            <span class="btn-label"><i class="fa fa-pencil"></i></span>Update</button>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6 no-pad">
                                                                    <div class="user-image">
                                                                        <img src="resources/profile/${cuser.wp}" class="img-responsive ">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row overview">
                                                                <div class="col-md-4 user-pad text-center">
                                                                    <h3>FOLLOWERS</h3>
                                                                    <h4>${fol}</h4>
                                                                </div>
                                                                <div class="col-md-4 user-pad text-center">
                                                                    <h3>FOLLOWING</h3>
                                                                    <h4>${fol}</h4>
                                                                </div>
                                                                <div class="col-md-4 user-pad text-center">
                                                                    <h3>APPRECIATIONS</h3>
                                                                    <h4>0</h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-1 user-menu-btns">
                                                            <div class="btn-group-vertical square" id="responsive">
                                                                <a href="#" class="btn btn-block btn-default active">
                                                                    <i class="fa fa-bell-o fa-3x"></i>
                                                                </a>
                                                                <a href="#" class="btn btn-default">
                                                                    <i class="fa fa-envelope-o fa-3x"></i>
                                                                </a>
                                                                <a href="#" class="btn btn-default">
                                                                    <i class="fa fa-laptop fa-3x"></i>
                                                                </a>
                                                                <a href="#" class="btn btn-default">
                                                                    <i class="fa fa-cloud-upload fa-3x"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4 user-menu user-pad">
                                                            <div class="user-menu-content active">
                                                                <h3>
                                                                    Recent Notifications
                                                                </h3>
                                                                <ul class="user-menu-list" id="notti"></ul>
                                                            </div>
                                                            <div class="user-menu-content">
                                                                <h3>
                                                                    Your Inbox Alerts
                                                                </h3>
                                                                <ul class="user-menu-list" id="nottmes"></ul>
                                                            </div>
                                                            <div class="user-menu-content">
                                                                <h3>
                                                                    Interview Notifications
                                                                </h3>
                                                                <div class="row">
                                                                    <ul class="user-menu-list" id="nott"></ul>
                                                                </div>
                                                            </div>
                                                            <div  class="user-menu-content">
                                                                <h3>
                                                                    Profile Notifications
                                                                </h3> 
                                                                <div class="row">
                                                                    <ul class="user-menu-list" id="pnott"></ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="dfg-sanu">
                                                    </div>
                                                </div>
                                            </div>  <!--main row of network ends-->
                                        </div>
                                    </div> <!--main tag of network ends-->
                                    <!--////-->
                                    <div class="">
                                        <div class="row" style="margin-top: 17px;">
                                            <div class="col-lg-3 hidden-sm hidden-xs">
                                                <div class="panel-footer" style="height: 1020px;overflow-x: auto">
                                                    <a class="twitter-timeline" href="https://twitter.com/My_Ratings">Tweets by My_Ratings</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>                           
                                                </div>
                                            </div>
                                            <div class="col-lg-9">
                                                <div class="panel-footer" style="min-height:1000px;max-width:1000px;height: auto">
                                                    <h5 class="text-info"><b> LIVE UPDATES </b></h5>
                                                    <div class="tabbable-panel">
                                                        <div class="tabbable-line">
                                                            <ul class="nav nav-tabs ">
                                                                <li class="active"><a href="#tab_default_1" data-toggle="tab">Friends Circle</a></li>
                                                                <li><a href="#tab_default_2" data-toggle="tab">Apply Job </a></li>
                                                                <li><a href="#tab_default_3" data-toggle="tab">Interviews</a></li>
                                                                <li><a href="#tab_default_4" data-toggle="tab">Notifications</a></li>
                                                                <li><a href="#tab_default_5" data-toggle="tab"> </a></li>
                                                                <li><a href="#tab_default_6" data-toggle="tab"> </a></li>
                                                                <li><a href="#tab_default_7" data-toggle="tab"></a></li>
                                                                <li><a href="#tab_default_7" data-toggle="tab"></a></li>
                                                            </ul>

                                                            <div class="tab-content">
                                                                <div class="tab-pane active" id="tab_default_1" active>
                                                                    <div class="row">
                                                                        <div class="dfg-sanu" style="min-height: 900px;margin-top: -50px;height: auto;padding-bottom: 20px;">
                                                                            <div class="row">
                                                                                <div class="col-md-12">
                                                                                    <h3 style="padding: 0px 0px 0px 10px;margin-top:20px">Connect With Your Friends</h3>                                                                         
                                                                                    <hr class="bg-danger" >
                                                                                </div>
                                                                            </div>
                                                                            <div class="" style="">
                                                                                <div class="container-fluid" style="" id="frndCir">

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="tab-pane" id="tab_default_2">
                                                                    <div class="row">
                                                                        <div class="dfg-sanu" style="min-height: 900px;margin-top: -50px;height: auto;padding-bottom: 20px;">
                                                                            <div class="row">
                                                                                <div class="col-md-12">
                                                                                    <h3 style="padding: 0px 0px 0px 10px;margin-top:20px">Your Applied Jobs</h3>                                                                         
                                                                                    <hr class="bg-danger" >
                                                                                </div>
                                                                            </div>

                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="tab-pane" id="tab_default_3">
                                                                    <div class="row">
                                                                        <div class="dfg-sanu" style="min-height: 900px;margin-top: -50px;height: auto;padding-bottom: 20px;">
                                                                            <div class="row">
                                                                                <div class="col-md-12">
                                                                                    <h3 style="padding: 0px 0px 0px 10px;margin-top:20px">Interview Notification Area</h3>                                                                         
                                                                                    <hr class="bg-danger" >
                                                                                </div>
                                                                            </div>
                                                                            <div  id="dirCirr">

                                                                            </div>                          
                                                                        </div>
                                                                    </div>                                                                                                       
                                                                </div>
                                                                <div class="tab-pane" id="tab_default_4">
                                                                    <div class="row">
                                                                        <div class="dfg-sanu" style="min-height: 900px;margin-top: -50px;height: auto;padding-bottom: 20px;">
                                                                            <div class="row">
                                                                                <div class="col-md-12">
                                                                                    <h3 style="padding: 0px 0px 0px 10px;margin-top:20px">Notifications</h3>                                                                         
                                                                                    <hr class="bg-danger">
                                                                                    <!--///////////-->


                                                                                    <!--///////////////////-->
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="tab-pane" id="tab_default_5">
                                                                    <div class="row">
                                                                        <div class="dfg-sanu" style="min-height: 900px;margin-top: -50px;height: auto;padding-bottom: 20px;">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="tab-pane" id="tab_default_6">
                                                                    <div class="row">
                                                                        <div class="dfg-sanu" style="min-height: 900px;margin-top: -50px;height: auto;padding-bottom: 20px;">
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="tab-pane" id="tab_default_7">
                                                                    <div class="row">
                                                                        <div class="dfg-sanu" style="min-height: 900px;margin-top: -50px;height: auto;padding-bottom: 20px;">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>			
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <!--/////-->
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
        <script type="text/javascript" src="resources/ajax/sanu-ajax-post.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-mynetwork.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-noty.js"></script>
        <script type="text/javascript" src="resources/css/jquery-clockpicker.min.js"></script>
        <script src='http://cdn.jsdelivr.net/webshim/1.12.4/extras/modernizr-custom.js'></script>
        <script src='http://cdn.jsdelivr.net/webshim/1.12.4/polyfiller.js'></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-refresh.js"></script>
        <script type="text/javascript" src="resources/js/websocket.js"></script>
    </body>
</html>
