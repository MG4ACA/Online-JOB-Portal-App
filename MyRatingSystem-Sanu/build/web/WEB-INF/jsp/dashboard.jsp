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
        <title>My-Ratings</title>
        <link rel="icon" type="image/png" href="resources/icon/fav-ico.png">
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap-theme.css">
        <link rel="stylesheet" type="text/css" href="resources/css/font-awesome.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/style1-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style2-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style3-sanu.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/style4-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/mywall.css" >    
        <link rel="stylesheet" type="text/css" href="resources/css/style0-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style10-sanu.css" >  
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

                                <!--Home-->
                                <div class="Home"  style="display: block">
                                    <div class="page-content-wrapper">
                                        <div class="page-content inset">
                                            <div class="row" style="margin-bottom: 15px"> <!--main home row begins-->
                                                <div class="col-md-8 col-xs-8" ><!--main colomn in home -->
                                                    <div class="wed" style="">
                                                        <div class="">
                                                            <div class="row" style="padding-top: 6px">
                                                               
                                                                <div class="col-md-12" >
                                                                    <div id="demo">
                                                                        <div class="row">
                                                                             <strong class="main hidden-xs" data-toggle="collapse" data-target="#demo"> <span class="glyphicon glyphicon-tasks pull-right"></span></strong>
                                                                            <!--add post-->
                                                                            <form class="" action="addpost.htm" method="post" enctype="multipart/form-data">
                                                                                <table>
                                                                                    <tr>
                                                                                        <td><img class="img-responsive img-circle" src="resources/profile/${cuser.cf}" style="height: 60px;width: 60px;margin-bottom: 5px"/> </td>
                                                                                        <td style="padding-left: 10px"> <u><b style="font-family: 'Encode Sans', sans-serif;">${cuser.firstName} ${cuser.lastName}</b></u><br>
                                                                                            <p class="sub">${cuser.possition}</p></td>
                                                                                    <input name="userid" style="display: none" value="${cuser.id}" />
                                                                                    </tr>
                                                                                </table>
                                                                        </div>
                                                                        <div class="row" style="margin-bottom: 5px">                            
                                                                            <textarea id="waaap" name="wallDetails" class="form-control"  rows="1"  style="text-align: left;border-style: none;border-bottom: 1px solid black;border-radius: 0;box-shadow: none;">
                                                                            </textarea>
                                                                        </div>                                                                                                                                                                     
                                                                    </div>

                                                                </div>
                                                            </div>
                                                            <div class="row" style="padding-bottom :10px">

                                                                <div class="col-md-7 col-xs-12">

                                                                    <!--<span class="glyphicon glyphicon-camera"></span>--> 
                                                                    <label class="btnr  btn-sm btn-responsive glyphicon glyphicon-camera" for="my-file-selector">
                                                                        <input id="my-file-selector" name="fileW" type="file" style="display:none;">
                                                                        Upload
                                                                    </label>

                                                                    <!--<input type="file" class="btn btnr  btn-sm btn-responsive"><span class="glyphicon glyphicon-facetime-video">Video</span></input>-->

                                                                </div>
                                                                <div class="col-md-5 col-xs-12">
                                                                    <div class="btn-group pull-right">
                                                                        <button class="btn btn-danger btn-sm btn-responsive" type="submit">Post</button>

                                                                    </div>
                                                                </div>
                                                                </form>
                                                            </div>

                                                        </div>
                                                    </div>

                                                    <!-----wall post-->

                                                    <div class="row loa" style="padding-top :10px;">

                                                    </div>

                                                </div>   <!--</div>-->                                                                                            
                                                <div class="col-md-4 col-xs-4"><!--home profile management-->
                                                    <!--/////////////////////-->

                                                    <div class="" style="margin-top: -30px">
                                                        <div class="row">                                                           
                                                            <ul id="accordion" class="accordion">
                                                                <li style="margin-left: 2px;">
                                                                    <div class="col col_4 iamgurdeep-pic">
                                                                        <img class="img-responsive iamgurdeeposahan" alt="" src="resources/profile/${cuser.wp}">
                                                                        <div class="edit-pic">
                                                                            <a href="" target="_blank" class="fa fa-facebook"></a>
                                                                            <a href="" target="_blank" class="fa fa-instagram"></a>
                                                                            <a href="" target="_blank" class="fa fa-twitter"></a>
                                                                            <a href="" target="_blank" class="fa fa-google"></a>
                                                                        </div>
                                                                        <div class="username">
                                                                            <h2>${cuser.firstName} ${cuser.lastName}<br><small><i class="fa fa-map-marker"></i> ${cuser.country}</small></h2>
                                                                            <p><i class="fa fa-briefcase"></i> ${cuser.possition}</p>

                                                                            <a href="" target="_blank" class="btn-o"> <i class="fa fa-user-plus"></i> View Profile </a>
                                                                            <a href="" target="_blank"  class="btn-o"> <i class="fa fa-plus"></i> Follow </a>


                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="link" data-toggle="collapse" data-target="#a2"><i class="fa fa-globe"></i>About<i class="fa fa-chevron-down"></i></div>
                                                                    <ul class="submenu collapse" id="a2">
                                                                        <li><a href="#"><i class=""></i> Name : ${cuser.firstName} ${cuser.lastName}</a></li>
                                                                        <li><a href="#">Job :  ${cuser.possition}</a></li>
                                                                        <li><a href="#">Email : ${cuser.email}</a></li>
                                                                        <li><a href="#">Phone : ${cuser.tp}</a></li>
                                                                    </ul>
                                                                </li>
                                                                <li class="">
                                                                    <div class="link" data-toggle="collapse" data-target="#a3"><i class="fa fa-code"></i>Professional Skills<i class="fa fa-chevron-down"></i></div>
                                                                    <ul class="submenu" id="a3">
                                                                        <li><a href="#" id="skee"><span class="tags">Adobe Photoshop</span> <span class="tags">Corel Draw</span> <span class="tags">CSS</span> <span class="tags">Css 3</span> 
                                                                                <span class="tags">Graphic Design</span> <span class="tags">HTML</span> <span class="tags">HTML5</span> <span class="tags">JavaScript</span> 
                                                                                <span class="tags">Twitter bootstrap</span> <span class="tags">bootstrap</span> <span class="tags">User Interface Design</span> <span class="tags">Wordpress</span></a></li>
                                                                    </ul>
                                                                </li>
                                                                <li>
                                                                    <div class="link" data-toggle="collapse" data-target="#a4"><i class="fa fa-picture-o"></i>Photos <small id="picCount">0</small><i class="fa fa-chevron-down"></i></div>
                                                                    <ul class="submenu collapse" id="a4">
                                                                        <li class="photosgurdeep" id="dpic">
                                                                            <a href="#"><img class="img-responsive iamgurdeeposahan" alt="" src=""></a>
                                                                            <a href="#"><img class="img-responsive iamgurdeeposahan" alt="" src=""></a>
                                                                            <a href="#"><img class="img-responsive iamgurdeeposahan" alt="" src=""></a>
                                                                            <a href="#"><img class="img-responsive iamgurdeeposahan" alt="" src=""></a>
                                                                            <a class="view-all" href="" target="_blank" >0+</a>
                                                                        </li>
                                                                    </ul>
                                                                </li>
                                                                <li><div class="link" data-toggle="collapse" data-target="#a5"><i class="fa fa-users"></i>Friends <small id="frieCount">0</small><i class="fa fa-chevron-down"></i></div>
                                                                    <ul class="submenu collapse" id="a5">
                                                                        <li class="photosgurdeep" id="dasFri">
                                                                            <a href="#"><img class="img-responsive iamgurdeeposahan" alt="" src=""></a>
                                                                            <a href="#"><img class="img-responsive iamgurdeeposahan" alt="" src=""></a>
                                                                            <a href="#"><img class="img-responsive iamgurdeeposahan" alt="" src=""></a>
                                                                            <a href="#"><img class="img-responsive iamgurdeeposahan" alt="" src=""></a>
                                                                            <a href="#"><img class="img-responsive iamgurdeeposahan" alt="" src=""></a>
                                                                            <a href="#"><img class="img-responsive iamgurdeeposahan" alt="" src=""></a>
                                                                            <a href="#"><img class="img-responsive iamgurdeeposahan" alt="" src=""></a>
                                                                            <a href="#"><img class="img-responsive iamgurdeeposahan" alt="" src=""></a>
                                                                            <a href="#"><img class="img-responsive iamgurdeeposahan" alt="" src=""></a>
                                                                            <a class="view-all" href="" target="_blank">0+</a>
                                                                        </li>
                                                                    </ul>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                    <!--//////////////////////////////-->
                                                    <div class="row">
                                                        <div class="prof">
                                                            <div class="" style="background:url('resources/profile/${cuser.wp}');background-size: cover;background-repeat: no-repeat;padding: 10px;">
                                                                <img class="img-responsive img-circle center-block" src="resources/profile/${cuser.cf}" style="height: 100px;width: 100px;"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="prof">
                                                            <h3 style="text-align: center" class="">Followers</h3>
                                                            <h5 style="text-align: center">${fol}</h5>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>  <!--main row end-->                                          
                                        </div>
                                    </div>
                                </div>  <!--end of home tag-->




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
        <script type="text/javascript" src="resources/ajax/sanu-ajax-refresh.js"></script>
        <script type="text/javascript" src="resources/js/websocket.js"></script>
    </body>
</html>
