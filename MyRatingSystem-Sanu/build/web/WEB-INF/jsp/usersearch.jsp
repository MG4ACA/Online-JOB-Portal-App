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
        if (!session.isNew() && session.getAttribute("seo") != null) {
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
                                                        <div class="cardheader img-responsive" style="background-image: url('resources/profile/${seo.wp}')">
                                                        </div>
                                                        <div class="avatar">
                                                            <img alt="" src="resources/profile/${seo.cf}">
                                                        </div>
                                                        <div class="info">
                                                            <div class="title">
                                                                <a target="_blank" href="h#">${seo.firstName} ${seo.lastName}</a>
                                                            </div>
                                                            <div class="desc">${seo.possition}</div>
                                                            <div class="desc">Curious developer</div>
                                                            <div class="desc">Tech geek</div>
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
                                                    <a  class="btn btn-danger btn-block btn-compose-email" id="cvclick2">View CV</a>                                                                                                        
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
                                                                            <img class="img-circle img-responsive" alt="" src="resources/profile/${seo.cf}" style="width: 238.25px;height: 238.25px;max-height: 238.25px;-webkit-border-radius: 50%;-moz-border-radius: 50%;border-radius: 50%;">
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
                                                                            <li class="list-group-item">${seo.firstName} ${cuser.lastName}</li>
                                                                            <li class="list-group-item">${seo.possition}</li>
                                                                            <li class="list-group-item">${seo.country} </li>
                                                                            <li class="list-group-item"><i class="fa fa-phone"></i> ${seo.tp} </li>
                                                                            <li class="list-group-item"><i class="fa fa-envelope"></i>${seo.email}</li>
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







                                                <!--company registration begins right here-->
                                                <div class="col-sm-9 prof-man" id="RegisterCompany" style="display: none">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading resume-heading">
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="panel with-nav-tabs panel-default">
                                                                        <div class="panel-heading">
                                                                            <ul class="nav nav-tabs">
                                                                                <li class="active"><a href="#tab1default" data-toggle="tab">My Company</a></li>

                                                                            </ul>
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="tab-content">
                                                                                <!--<main panel of job registration beginsa-->
                                                                                <div class="tab-pane fade in active" id="tab1default">
                                                                                    <div class="row">

                                                                                    </div>  
                                                                                </div>  <!--<main panel of job registration end-->                                                                                                                                                                                                                                         
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

                                                                            </ul>
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="tab-content">
                                                                                <!--<My Current Jobs panel begins-->
                                                                                <div class="tab-pane fade in active" id="tab1default1">
                                                                                    <div class="row">
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

                                                                                    </div>  
                                                                                </div>


                                                                                <div class="tab-pane fade" id="tab2defau2">
                                                                                    <div class="row">

                                                                                    </div>  
                                                                                </div>

                                                                                <!--recently aded-->
                                                                                <div class="tab-pane fade" id="tab3defau3">
                                                                                    <div class="row">

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
                                                                                    <div class="row" id="picload"></div>                                                                                  
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
                                                                            </ul>
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="tab-content">
                                                                                <!--<onr-->
                                                                                <div class="tab-pane fade in active" id="1tab1default">
                                                                                    <div class="row">

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
                                                                                <li class="active"><a href="#tabbi" data-toggle="tab">Most Liked</a></li>                                                                    
                                                                            </ul>
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="tab-content">
                                                                                <!--<onr-->
                                                                                <div class="tab-pane fade in active" id="tabbi">
                                                                                    <div class="row">

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
        </div> 


        <!--/////////////////////-->
        <script type="text/javascript" src="resources/js/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap.js"></script>
        <script type="text/javascript" src="resources/js/alertify.js"></script>
        <script type="text/javascript" src="resources/js/script1-sanu.js"></script>
        <script type="text/javascript" src="resources/js/script2-sanu.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-post.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-com-search.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-refresh.js"></script>
        <script type="text/javascript" src="resources/js/websocket.js"></script>
    </body>
</html>
