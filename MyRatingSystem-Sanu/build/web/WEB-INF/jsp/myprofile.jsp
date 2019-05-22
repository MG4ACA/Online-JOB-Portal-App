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
        <title>MyProfile</title>
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
                            <div class="main" id="cds" style="margin-top: 50px; z-index: 2">

                                <!--this is profile and its wall paper-->
                                <div class="Profile" style="display: block">
                                    <div class="page-content-wrapper">
                                        <div class="page-content inset">
                                            <div class="row"> <!-- 1st row begin-->
                                                <div class="col-md-8 col-sm-6">
                                                    <div class="card hovercard">
                                                        <div class="cardheader img-responsive" style="background-image: url('resources/profile/${cuser.wp}')">
                                                        </div>
                                                        <div class="avatar">
                                                            <img alt="" src="resources/profile/${cuser.cf}">
                                                        </div>
                                                        <div class="info">
                                                            <div class="title">
                                                                <a target="_blank" href="h#">${cuser.firstName} ${cuser.lastName}</a>
                                                            </div>
                                                            <div class="desc"> ${cuser.possition}</div>
                                                            <div class="desc">${cuser.email}</div>
                                                            <div class="desc">${cuser.country}</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--this is profile ratings-->
                                                <div class="col-md-4 wed" style="margin-top:10px">
                                                    <div class="row" style="padding-top: 30px;">
                                                        <div class="col-md-12 col-sm-12">
                                                            <div class="rating-block">
                                                                <h4>Average user rating</h4>
                                                                <h2 class="bold padding-bottom-7"><span id="rti"> 0.0 </span><small>/ 5</small></h2>
                                                                <button type="button" id="rat1" class="btn  btn-default btn-sm rat1" aria-label="Left Align">
                                                                    <span class="fa fa-star" aria-hidden="true"></span>
                                                                </button>
                                                                <button type="button" id="rat2" class="btn  btn-default btn-sm rat1" aria-label="Left Align">
                                                                    <span class="fa fa-star" aria-hidden="true"></span>
                                                                </button>
                                                                <button type="button" id="rat3" class="btn  btn-default btn-sm rat1" aria-label="Left Align">
                                                                    <span class="fa fa-star" aria-hidden="true"></span>
                                                                </button>
                                                                <button type="button" id="rat4" class="btn btn-default btn-grey btn-sm rat1" aria-label="Left Align">
                                                                    <span class="fa fa-star" aria-hidden="true"></span>
                                                                </button>
                                                                <button type="button" id="rat5" class="btn btn-default btn-grey btn-sm rat1" aria-label="Left Align">
                                                                    <span class="fa fa-star" aria-hidden="true"></span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row" style="padding-top: 30px;padding-bottom: 38px;">
                                                        <div class="col-md-12  col-sm-12">
                                                            <h4>Rating breakdown</h4>
                                                            <div id="divrate">
                                                                <div class="pull-left">
                                                                    <div class="pull-left" style="width:35px; line-height:1;">
                                                                        <div style="height:9px; margin:5px 0;">5 <span class="glyphicon glyphicon-star"></span></div>
                                                                    </div>
                                                                    <div class="pull-left" style="width:180px;">
                                                                        <div class="progress" style="height:9px; margin:8px 0;">
                                                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="5" aria-valuemin="0" aria-valuemax="5" style="width: 1000%">
                                                                                <span class="sr-only">80% Complete (danger)</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="pull-right" style="margin-left:10px;">0</div>
                                                                </div>
                                                                <div class="pull-left">
                                                                    <div class="pull-left" style="width:35px; line-height:1;">
                                                                        <div style="height:9px; margin:5px 0;">4 <span class="glyphicon glyphicon-star"></span></div>
                                                                    </div>
                                                                    <div class="pull-left" style="width:180px;">
                                                                        <div class="progress" style="height:9px; margin:8px 0;">
                                                                            <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="4" aria-valuemin="0" aria-valuemax="5" style="width: 80%">
                                                                                <span class="sr-only">80% Complete (danger)</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="pull-right" style="margin-left:10px;">0</div>
                                                                </div>
                                                                <div class="pull-left">
                                                                    <div class="pull-left" style="width:35px; line-height:1;">
                                                                        <div style="height:9px; margin:5px 0;">3 <span class="glyphicon glyphicon-star"></span></div>
                                                                    </div>
                                                                    <div class="pull-left" style="width:180px;">
                                                                        <div class="progress" style="height:9px; margin:8px 0;">
                                                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="3" aria-valuemin="0" aria-valuemax="5" style="width: 60%">
                                                                                <span class="sr-only">80% Complete (danger)</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="pull-right" style="margin-left:10px;">0</div>
                                                                </div>
                                                                <div class="pull-left">
                                                                    <div class="pull-left" style="width:35px; line-height:1;">
                                                                        <div style="height:9px; margin:5px 0;">2 <span class="glyphicon glyphicon-star"></span></div>
                                                                    </div>
                                                                    <div class="pull-left" style="width:180px;">
                                                                        <div class="progress" style="height:9px; margin:8px 0;">
                                                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="2" aria-valuemin="0" aria-valuemax="5" style="width: 40%">
                                                                                <span class="sr-only">80% Complete (danger)</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="pull-right" style="margin-left:10px;">0</div>
                                                                </div>
                                                                <div class="pull-left">
                                                                    <div class="pull-left" style="width:35px; line-height:1;">
                                                                        <div style="height:9px; margin:5px 0;">1 <span class="glyphicon glyphicon-star"></span></div>
                                                                    </div>
                                                                    <div class="pull-left" style="width:180px;">
                                                                        <div class="progress" style="height:9px; margin:8px 0;">
                                                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="1" aria-valuemin="0" aria-valuemax="5" style="width: 20%">
                                                                                <span class="sr-only">80% Complete (danger)</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="pull-right" style="margin-left:10px;">0</div>
                                                                </div>
                                                            </div>
                                                        </div>			
                                                    </div>
                                                </div>
                                            </div> <!-- 1st row end-->

                                            <!--this is the main menu-->
                                            <div class="row">  <!-- 2nd row begin-->
                                                <div class="col-sm-3">                                                   
                                                    <a  class="btn btn-danger btn-block btn-compose-email" id="cvclick">View CV</a>                                                                                                        
                                                    <ul class="nav nav-pills nav-stacked nav-email shadow mb-20">
                                                        <li  class="active">
                                                            <a  class="clii">
                                                                <i class="fa fa-user-md"></i>My Profile<span class="label pull-right"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a  class="clii">
                                                                <i class="fa fa-users"></i>View Friends<span class="label pull-right"></span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a class="clii"><i class="glyphicon glyphicon-calendar"></i>Register Company</a>
                                                        </li>
                                                        <li>
                                                            <a  class="clii"><i class="fa fa-certificate"></i>Register Vacancy</a>
                                                        </li>
                                                        <li>
                                                            <a class="clii">
                                                                <i class="fa fa-photo"></i>Photos<span class="label label-info pull-right inbox-notification"></span>
                                                            </a>
                                                        </li>
                                                        <li><a  class="clii"> <i class="fa fa-video-camera"></i>Videos</a></li>
                                                    </ul><!-- /.nav -->

                                                    <h5 class="nav-email-subtitle">More</h5>
                                                    <ul class="nav nav-pills nav-stacked nav-email mb-20 rounded shadow">
                                                        <li>
                                                            <a  class="clii">
                                                                <i class="fa fa-file-image-o"></i>Event<span class="label label-danger pull-right">3</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a  class="clii">
                                                                <i class="fa fa-thumbs-up"></i>Likes
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a class="clii">
                                                                <i class="fa fa-folder-open"></i>Backup
                                                            </a>
                                                        </li>
                                                    </ul><!-- /.nav -->
                                                </div> 
                                                <!--main menu end right here sanu-->

                                                <!--job cv and profile view-->
                                                <div class="col-sm-9 prof-man" id="MyProfile" style="display: block">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading resume-heading">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="col-xs-12 col-sm-4">
                                                                        <figure>        
                                                                            <img class="img-circle img-responsive" alt="" src="resources/profile/${cuser.cf}" style="width: 238.25px;height: 238.25px;max-height: 238.25px;-webkit-border-radius: 50%;-moz-border-radius: 50%;border-radius: 50%;">  
                                                                        </figure>
                                                                        <div class="row">
                                                                            <div class="col-xs-12 social-btns">
                                                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                                                    <a href="#" class="btn btn-social btn-block btn-google">
                                                                                        <i class="fa fa-google"></i> </a>
                                                                                </div>
                                                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                                                    <a href="#" class="btn btn-social btn-block btn-facebook">
                                                                                        <i class="fa fa-facebook"></i> </a>
                                                                                </div>
                                                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                                                    <a href="#" class="btn btn-social btn-block btn-twitter">
                                                                                        <i class="fa fa-twitter"></i> </a>
                                                                                </div>
                                                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                                                    <a href="#" class="btn btn-social btn-block btn-linkedin">
                                                                                        <i class="fa fa-linkedin"></i> </a>
                                                                                </div>
                                                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                                                    <a href="#" class="btn btn-social btn-block btn-github">
                                                                                        <i class="fa fa-github"></i> </a>
                                                                                </div>                                                                              
                                                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                                                    <li>
                                                                                        <a class="btn btn-default btn-block clii">
                                                                                            <i class="fa fa-edit"></i><span style="display: none">Edit</span>
                                                                                        </a>
                                                                                    </li>
                                                                                </div>
                                                                            </div>


                                                                        </div>
                                                                    </div>
                                                                    <div class="col-xs-12 col-sm-8">
                                                                        <ul class="list-group">
                                                                            <li class="list-group-item">${cuser.firstName} ${cuser.lastName}</li>
                                                                            <li class="list-group-item"> ${cuser.possition}</li>
                                                                            <li class="list-group-item">${cuser.country} </li>
                                                                            <li class="list-group-item"><i class="fa fa-phone"></i> ${cuser.tp} </li>
                                                                            <li class="list-group-item"><i class="fa fa-envelope"></i>${cuser.email}</li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="bs-callout bs-callout-danger">
                                                            <h4>Summary</h4>
                                                            <p id="sum1p"></p>
                                                            <p id="sum2p"></p>
                                                        </div>
                                                        <div class="bs-callout bs-callout-danger">
                                                            <h4>Research Interests</h4>
                                                            <p id="reaserp"></p>
                                                        </div>                                                
                                                        <div class="bs-callout bs-callout-danger">
                                                            <h4>Prior Experiences</h4>
                                                            <ul class="list-group" id="pexfu">
                                                                <a class="list-group-item inactive-link" href="#">
                                                                    <h4 class="list-group-item-heading" id="pexh">
                                                                        <!--add heading heare-->
                                                                    </h4>
                                                                    <p class="list-group-item-text" id="pexp">
                                                                        <!--descriptin-->
                                                                    </p>
                                                                </a>
                                                            </ul>
                                                        </div>
                                                        <div class="bs-callout bs-callout-danger">
                                                            <h4>Key Expertise</h4>
                                                            <ul class="list-group" id="kexul"> </ul>
                                                        </div>                                             
                                                        <div class="bs-callout bs-callout-danger">
                                                            <h4>Education</h4>
                                                            <table class="table table-striped table-responsive" id="edu_table">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Degree</th>
                                                                        <th>Graduation Year</th>                                                                    
                                                                    </tr>
                                                                </thead>
                                                                <tbody id="edu_b">                                                                                                                                     
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <div class="bs-callout bs-callout-danger">
                                                            <h4>Featured Skills & Endorsements</h4>
                                                            <ul class="list-group">
                                                                <a class="list-group-item inactive-link" href="#">
                                                                    <div id="skee">

                                                                    </div>
                                                                    <div class="progress-meter">
                                                                        <div style="width: 25%;" class="meter meter-left"><span class="meter-text">I suck</span></div>
                                                                        <div style="width: 25%;" class="meter meter-left"><span class="meter-text">I know little</span></div>
                                                                        <div style="width: 30%;" class="meter meter-right"><span class="meter-text">I'm a guru</span></div>
                                                                        <div style="width: 20%;" class="meter meter-right"><span class="meter-text">I''m good</span></div>
                                                                    </div>
                                                                </a>
                                                            </ul>
                                                        </div>
                                                        <div class="bs-callout bs-callout-danger">
                                                            <h4>Accomplishments</h4>
                                                            <table class="table table-striped table-responsive ">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Accomplishments</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody id="acco">
                                                                    <tr>
                                                                        <td>
                                                                            <span data-toggle="collapse" data-target="#ps1">Projects</span>
                                                                            <ul id="ps1">

                                                                            </ul>
                                                                        </td>
                                                                    </tr>  
                                                                    <tr>
                                                                        <td>
                                                                            <span data-toggle="collapse" data-target="#ps2">Courses</span>
                                                                            <ul id="ps2"></ul>
                                                                        </td>
                                                                    </tr>  
                                                                    <tr>
                                                                        <td>
                                                                            <span data-toggle="collapse" data-target="#ps3">Languages</span>
                                                                            <ul id="ps3"></ul>
                                                                        </td>
                                                                    </tr>  
                                                                    <tr>
                                                                        <td>
                                                                            <span data-toggle="collapse" data-target="#ps4">Certificates</span>
                                                                            <ul id="ps4"></ul>
                                                                        </td>
                                                                    </tr>  
                                                                </tbody>
                                                            </table>
                                                        </div>

                                                    </div>
                                                </div> <!-- my profile view end from here sanu-->


                                                <!--job cv edit profile view-->
                                                <div class="col-sm-9 prof-man" id="Edit" style="display: none">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading resume-heading">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="col-xs-12 col-sm-4">
                                                                        <figure>
                                                                            <label for="my-file">
                                                                                <form method="post" enctype="multipart/form-data" id="pppform">
                                                                                    <!--<i class="fa fa-camera"></i>-->
                                                                                    <img class="img-circle img-responsive" alt="" src="resources/profile/${cuser.cf}" style="width: 238.25px;height: 238.25px;max-height: 238.25px;-webkit-border-radius: 50%;-moz-border-radius: 50%;border-radius: 50%;">  
                                                                                    <input id="my-file" type="file"  name="ppup" style="display:none;">
                                                                                </form>
                                                                            </label>
                                                                            <i class="fa fa-upload pull-right" id="cpopo" style="border: 1px solid #b08181;border-radius: 10px;padding: 5px;color: #784343;margin-top: -10px;"> Update</i>
                                                                        </figure>
                                                                        <div class="row">
                                                                            <div class="col-xs-12 social-btns">
                                                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                                                    <a href="#" class="btn btn-social btn-block btn-google">
                                                                                        <i class="fa fa-google"></i> </a>
                                                                                </div>
                                                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                                                    <a href="#" class="btn btn-social btn-block btn-facebook">
                                                                                        <i class="fa fa-facebook"></i> </a>
                                                                                </div>
                                                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                                                    <a href="#" class="btn btn-social btn-block btn-twitter">
                                                                                        <i class="fa fa-twitter"></i> </a>
                                                                                </div>
                                                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                                                    <a href="#" class="btn btn-social btn-block btn-linkedin">
                                                                                        <i class="fa fa-linkedin"></i> </a>
                                                                                </div>
                                                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                                                    <a href="#" class="btn btn-social btn-block btn-github">
                                                                                        <i class="fa fa-github"></i> </a>
                                                                                </div>
                                                                                <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                                                                                    <a href="#" class="btn btn-social btn-block btn-stackoverflow">
                                                                                        <i class="fa fa-stack-overflow"></i> </a>
                                                                                </div>

                                                                            </div>


                                                                        </div>
                                                                    </div>
                                                                    <div class="col-xs-12 col-sm-8">
                                                                        <ul class="list-group">
                                                                            <li class="list-group-item">${cuser.firstName} ${cuser.lastName}</li>
                                                                            <li class="list-group-item">${cuser.possition}</li>
                                                                            <li class="list-group-item">${cuser.country} </li>
                                                                            <li class="list-group-item"><i class="fa fa-phone"></i> ${cuser.tp} </li>
                                                                            <li class="list-group-item"><i class="fa fa-envelope"></i>${cuser.email}</li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col-xs-3">
                                                                        <form action="cvadd" id="cvupForm" method="post" enctype="multipart/form-data">
                                                                            <div class="input-group"> 
                                                                                <a  class="btn btn-block btn-compose-email" id="cv_save"  style="background-color:rgba(255, 97, 97, 1);color: white">Save CV</a>
                                                                                <div class="input-group-btn">
                                                                                    <label>
                                                                                        <input type="file" name="cvupload"  style="display: none"/>
                                                                                        <a  class="btn btn-block btn-compose-email" style="background-color:rgba(255, 97, 97, 1);color: white"><span class="fa fa-upload" style="font-size: 17px;padding-left:  8px;padding-right: 8px"></span></a>
                                                                                    </label>
                                                                                </div>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                    <div class="col-xs-3" id="pan" style="display: none">
                                                                        <div class="msg msg-danger" style="border-color: white;" id="res-dis"> <span  class="fa fa-thumbs-up"></span></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="bs-callout bs-callout-danger">
                                                            <form action="upSum" id="sumF1" enctype="multipart/form-data" method="post">
                                                                <div class="row">
                                                                    <h4>Summary</h4>
                                                                    <div class="form-group">                                                                   
                                                                        <div class="col-sm-10">
                                                                            <textarea name="sum1" id="sum1" type="text" rows="1" placeholder="Summary Line 1" class="form-control"></textarea>
                                                                        </div>
                                                                        <div id="ri1">
                                                                            <label id="" class="col-sm-2 control-label fa fa-check" style="font-size: 20px;text-align: center;color: green;display:none" for="textinput"></label>
                                                                        </div>                                                                       
                                                                    </div>
                                                                </div>
                                                                <div class="row" style="margin-top: 7px">
                                                                    <div class="form-group">                                                                    
                                                                        <div class="col-sm-10">
                                                                            <textarea id="sum2" name="sum2" type="text" placeholder="Summary Line 3" class="form-control"></textarea>
                                                                        </div>
                                                                        <div class="col-sm-2">
                                                                            <button type="button" id="sumb" class="btn btn-danger"  style="margin-top: 20px">Update</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                        <div class="bs-callout bs-callout-danger">  
                                                            <form id="reseF1" action="updRea" enctype="multipart/form-data" method="post">
                                                                <div class="row">
                                                                    <h4>Research Interests</h4>
                                                                    <div class="form-group">                                                                   
                                                                        <div class="col-sm-10">
                                                                            <textarea name="reaser" id="reaser" type="text" rows="3" placeholder="Write your Research Interests" class="form-control"></textarea>
                                                                        </div>
                                                                        <div class="col-sm-1">
                                                                            <button type="button" id="rb1"  class="btn btn-danger" style="margin-top: 35px">Update</button>
                                                                        </div>
                                                                        <div class="col-sm-1">
                                                                            <div id="rlabe">
                                                                                <label id="" class="col-sm-2 control-label fa fa-check" style="font-size: 20px;text-align: center;color: red;margin-top: 35px;display:none" for="textinput"></label>\
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                        <div class="bs-callout bs-callout-danger">
                                                            <form action="" id="kun" enctype="multipart/form-data" method="post">
                                                                <h4>Currently Working</h4>
                                                                <div class="row">
                                                                    <div class="form-group">                                                                   
                                                                        <div class="col-sm-10">
                                                                            <input name="wplace" id="wplace" type="text" rows="3" placeholder="Working Place" class="form-control"/>
                                                                            <div class="row">
                                                                                <ul id="sl2">

                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-2">
                                                                            <button  type="button" id="exbtn3" class="btn btn-danger" style="margin-top: 20px">Update</button>
                                                                        </div>
                                                                        <div id="rlv3">
                                                                            <label id="" class="col-sm-2 control-label fa fa-check" style="font-size: 20px;text-align: center;color: red;display:none" for="textinput"></label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                        <div class="bs-callout bs-callout-danger">
                                                            <form action="updExp" id="expF1" enctype="multipart/form-data" method="post">
                                                                <h4>Prior Experiences</h4>
                                                                <div class="row">
                                                                    <div class="form-group">                                                                   
                                                                        <div class="col-sm-10">
                                                                            <input name="eComName" id="eComName" type="text" rows="3" placeholder="Company Name" class="form-control"/>
                                                                        </div>
                                                                        <div id="rlv3">
                                                                            <label id="" class="col-sm-2 control-label fa fa-check" style="font-size: 20px;text-align: center;color: red;display:none" for="textinput"></label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row" style="margin-top: 7px">
                                                                    <div class="form-group">                                                                   
                                                                        <div class="col-sm-10">
                                                                            <textarea name="ecDes" id="ecDes" type="text" rows="3" placeholder="Write little description" class="form-control"></textarea>
                                                                        </div>
                                                                        <!--                                                                        <label class="col-sm-2 control-label" rows="2" for="textinput"></label>-->
                                                                        <div class="col-sm-2">
                                                                            <button  type="button" id="exbtn" class="btn btn-danger" style="margin-top: 20px">Update</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>
                                                        <div class="bs-callout bs-callout-danger">
                                                            <form action="keyEx" id="FkeyEx1" enctype="multipart/form-data" method="post">
                                                                <h4>Key Expertise</h4>
                                                                <div class="row">
                                                                    <div class="form-group">                                                                   
                                                                        <div class="col-sm-10">
                                                                            <input type="text" id="kexper" name="kexper" placeholder="Your Expertise" class="form-control"/>
                                                                        </div>
                                                                        <div class="col-sm-1">
                                                                            <button type="button" id="keybtn4"  class="btn btn-danger">Update</button>
                                                                        </div>
                                                                        <div class="col-sm-1">
                                                                            <div id="ri35">
                                                                                <label id="" class="col-sm-2 control-label fa fa-check" style="font-size: 20px;text-align: center;color: red;;display:none" for="textinput"></label>
                                                                            </div>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </form>
                                                        </div>                                             
                                                        <div class="bs-callout bs-callout-danger">
                                                            <form action="updaEdu" id="eduF3" enctype="multipart/form-data" method="post">
                                                                <h4>Education</h4>
                                                                <table class="table table-striped table-responsive " id="edutbl">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>Degree</th>
                                                                            <th>Graduation Year</th>                                                                          
                                                                            <th>Alert</th>
                                                                            <th>Update</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td><input id="degree" type="text" name="degree" placeholder="Your Degree" class="form-control"/></td>
                                                                            <td><input id="year" type="text" name="year" placeholder="Graduation Year" class="form-control"/></td>                                                                            
                                                                            <td> <div id="dlab"><label id="" class="col-sm-2 control-label fa fa-check" style="font-size: 20px;text-align: center;color: red;display:none" for="textinput"></label></div></td>
                                                                            <td><button type="button" id="dbbtn" class="btn btn-danger">Update</button></td>
                                                                        </tr>

                                                                    </tbody>
                                                                </table>
                                                            </form>
                                                        </div>
                                                        <div class="bs-callout bs-callout-danger">

                                                            <h4>Featured Skills & Endorsements</h4>
                                                            <ul class="list-group">
                                                                <div class="list-group-item">
                                                                    <div class="progress" data-toggle="collapse" data-target="#clp">                                                                        
                                                                        <div data-placement="top" style="width: 80%;" 
                                                                             aria-valuemax="100" aria-valuemin="0" aria-valuenow="80" role="progressbar" class="progress-bar progress-bar-success">
                                                                            <span class="sr-only">80%</span>
                                                                            <span class="progress-type">Java/ JavaEE/ Spring Framework </span>
                                                                        </div>                                                                        
                                                                    </div>
                                                                    <form action="updFeat" id="featf8" enctype="multipart/form-data" method="post">
                                                                        <div class="row" class="clp" id="clp" style="margin-bottom: 10px">                                                                               
                                                                            <div class="col-md-4">
                                                                                <input class="form-control" id="skill_name" type="text" name="skill_name" placeholder="Skill Name" />
                                                                            </div>
                                                                            <div class="col-md-2">
                                                                                <input class="form-control" id="presentage" type="text" name="presentage"  placeholder="Skill Presentage" />
                                                                            </div>
                                                                            <div class="col-md-1">
                                                                                <div id="ffw9">
                                                                                    <label id="" class="col-sm-2 control-label fa fa-check" style="font-size: 20px;text-align: center;color: red" for="textinput"></label>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-1">
                                                                                <button type="button" id="fetbtn1" class="btn btn-danger">Update</button>
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                    <form action="addSkill" id="featf9" enctype="multipart/form-data" method="post">
                                                                        <span>Add new Skill</span>
                                                                        <div class="row" class="clp" id="clp" style="margin-bottom: 10px">                                                                               
                                                                            <div class="col-md-4">
                                                                                <input class="form-control" id="newski-name" type="text" name="newski-name" placeholder="Skill Name" />
                                                                            </div>
                                                                            <div class="col-md-2">
                                                                                <input class="form-control" id="new-presge" type="text" name="new-presge"  placeholder="Skill Presentage" />
                                                                            </div>
                                                                            <div class="col-md-1">
                                                                                <div id="ffw10">
                                                                                    <label id="" class="col-sm-2 control-label fa fa-check" style="font-size: 20px;text-align: center;color: red;display:none" for="textinput"></label>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-1">
                                                                                <button type="button" id="fetbtn2" class="btn btn-danger">Add New</button>
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                    <div class="progress-meter">
                                                                        <div style="width: 25%;" class="meter meter-left"><span class="meter-text">I suck</span></div>
                                                                        <div style="width: 25%;" class="meter meter-left"><span class="meter-text">I know little</span></div>
                                                                        <div style="width: 30%;" class="meter meter-right"><span class="meter-text">I'm a guru</span></div>
                                                                        <div style="width: 20%;" class="meter meter-right"><span class="meter-text">I''m good</span></div>
                                                                    </div>

                                                                </div>
                                                            </ul>

                                                        </div>
                                                        <div class="bs-callout bs-callout-danger">
                                                            <form action="updaAcco" id="accoF1" enctype="multipart/form-data" method="post">
                                                                <h4>Accomplishments</h4>
                                                                <table class="table table-striped table-responsive ">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>Accomplishments</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <tr>
                                                                            <td>
                                                                                <span data-toggle="collapse" data-target="#2plist">Projects</span>
                                                                                <ul id="2plist">                                                                               
                                                                                    <div class="row">
                                                                                        <div class="form-group">                                                                   
                                                                                            <div class="col-sm-10">
                                                                                                <input name="pr" id="pr" type="text" class="form-control" placeholder="Project Name" />
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="row" style="margin-top: 5px">
                                                                                        <div class="form-group">                                                                   
                                                                                            <div class="col-sm-10">
                                                                                                <textarea id="prdes" name="prdes" type="text" rows="1" placeholder="Project Description" class="form-control"></textarea>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>                                                                               
                                                                                </ul>
                                                                            </td>
                                                                        <tr>
                                                                        <tr>
                                                                            <td >
                                                                                <span data-toggle="collapse" data-target="#2clist">Courses</span>
                                                                                <ul id="2clist">
                                                                                    <div class="row">
                                                                                        <div class="form-group">                                                                   
                                                                                            <div class="col-sm-10">
                                                                                                <input name="courset" id="courset" type="text" class="form-control" placeholder="Courses Name" />
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="row" style="margin-top: 5px">
                                                                                        <div class="form-group">                                                                   
                                                                                            <div class="col-sm-10">
                                                                                                <textarea name="courseDeta" id="courseDeta" type="text" rows="1" placeholder="Courses Description" class="form-control"></textarea>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>     
                                                                                </ul>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <span data-toggle="collapse" data-target="#2llist">Languages</span>
                                                                                <ul id="2llist">
                                                                                    <div class="row">
                                                                                        <div class="form-group">                                                                   
                                                                                            <div class="col-sm-10">
                                                                                                <input name="lang" id="lang" type="text" class="form-control" placeholder="Languages" />
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>                                                                                 
                                                                                </ul>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <span data-toggle="collapse" data-target="#2cclist">Certification</span>
                                                                                <ul id="2cclist">
                                                                                    <div class="row">
                                                                                        <div class="form-group">                                                                   
                                                                                            <div class="col-sm-10">
                                                                                                <input name="certific" id="certific" type="text" class="form-control" placeholder="Certification Name" />
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="row" style="margin-top: 5px">
                                                                                        <div class="form-group">                                                                   
                                                                                            <div class="col-sm-10">
                                                                                                <textarea name="cdes" id="cdes" type="text" rows="1" placeholder="Certification Description" class="form-control"></textarea>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>    
                                                                                    <div class="row" style="margin-top: 5px">
                                                                                        <div class="col-sm-9"></div>
                                                                                        <div class="col-sm-1">
                                                                                            <div class="lstj8">
                                                                                                <label id="" class="col-sm-2 control-label fa fa-check" style="font-size: 20px;text-align: center;color: red;display:none" for="textinput"></label>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="col-sm-1">
                                                                                            <button type="button"  id="updbtn" class="btn btn-danger" id="upc">Update</button>
                                                                                        </div>
                                                                                    </div>
                                                                                </ul>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </form>
                                                        </div>

                                                    </div>
                                                </div> <!-- my profile edit view end from here sanu-->




                                                <!--company registration begins right here-->
                                                <div class="col-sm-9 prof-man" id="RegisterCompany" style="display: none">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading resume-heading">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="panel with-nav-tabs panel-default">
                                                                        <div class="panel-heading">
                                                                            <ul class="nav nav-tabs">
                                                                                <li class="active"><a href="#tab1default" data-toggle="tab">My Companies</a></li>
                                                                                <li><a href="#tab2default" data-toggle="tab">Register new Company</a></li>
                                                                                <li><a href="#tab3default" data-toggle="tab">Update My Comapany</a></li>                                                                                                                                                   
                                                                            </ul>
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="tab-content">
                                                                                <!--<main panel of job registration beginsa-->
                                                                                <div class="tab-pane fade in active" id="tab1default">
                                                                                    <div class="row" style="min-height: 350px;">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">My Companies</h3>                                                                         
                                                                                            <hr class="bg-danger" >
                                                                                        </div>
                                                                                    </div>  
                                                                                    <div class="row">

                                                                                    </div>  
                                                                                </div>  <!--<main panel of job registration end-->

                                                                                <!--regsiter a new company panel-->
                                                                                <div class="tab-pane fade" id="tab2default">
                                                                                    <div class="row">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">Register Company</h3>                                                                         
                                                                                            <hr class="bg-danger" >
                                                                                        </div>
                                                                                    </div>  
                                                                                    <div class="row">
                                                                                        <div class="col-md-10 col-md-offset-1">
                                                                                            <form class="form-horizontal" id="cpyAdF" action="addcompany" method="post" role="form">
                                                                                                <fieldset>

                                                                                                    <!-- Form Name -->
                                                                                                    <legend style="font-size: 15px;font-weight: 700">Register Your Company Today</legend>

                                                                                                    <!-- Text input-->
                                                                                                    <div class="form-group">
                                                                                                        <label class="col-sm-2 control-label" for="textinput">Name</label>
                                                                                                        <div class="col-sm-5">
                                                                                                            <input type="text" placeholder="Comapny Name" id="coName" name="coName" class="form-control">
                                                                                                        </div>
                                                                                                        <!--                                                                                                        <label class="col-sm-2 control-label" for="textinput">Title</label>-->
                                                                                                        <div class="col-sm-5">
                                                                                                            <input type="text" placeholder="Comapany Title" id="coTitle" name="coTitle" class="form-control">
                                                                                                        </div>
                                                                                                    </div>

                                                                                                    <!-- Text input-->
                                                                                                    <div class="form-group">
                                                                                                        <label class="col-sm-2 control-label" for="textinput">Description</label>
                                                                                                        <div class="col-sm-10">
                                                                                                            <textarea type="text" id="comdex" class="form-control" name="comDescription" id="comDescription" rows="3"> </textarea>
                                                                                                        </div>
                                                                                                    </div>



                                                                                                    <!-- Text input-->
                                                                                                    <div class="form-group">
                                                                                                        <label class="col-sm-2 control-label" for="textinput">Company Size</label>
                                                                                                        <div class="col-sm-4">
                                                                                                            <select placeholder="Company Size" name="comSize" class="form-control">
                                                                                                                <option>1-9 (Micro)</option>
                                                                                                                <option>10-49 (Small)</option>
                                                                                                                <option>50-249 (Medium)</option>
                                                                                                                <option>250+ (Large)</option>
                                                                                                            </select>   
                                                                                                        </div>

                                                                                                        <label class="col-sm-2 control-label"  for="textinput">Website</label>
                                                                                                        <div class="col-sm-4">
                                                                                                            <input type="text" id="comweba" placeholder="Comapny WebSite" name="comWebsite" id="comWebsite" class="form-control">
                                                                                                        </div>
                                                                                                    </div>



                                                                                                    <!-- Text input-->
                                                                                                    <div class="form-group">
                                                                                                        <label class="col-sm-2 control-label" for="textinput">Year</label>
                                                                                                        <!-- cdn for modernizr, if you haven't included it already -->
                                                                                                        <script src="http://cdn.jsdelivr.net/webshim/1.12.4/extras/modernizr-custom.js"></script>
                                                                                                        <!-- polyfiller file to detect and load polyfills -->
                                                                                                        <script src="http://cdn.jsdelivr.net/webshim/1.12.4/polyfiller.js"></script>
                                                                                                        <script>
                                                                                                            webshims.setOptions('waitReady', false);
                                                                                                            webshims.setOptions('forms-ext', {types: 'date'});
                                                                                                            webshims.polyfill('forms forms-ext');
                                                                                                        </script>
                                                                                                        <div class="col-sm-5">                                                                                                     
                                                                                                            <input  name="comYearOfFound" id="comYearOfFound" class="form-control" type="date"/>
                                                                                                        </div>
                                                                                                        <div class="col-sm-5">
                                                                                                            <select placeholder="Comapny Type" name="comType" id="comType" class="form-control">
                                                                                                                <option>Private Company Limited by Shares</option>
                                                                                                                <option>Ready Made Private Limited Company</option>
                                                                                                                <option>Private Company Limited by Guarantee</option>
                                                                                                                <option>Public Limited Company</option>
                                                                                                                <option>Limited Liability Partnership</option>
                                                                                                                <option>Flat Management Company</option>
                                                                                                                <option>Right to Manage Company</option>
                                                                                                                <option>Community Interest Company</option>
                                                                                                            </select>
                                                                                                        </div>
                                                                                                    </div>

                                                                                                    <!-- Text input-->
                                                                                                    <div class="form-group">
                                                                                                        <label class="col-sm-2 control-label" for="textinput">Address</label>
                                                                                                        <div class="col-sm-10">
                                                                                                            <input type="text" placeholder="Comapny Address" name="comAddress" id="comAddress" class="form-control">
                                                                                                        </div>
                                                                                                    </div>

                                                                                                    <!-- Text input-->
                                                                                                    <div class="form-group">
                                                                                                        <ul class="submenu vgvgk" id=""><li style="list-style: none;list-style-type: none"><a href="#" id="cvx"></a></li></ul>

                                                                                                        <label class="col-sm-2 control-label" for="textinput">Company Skills</label>
                                                                                                        <div class="col-sm-10">
                                                                                                            <input type="text" placeholder="Comapny Using Techonologies" name="skillcomp" id="comskees" class="form-control">
                                                                                                        </div>                                                                                                     
                                                                                                    </div>
                                                                                                    <ul class="" style="list-style: none;list-style-type: none;margin-top: -25px;" id="jvfk">                                                                                                       
                                                                                                    </ul>


                                                                                                    <div class="form-group">
                                                                                                        <div class="col-sm-offset-2 col-sm-10">
                                                                                                            <div class="pull-right">
                                                                                                                <button type="button" id="cancelBtnf" class="btn btn-warning">Cancel</button>
                                                                                                                <button type="button" id="saveBtnf" class="btn btn-danger">Register Company</button>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>

                                                                                                </fieldset>
                                                                                            </form>
                                                                                        </div><!-- /.col-lg-12 -->
                                                                                    </div>
                                                                                </div> <!--regsiter a new company panel end-->


                                                                                <div class="tab-pane fade" id="tab3default">
                                                                                    <div class="row">
                                                                                        <div class="row" style="min-height: 350px;">
                                                                                            <div class="col-md-12">
                                                                                                <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">...............</h3>                                                                         
                                                                                                <hr class="bg-danger" >
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
                                                </div> <!-- column end end-->


                                                <!--job adding main panel begins-->
                                                <div class="col-sm-9 prof-man" id="RegisterVacancy"  style="display: none">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading resume-heading">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="panel with-nav-tabs panel-default">
                                                                        <div class="panel-heading">
                                                                            <ul class="nav nav-tabs">
                                                                                <li class="active"><a href="#tab1default1" data-toggle="tab">My Current Jobs</a></li>
                                                                                <li><a href="#tab2default2" id="rered" data-toggle="tab">Job Registrations</a></li>
                                                                                <li><a href="#tab3default3" data-toggle="tab">Edit Vacancy</a></li>
                                                                                <li><a href="#tab4default4" data-toggle="tab">Search Vacancy</a></li>
                                                                                <li><a href="#tab5default5" data-toggle="tab">View All Vacancies</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="tab-content">
                                                                                <!--<My Current Jobs panel begins-->
                                                                                <div class="tab-pane fade in active" id="tab1default1">
                                                                                    <div class="row" style="min-height: 350px;">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">My Current Jobs</h3>                                                                         
                                                                                            <hr class="bg-danger" >
                                                                                        </div>
                                                                                    </div>  
                                                                                </div>

                                                                                <!--regsiter a job-->
                                                                                <div class="tab-pane fade" id="tab2default2">
                                                                                    <div class="row">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">Job Registration</h3>                                                                         
                                                                                            <hr class="bg-danger" >
                                                                                        </div>
                                                                                    </div>  
                                                                                    <div class="row">
                                                                                        <div class="col-md-10 col-md-offset-1">
                                                                                            <form class="form-horizontal" id="jregF"  method="post" enctype="multipart/form-data" role="form">
                                                                                                <fieldset>
                                                                                                    <!-- Form Name -->
                                                                                                    <legend style="font-size: 15px;font-weight: 700">Register Vacancies</legend>
                                                                                                    <!-- Text input-->
                                                                                                    <div class="form-group">
                                                                                                        <label class="col-sm-2 control-label" for="textinput">Select Company</label>
                                                                                                        <div class="col-sm-5">
                                                                                                            <select  name="coNamej" id="coNamej" class="form-control"></select>                                                                               
                                                                                                        </div>  
                                                                                                        <div class="col-sm-5">
                                                                                                            <label>
                                                                                                                <a class="btn btn-primary"><span class="fa fa-camera"></span> Upload Job Banner
                                                                                                                    <input type="file" name="jbup" id="jbup" style="display:none"/>
                                                                                                                </a>
                                                                                                            </label>
                                                                                                        </div>  
                                                                                                    </div>                                                                                                  
                                                                                                    <!-- Text input-->
                                                                                                    <div class="form-group">
                                                                                                        <ul class="submenu vgvgk" id=""><li style="list-style: none;list-style-type: none"><a href="#" id="cvx2"></a></li></ul>
                                                                                                        <label class="col-sm-2 control-label" for="textinput">Required Skill</label>
                                                                                                        <div class="col-sm-4">
                                                                                                            <input type="text" placeholder="Required Skill" name="rskill" id="rskill" class="form-control">
                                                                                                        </div>

                                                                                                        <label class="col-sm-2 control-label"  for="textinput">Role</label>
                                                                                                        <div class="col-sm-4">
                                                                                                            <input type="text" placeholder="Job Role" name="jrole"  id="jrole" class="form-control">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="row">
                                                                                                        <ul class="" style="list-style: none;list-style-type: none;margin-top: -25px;" id="jvfk2">                                                                                                       
                                                                                                        </ul>
                                                                                                    </div>



                                                                                                    <!-- Text input-->
                                                                                                    <div class="form-group">
                                                                                                        <label class="col-sm-2 control-label" for="textinput">Description</label>
                                                                                                        <div class="col-sm-10">
                                                                                                            <textarea type="text" placeholder="Job Description" class="form-control" name="joDes" id="joDes" rows="3"> </textarea>
                                                                                                        </div>
                                                                                                    </div>


                                                                                                    <!-- Text input-->
                                                                                                    <div class="form-group">
                                                                                                        <label class="col-sm-2 control-label" for="textinput">Title</label>
                                                                                                        <div class="col-sm-5">
                                                                                                            <input type="text" placeholder="Job Title" name="jtitle" id="jtitle" class="form-control">
                                                                                                        </div>
                                                                                                    </div>

                                                                                                    <!-- Text input-->
                                                                                                    <div class="form-group">
                                                                                                        <label class="col-sm-2 control-label" for="textinput">Seniority Level</label>
                                                                                                        <div class="col-sm-10">
                                                                                                            <select type="text" placeholder="Seniority Level" name="slevel" id="slevel" class="form-control">
                                                                                                                <option>Senior</option>
                                                                                                                <option>Associate</option>
                                                                                                                <option>Trainee</option>
                                                                                                                <option>Intern</option>
                                                                                                                <option>2 year Experiance or More</option>
                                                                                                                <option>5 year Experiance or More</option>
                                                                                                            </select>
                                                                                                        </div>
                                                                                                    </div>

                                                                                                    <div class="form-group">
                                                                                                        <div class="col-sm-offset-2 col-sm-10">
                                                                                                            <div class="pull-right">
                                                                                                                <button type="button"  id="jcan" class="btn btn-warning">Cancel</button>
                                                                                                                <button type="button" id="jsaves" class="btn btn-danger">Register Job</button>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>

                                                                                                </fieldset>
                                                                                            </form>
                                                                                        </div><!-- /.col-lg-12 -->
                                                                                    </div>
                                                                                </div>


                                                                                <div class="tab-pane fade" id="tab3default3">
                                                                                    <div class="row" style="min-height: 350px;">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">..........</h3>                                                                         
                                                                                            <hr class="bg-danger" >
                                                                                        </div>
                                                                                    </div>  
                                                                                </div>
                                                                                <div class="tab-pane fade" id="tab4default4">
                                                                                    <div class="row" style="min-height: 350px;">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">..........</h3>                                                                         
                                                                                            <hr class="bg-danger" >
                                                                                        </div>
                                                                                    </div>  
                                                                                </div>
                                                                                <div class="tab-pane fade" id="tab5default5">
                                                                                    <div class="row" style="min-height: 350px;">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">..........</h3>                                                                         
                                                                                            <hr class="bg-danger" >
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
                                                </div> <!-- column end end-->


                                                <!--friends view adding-->
                                                <div class="col-sm-9 prof-man" id="ViewFriends" style="display: none">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading resume-heading">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="panel with-nav-tabs panel-default">
                                                                        <div class="panel-heading">
                                                                            <ul class="nav nav-tabs">
                                                                                <li class="active"><a href="#tab1defau1" data-toggle="tab">My Friends</a></li>
                                                                                <li><a href="#tab2defau2" data-toggle="tab">Friend Suggestions</a></li>
                                                                                <li><a href="#tab3defau3" data-toggle="tab">Recently Added</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="tab-content">
                                                                                <!--<onr-->
                                                                                <div class="tab-pane fade in active" id="tab1defau1">
                                                                                    <div class="row">
                                                                                        <div class="row" style="min-height: 350px;">
                                                                                            <div class="col-md-12">
                                                                                                <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">My Friends Circle</h3>                                                                         
                                                                                                <hr class="bg-danger" >
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="container-fluid" style="" id="frn">

                                                                                        </div>
                                                                                    </div>  
                                                                                </div>


                                                                                <div class="tab-pane fade" id="tab2defau2">
                                                                                    <div class="row" style="min-height: 350px;">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">Friends Suggestions</h3>                                                                         
                                                                                            <hr class="bg-danger" >
                                                                                        </div>
                                                                                    </div>  
                                                                                </div>

                                                                                <!--recently aded-->
                                                                                <div class="tab-pane fade" id="tab3defau3">
                                                                                    <div class="row" style="min-height: 350px;">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">Recently Added Friends</h3>                                                                         
                                                                                            <hr class="bg-danger" >
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
                                                </div> <!-- column end end-->

                                                <!--photoes view and managing-->
                                                <div class="col-sm-9 prof-man" id="Photos" style="display: none">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading resume-heading">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="panel with-nav-tabs panel-default">
                                                                        <div class="panel-heading">
                                                                            <ul class="nav nav-tabs">
                                                                                <li class="active"><a href="#tabbi" data-toggle="tab">My Photoes</a></li>   
                                                                                <li class="active"><a href="#tabbi" data-toggle="tab">Shared Photoes</a></li>   
                                                                            </ul>
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="tab-content">
                                                                                <!--<onr-->
                                                                                <div class="tab-pane fade in active" id="tabbi">
                                                                                    <div class="col-md-12">
                                                                                        <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">My Photoes</h3>                                                                         
                                                                                        <hr class="bg-danger" >
                                                                                    </div>
                                                                                    <div  id="picload"></div>                                                                                  
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div> 

                                                        </div>                                                                                                             
                                                    </div>
                                                </div> <!-- column end end-->

                                                <!--videos view and managing-->
                                                <div class="col-sm-9 prof-man" id="Videos" style="display: none">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading resume-heading">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="panel with-nav-tabs panel-default">
                                                                        <div class="panel-heading">
                                                                            <ul class="nav nav-tabs">
                                                                                <li class="active"><a href="#tabbi" data-toggle="tab">My Videos</a></li>  
                                                                                <li class="active"><a href="#tabbi" data-toggle="tab">Shared Videos</a></li>  
                                                                            </ul>
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="tab-content">
                                                                                <!--<onr-->
                                                                                <div class="tab-pane fade in active" id="tabbi">
                                                                                    <div class="col-md-12">
                                                                                        <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">My Videos</h3>                                                                         
                                                                                        <hr class="bg-danger" >
                                                                                    </div>
                                                                                    <div class="row">
                                                                                        <div class="wrapper">
                                                                                            <div class="column">
                                                                                                <div class="inner"></div>
                                                                                            </div>
                                                                                            <div class="column">
                                                                                                <div class="inner"></div>
                                                                                            </div>
                                                                                            <div class="column">
                                                                                                <div class="inner"></div>
                                                                                            </div>
                                                                                            <div class="column">
                                                                                                <div class="inner"></div>
                                                                                            </div>
                                                                                            <div class="column">
                                                                                                <div class="inner"></div>
                                                                                            </div>
                                                                                            <div class="column">
                                                                                                <div class="inner"></div>
                                                                                            </div>
                                                                                            <div class="column">
                                                                                                <div class="inner"></div>
                                                                                            </div>
                                                                                            <div class="column">
                                                                                                <div class="inner"></div>
                                                                                            </div>
                                                                                            <div class="column">
                                                                                                <div class="inner"></div>
                                                                                            </div>
                                                                                            <div class="column">
                                                                                                <div class="inner"></div>
                                                                                            </div>
                                                                                            <div class="column">
                                                                                                <div class="inner"></div>
                                                                                            </div>
                                                                                            <div class="column">
                                                                                                <div class="inner"></div>
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
                                                </div> <!-- column end end-->


                                                <!--events view and managing-->
                                                <div class="col-sm-9 prof-man" id="Event3" style="display: none">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading resume-heading">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="panel with-nav-tabs panel-default">
                                                                        <div class="panel-heading">
                                                                            <ul class="nav nav-tabs">
                                                                                <li class="active"><a href="#1tab1default" data-toggle="tab">My Events</a></li>
                                                                                <li><a href="#2tab2default" data-toggle="tab">Event Registrations</a></li>
                                                                                <li><a href="#3tab3default" data-toggle="tab">Edit Event</a></li>
                                                                                <li><a href="#4tab4default" data-toggle="tab">Search Event</a></li>
                                                                                <li><a href="#5tab5default" data-toggle="tab">View All Events</a></li>
                                                                            </ul>
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="tab-content">
                                                                                <!--<onr-->
                                                                                <div class="tab-pane fade in active" id="1tab1default">
                                                                                    <div class="row">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">..........</h3>                                                                         
                                                                                            <hr class="bg-danger" >
                                                                                        </div>
                                                                                    </div>  
                                                                                </div>

                                                                                <!--regsiter a company-->
                                                                                <div class="tab-pane fade" id="2tab2default">
                                                                                    <div class="row">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">..........</h3>                                                                         
                                                                                            <hr class="bg-danger" >
                                                                                        </div>
                                                                                    </div>
                                                                                </div>


                                                                                <div class="tab-pane fade" id="3tab3default">
                                                                                    <div class="row">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">..........</h3>                                                                         
                                                                                            <hr class="bg-danger" >
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="tab-pane fade" id="4tab4default">
                                                                                    <div class="row">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">..........</h3>                                                                         
                                                                                            <hr class="bg-danger" >
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="tab-pane fade" id="5tab5default">
                                                                                    <div class="row">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">..........</h3>                                                                         
                                                                                            <hr class="bg-danger" >
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
                                                </div> <!-- column end end-->

                                                <!--likes view and managing-->
                                                <div class="col-sm-9 prof-man" id="Likes" style="display: none">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading resume-heading">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="panel with-nav-tabs panel-default">
                                                                        <div class="panel-heading">
                                                                            <ul class="nav nav-tabs">
                                                                                <li class="active"><a href="#tabbi" data-toggle="tab">Active Log</a></li>                                                                    
                                                                            </ul>
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="tab-content">
                                                                                <!--<onr-->
                                                                                <div class="tab-pane fade in active" id="tabbi">
                                                                                    <div class="row">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">My Active Log</h3>                                                                         
                                                                                            <hr class="bg-danger" >
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
                                                </div> <!-- column end end-->

                                                <!--bacup view and managing-->
                                                <div class="col-sm-9 prof-man" id="Backup" style="display: none">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading resume-heading">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="panel with-nav-tabs panel-default">
                                                                        <div class="panel-heading">
                                                                            <ul class="nav nav-tabs">
                                                                                <li class="active"><a href="#tabbi" data-toggle="tab">Bacup Managemet</a></li>                                                                    
                                                                            </ul>
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="tab-content">
                                                                                <!--<onr-->
                                                                                <div class="tab-pane fade in active" id="tabbi">
                                                                                    <div class="row">
                                                                                        <div class="col-md-12">
                                                                                            <h3 style="padding: 0px 0px 0px 10px;margin-top:-50px">Backup Settings</h3>                                                                         
                                                                                            <hr class="bg-danger" >
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
                                                </div> <!-- column end end-->

                                            </div>  <!-- 2nd row end-->
                                        </div>
                                    </div>
                                </div>  <!-- My Profile main tag end-->                               

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
        <script type="text/javascript" src="resources/ajax/sanu-ajax-user.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-profile.js"></script>
        <script type="text/javascript" src="resources/validation/sanu-company.js"></script>
        <script type="text/javascript" src="resources/validation/sanu-job-p.js"></script>
        <script type="text/javascript" src="resources/validation/sanu-pro-m.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-refresh.js"></script>
        <script type="text/javascript" src="resources/js/websocket.js"></script>
    </body>
</html>
