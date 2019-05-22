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
        <title>Views And News</title>
        <link rel="icon" type="image/png" href="resources/icon/fav-ico.png">
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap-theme.css">
        <link rel="stylesheet" type="text/css" href="resources/css/font-awesome.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/style1-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style2-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style3-sanu.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/style4-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style6-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/mywall.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/style9-sanu.css" >       
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
                        <div class="">
                            <div class="" id="" style="margin-top: 60px; z-index: 2">
                                <div class="">
                                    <div class="row">
                                        <div class="col-md-12 text-center ">
                                            <div class="panel panel-default">
                                                <div class="userprofile social " style="background: url('resources/profile/${cuser.wp}');background-repeat: no-repeat;background-size: cover;background-position-y: bottom;">
                                                    <div class="userpic"> <img src="resources/profile/${cuser.cf}" alt="" class="userpicimg"> </div>
                                                    <h3 class="username">My Ratings Post Portal</h3>
                                                    <p>${cuser.country}</p>
                                                    <div class="socials tex-center"> <a href="" class="btn btn-circle btn-primary ">
                                                            <i class="fa fa-facebook"></i></a> <a href="" class="btn btn-circle btn-danger ">
                                                            <i class="fa fa-google-plus"></i></a> <a href="" class="btn btn-circle btn-info ">
                                                            <i class="fa fa-twitter"></i></a> <a href="" class="btn btn-circle btn-warning "><i class="fa fa-envelope"></i></a>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 border-top border-bottom">
                                                    <ul class="nav nav-pills pull-left countlist" role="tablist">
                                                        <li role="presentation">
                                                            <h3>0<br>
                                                                <small>Follower</small> </h3>
                                                        </li>
                                                        <li role="presentation">
                                                            <h3>0<br>
                                                                <small>Following</small> </h3>
                                                        </li>
                                                        <li role="presentation">
                                                            <h3>0<br>
                                                                <small>Activity</small> </h3>
                                                        </li>
                                                    </ul>
                                                    <button class="btn btn-danger followbtn">Follow</button>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <!-- /.col-md-12 -->
                                        <div class="col-md-4 col-sm-12 pull-right">
                                            <div class="panel panel-default" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);margin-top: -11px;">
                                                <div class="panel-heading">
                                                    <h1 class="page-header small">Personal Details</h1>
                                                    <p style="margin-left: 10px;" class="page-subtitle small">Limited information is visible</p>
                                                </div>
                                                <div class="col-md-12 photolist">
                                                    <div class="row">
                                                        <div class="col-sm-3 col-xs-3"><img src="resources/profile/pavatar.png" class="" alt=""> </div>
                                                        <div class="col-sm-3 col-xs-3"><img src="resources/profile/pavatar.png" class="" alt=""> </div>
                                                        <div class="col-sm-3 col-xs-3"><img src="resources/profile/pavatar.png" class="" alt=""> </div>
                                                        <div class="col-sm-3 col-xs-3"><img src="resources/profile/pavatar.png" class="" alt=""> </div>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="panel panel-default" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                                                <div class="panel-heading">
                                                    <h1 class="page-header small">Worked with many domain</h1>
                                                    <p class="page-subtitle small">Like to work for different business</p>
                                                </div>
                                                <div class="col-md-12">
                                                    <ul class="list-group">
                                                        <li class="list-group-item"><span class="fa fa-male"></span> Worked with 1000+ people</li>
                                                        <li class="list-group-item"><span class="fa fa-institution"></span> 60+ offices</li>
                                                        <li class="list-group-item"><span class="fa fa-user-md"></span> 50000+ satify customers</li>
                                                        <li class="list-group-item"><span class="fa fa-clock-o"></span> Work hours many and many still counting</li>
                                                        <li class="list-group-item"><span class="fa fa-heart"></span> Customer satisfaction for servics</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="panel panel-default" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                                                <div class="panel-heading">
                                                    <h1 class="page-header small">What others are saying </h1>
                                                    <p class="page-subtitle small">Express your self, Express to other</p>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="media">
                                                        <div class="media-left"> <a href="javascript:void(0)"> <img src="resources/profile/pavatar.png" alt="" class="media-object"> </a> </div>
                                                        <div class="media-body">
                                                            <h4 class="media-heading">My-ratings</h4>
                                                           My-ratings My-ratings My-ratings My-ratings My-ratings My-ratings My-ratings My-ratings My-ratings My-ratings </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="media-left"> <a href="javascript:void(0)"> 
                                                                <img src="resources/profile/pavatar.png" alt="" class="media-object"> </a> </div>
                                                        <div class="media-body">
                                                            <h4 class="media-heading">My-ratings</h4>
                                                            My-ratings My-ratings My-ratings My-ratings My-ratings My-ratings My-ratings My-ratings My-ratings My-ratings. </div>
                                                    </div>
                                                </div>
                                                <div class="clearfix" style="padding: 10px;"></div>
                                            </div>
                                            <div class="panel panel-default" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                                                <div class="panel-heading">
                                                    <h1 class="page-header small">Recently Connected</h1>
                                                    <p class="page-subtitle small">My-Rating have recently connected with 34 friends</p>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="memberblock"> <a href="" class="member"> <img src="resources/profile/pavatar.png" alt="">
                                                            <div class="memmbername">My Ratings</div>
                                                        </a> <a href="" class="member"> <img src="resources/profile/pavatar.png" alt="">
                                                            <div class="memmbername">My Ratings</div>
                                                        </a> <a href="" class="member"> <img src="resources/profile/pavatar.png" alt="">
                                                            <div class="memmbername">My Ratings</div>
                                                        </a> <a href="" class="member"> <img src="resources/profile/pavatar.png" alt="">
                                                            <div class="memmbername">My Ratings</div>
                                                        </a> <a href="" class="member"> <img src="resources/profile/pavatar.png" alt="">
                                                            <div class="memmbername">My Ratings</div>
                                                        </a> <a href="" class="member"> <img src="resources/profile/pavatar.png" alt="">
                                                            <div class="memmbername">My Ratings</div>
                                                        </a> </div>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </div>
                                        <div class="col-md-8 col-sm-12 pull-left posttimeline" style="margin-top: -12px">
                                            <div class="wed">
                                                <div class="panel panel-default">
                                                    <div class="panel-body">

                                                        <div class="status-upload nopaddingbtm">
                                                            <form>
                                                                <textarea class="form-control" placeholder="What are you doing right now?"></textarea>
                                                                <br>
                                                                <ul class="nav nav-pills pull-left ">
                                                                    <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Audio"><i class="glyphicon glyphicon-bullhorn"></i></a></li>
                                                                    <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Video"><i class=" glyphicon glyphicon-facetime-video"></i></a></li>
                                                                    <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Picture"><i class="glyphicon glyphicon-picture"></i></a></li>
                                                                </ul>
                                                                <button type="submit" class="btn btn-success pull-right"> Share</button>
                                                            </form>
                                                        </div>
                                                        <!-- Status Upload  --> 
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="" id="newP">

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- viewa main tag end-->
                        </div>  <!-- end of main main of content-->
                    </div> <!-- end of main column of content-->
                </div> <!-- end of main row of content-->
            </div> <!--3nd div-->
        </div>  <!--2nd div-->


        <!--/////////////////////-->
        <script type="text/javascript" src="resources/js/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap.js"></script>
        <script type="text/javascript" src="resources/js/alertify.js"></script>
        <script type="text/javascript" src="resources/js/script1-sanu.js"></script>
        <script type="text/javascript" src="resources/js/script2-sanu.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-post.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-post-portal.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-refresh.js"></script>
        <script type="text/javascript" src="resources/js/websocket.js"></script>
    </body>
</html>
