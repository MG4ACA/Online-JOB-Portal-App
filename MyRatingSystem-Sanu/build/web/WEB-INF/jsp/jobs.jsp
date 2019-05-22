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
        <title>Jobs</title>
        <link rel="icon" type="image/png" href="resources/icon/fav-ico.png">
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap-theme.css">
        <link rel="stylesheet" type="text/css" href="resources/css/font-awesome.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/style1-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style2-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style3-sanu.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/style5-sanu.css" >  
        <link rel="stylesheet" type="text/css" href="resources/css/mywall.css" >  
        <link rel="stylesheet" type="text/css" href="resources/css/style7-sanu.css">
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
                            <div class="main" id="cds" style="margin-top: 40px; z-index: 2">                               
                                <!--Jobs-->
                                <div class="Jobs" style="display: block">
                                    <div class="page-content-wrapper">
                                        <div class="page-content inset">
                                            <div class="row">
                                                <!--//////////-->
                                                <div class="dfg-sanu">
                                                    <div class="">
                                                        <h2 style="color:green;font-family:Angsana New;text-align:center;"></h2>
                                                    </div>
                                                    <div class="" style="height:300;">
                                                        <div class="panel-footer"  id="foundationbanner" style="background-image: url('resources/profile/${cuser.wp}')">
                                                            <button type="button" class="btn btn-success btn-lg pull-right" style="position:bottom;margin-top:0;"> <i class="fa fa-dollar fa-lg"></i> Donate Now</button>
                                                            <br>
                                                            <a href=""> <img src="https://image.freepik.com/free-vector/people-avatars_23-2147501881.jpg" class="img-thumbnail hidden-xs" height="280" width="200" style="margin-top:130;"> </a>	
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="">
                                                        <div class="panel-footer">
                                                            <ol class="breadcrumb pull-right">
                                                                <li><a href="Cvm-home.html" data-toggle="tooltip" data-placement="top"title="Home"> Home </a></li>
                                                                <li><a href="Cvm-admission.html#">Jobs Available In My Area</a></li>
                                                                <li><a href="Cvm-alumni.html">Jobs Mach For me</a></li>
                                                                <li><a href="Cvm-history.html" data-toggle="tooltip" data-placement="top"title="Know about the history ofcvm and milestone">All Jobs</a></li>
                                                                <li><a href="Cvm-V&M.html">Latest Aded Jobs</a></li>
                                                                <li><a href="Cvm-facilities.html">Today Top 10 Jobs</a></li>
                                                            </ol>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="">
                                                        <div class="row">
                                                            <div class="col-lg-3 hidden-sm hidden-xs">
                                                                <div class="panel-footer" style="height: 1105px;overflow-x: auto">
                                                                    <a class="twitter-timeline" href="https://twitter.com/My_Ratings">Tweets by My_Ratings</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>                                                              
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-9">
                                                                <div class="panel-footer" style="height:auto;max-width:1080px;height: auto;min-height: 1080px;overflow-x: auto">
                                                                    <h5 class="text-info"><b> JOB UPDATES </b></h5>
                                                                    <div class="tabbable-panel">
                                                                        <div class="tabbable-line">
                                                                            <ul class="nav nav-tabs ">
                                                                                <li class="active"><a href="#tab_default_1" data-toggle="tab">Latest Jobs</a></li>
                                                                                <li><a href="#tab_default_2" data-toggle="tab">My Jobs</a></li>
                                                                                <li><a href="#tab_default_3" data-toggle="tab">My Companies</a></li>
                                                                                <li><a href="#tab_default_4" data-toggle="tab">Search For Jobs</a></li>                                                                  
                                                                            </ul>
                                                                            <div class="tab-content">
                                                                                <div class="tab-pane active" id="tab_default_1" active>
                                                                                    <!--//////////////////-->
                                                                                    <div class="row">
                                                                                        <section class="team-sec" >
                                                                                            <div class="sanud">   
                                                                                                <h3 style="padding: 10px">Latest Jobs</h3>
                                                                                                <div class="row" id="">
                                                                                                    <div id="latesetJoba">
                                                                                                        <div id="carousel-example" style="margin-top:-20px;" class="carousel slide team team-web-view" data-ride="carousel">
                                                                                                            <div class="carousel-line">
                                                                                                                <div class="controls pull-right">
                                                                                                                    <a class="left fa fa-angle-left btn" href="#carousel-example" data-slide="prev"></a><a class="right fa fa-angle-right btn " href="#carousel-example" data-slide="next"></a>                                                                                                                                                                                                     </div>                                                                                                                                                                                                      </div>
                                                                                                            <!-- Wrapper for slides -->
                                                                                                            <div class="carousel-inner">
                                                                                                                <div class="item active">
                                                                                                                    <div class="row">
                                                                                                                        <div class="col-sm-3">
                                                                                                                            <div class="col-item">
                                                                                                                                <!--////////////////-->
                                                                                                                                <div class="">
                                                                                                                                    <div class="view">
                                                                                                                                        <div class="caption">
                                                                                                                                            <p>47LabsDesign</p>
                                                                                                                                            <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                                                            <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                                                        </div>
                                                                                                                                        <img src="http://24.media.tumblr.com/273167b30c7af4437dcf14ed894b0768/tumblr_n5waxesawa1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                                                    </div>
                                                                                                                                    <div class="info">
                                                                                                                                        <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                                                        <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                                                    </div>
                                                                                                                                    <div class="stats turqbg">
                                                                                                                                        <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                                                        <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                                <!--////////////////////////-->
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <div class="col-sm-3">
                                                                                                                            <div class="">
                                                                                                                                <div class="view">
                                                                                                                                    <div class="caption">
                                                                                                                                        <p>47LabsDesign</p>
                                                                                                                                        <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                                                        <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                                                    </div>
                                                                                                                                    <img src="http://24.media.tumblr.com/282fadab7d782edce9debf3872c00ef1/tumblr_n3tswomqPS1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                                                </div>
                                                                                                                                <div class="info">
                                                                                                                                    <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                                                    <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                                                </div>
                                                                                                                                <div class="stats turqbg">
                                                                                                                                    <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                                                    <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <div class="col-sm-3">
                                                                                                                            <div class="">
                                                                                                                                <div class="view">
                                                                                                                                    <div class="caption">
                                                                                                                                        <p>47LabsDesign</p>
                                                                                                                                        <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                                                        <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                                                    </div>
                                                                                                                                    <img src="http://24.media.tumblr.com/282fadab7d782edce9debf3872c00ef1/tumblr_n3tswomqPS1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                                                </div>
                                                                                                                                <div class="info">
                                                                                                                                    <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                                                    <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                                                </div>
                                                                                                                                <div class="stats turqbg">
                                                                                                                                    <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                                                    <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <div class="col-sm-3">
                                                                                                                            <div class="">
                                                                                                                                <div class="view">
                                                                                                                                    <div class="caption">
                                                                                                                                        <p>47LabsDesign</p>
                                                                                                                                        <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                                                        <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                                                    </div>
                                                                                                                                    <img src="http://24.media.tumblr.com/282fadab7d782edce9debf3872c00ef1/tumblr_n3tswomqPS1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                                                </div>
                                                                                                                                <div class="info">
                                                                                                                                    <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                                                    <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                                                </div>
                                                                                                                                <div class="stats turqbg">
                                                                                                                                    <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                                                    <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                                <div class="item">
                                                                                                                    <div class="row">
                                                                                                                        <div class="col-sm-3">
                                                                                                                            <div class="">
                                                                                                                                <div class="view">
                                                                                                                                    <div class="caption">
                                                                                                                                        <p>47LabsDesign</p>
                                                                                                                                        <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                                                        <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                                                    </div>
                                                                                                                                    <img src="http://24.media.tumblr.com/282fadab7d782edce9debf3872c00ef1/tumblr_n3tswomqPS1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                                                </div>
                                                                                                                                <div class="info">
                                                                                                                                    <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                                                    <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                                                </div>
                                                                                                                                <div class="stats turqbg">
                                                                                                                                    <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                                                    <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <div class="col-sm-3">
                                                                                                                            <div class="">
                                                                                                                                <div class="view">
                                                                                                                                    <div class="caption">
                                                                                                                                        <p>47LabsDesign</p>
                                                                                                                                        <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                                                        <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                                                    </div>
                                                                                                                                    <img src="http://24.media.tumblr.com/282fadab7d782edce9debf3872c00ef1/tumblr_n3tswomqPS1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                                                </div>
                                                                                                                                <div class="info">
                                                                                                                                    <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                                                    <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                                                </div>
                                                                                                                                <div class="stats turqbg">
                                                                                                                                    <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                                                    <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <div class="col-sm-3">
                                                                                                                            <div class="">
                                                                                                                                <div class="view">
                                                                                                                                    <div class="caption">
                                                                                                                                        <p>47LabsDesign</p>
                                                                                                                                        <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                                                        <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                                                    </div>
                                                                                                                                    <img src="http://24.media.tumblr.com/282fadab7d782edce9debf3872c00ef1/tumblr_n3tswomqPS1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                                                </div>
                                                                                                                                <div class="info">
                                                                                                                                    <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                                                    <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                                                </div>
                                                                                                                                <div class="stats turqbg">
                                                                                                                                    <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                                                    <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <div class="col-sm-3">
                                                                                                                            <div class="">
                                                                                                                                <div class="view">
                                                                                                                                    <div class="caption">
                                                                                                                                        <p>47LabsDesign</p>
                                                                                                                                        <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                                                        <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                                                    </div>
                                                                                                                                    <img src="http://24.media.tumblr.com/282fadab7d782edce9debf3872c00ef1/tumblr_n3tswomqPS1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                                                </div>
                                                                                                                                <div class="info">
                                                                                                                                    <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                                                    <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                                                </div>
                                                                                                                                <div class="stats turqbg">
                                                                                                                                    <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                                                    <span class="fa fa-eye pull-right"> <strong>137</strong></span>
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
                                                                                        </section>
                                                                                    </div>
                                                                                    <!--//////////////////////-->
                                                                                    <div class="row sanud2">                                                                                        
                                                                                        <div class="" style="margin-top:-20px;" >                                                                
                                                                                            <h3 style="padding: 5px 11px 0px">Jobs Circle</h3>
                                                                                            <div class="" id="loadjss">
                                                                                                <div class="col-md-3">
                                                                                                    <div class="view">
                                                                                                        <div class="caption">
                                                                                                            <p>47LabsDesign</p>
                                                                                                            <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                            <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                        </div>
                                                                                                        <img src="http://24.media.tumblr.com/273167b30c7af4437dcf14ed894b0768/tumblr_n5waxesawa1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                    </div>
                                                                                                    <div class="info">
                                                                                                        <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                        <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                    </div>
                                                                                                    <div class="stats turqbg">
                                                                                                        <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                        <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-md-3">
                                                                                                    <div class="view">
                                                                                                        <div class="caption">
                                                                                                            <p>47LabsDesign</p>
                                                                                                            <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                            <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                        </div>
                                                                                                        <img src="http://24.media.tumblr.com/273167b30c7af4437dcf14ed894b0768/tumblr_n5waxesawa1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                    </div>
                                                                                                    <div class="info">
                                                                                                        <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                        <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                    </div>
                                                                                                    <div class="stats turqbg">
                                                                                                        <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                        <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-md-3">
                                                                                                    <div class="view">
                                                                                                        <div class="caption">
                                                                                                            <p>47LabsDesign</p>
                                                                                                            <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                            <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                        </div>
                                                                                                        <img src="http://24.media.tumblr.com/273167b30c7af4437dcf14ed894b0768/tumblr_n5waxesawa1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                    </div>
                                                                                                    <div class="info">
                                                                                                        <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                        <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                    </div>
                                                                                                    <div class="stats turqbg">
                                                                                                        <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                        <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-md-3">
                                                                                                    <div class="view">
                                                                                                        <div class="caption">
                                                                                                            <p>47LabsDesign</p>
                                                                                                            <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                            <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                        </div>
                                                                                                        <img src="http://24.media.tumblr.com/282fadab7d782edce9debf3872c00ef1/tumblr_n3tswomqPS1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                    </div>
                                                                                                    <div class="info">
                                                                                                        <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                        <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                    </div>
                                                                                                    <div class="stats turqbg">
                                                                                                        <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                        <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-md-3">
                                                                                                    <div class="view">
                                                                                                        <div class="caption">
                                                                                                            <p>47LabsDesign</p>
                                                                                                            <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                            <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                        </div>
                                                                                                        <img src="http://24.media.tumblr.com/282fadab7d782edce9debf3872c00ef1/tumblr_n3tswomqPS1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                    </div>
                                                                                                    <div class="info">
                                                                                                        <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                        <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                    </div>
                                                                                                    <div class="stats turqbg">
                                                                                                        <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                        <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-md-3">
                                                                                                    <div class="view">
                                                                                                        <div class="caption">
                                                                                                            <p>47LabsDesign</p>
                                                                                                            <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                            <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                        </div>
                                                                                                        <img src="http://24.media.tumblr.com/282fadab7d782edce9debf3872c00ef1/tumblr_n3tswomqPS1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                    </div>
                                                                                                    <div class="info">
                                                                                                        <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                        <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                    </div>
                                                                                                    <div class="stats turqbg">
                                                                                                        <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                        <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-md-3">
                                                                                                    <div class="view">
                                                                                                        <div class="caption">
                                                                                                            <p>47LabsDesign</p>
                                                                                                            <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                            <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                        </div>
                                                                                                        <img src="http://24.media.tumblr.com/282fadab7d782edce9debf3872c00ef1/tumblr_n3tswomqPS1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                    </div>
                                                                                                    <div class="info">
                                                                                                        <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                        <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                    </div>
                                                                                                    <div class="stats turqbg">
                                                                                                        <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                        <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-md-3">
                                                                                                    <div class="view">
                                                                                                        <div class="caption">
                                                                                                            <p>47LabsDesign</p>
                                                                                                            <a href="" rel="tooltip" title="Appreciate"><span class="fa fa-heart-o fa-2x"></span></a>
                                                                                                            <a href="" rel="tooltip" title="View"><span class="fa fa-search fa-2x"></span></a>
                                                                                                        </div>
                                                                                                        <img src="http://24.media.tumblr.com/282fadab7d782edce9debf3872c00ef1/tumblr_n3tswomqPS1st5lhmo1_1280.jpg" class="img-responsive">
                                                                                                    </div>
                                                                                                    <div class="info">
                                                                                                        <p class="small" style="text-overflow: ellipsis">An Awesome Title</p>
                                                                                                        <p class="small coral text-right"><i class="fa fa-clock-o"></i> Posted Today | 10:42 A.M.</small>
                                                                                                    </div>
                                                                                                    <div class="stats turqbg">
                                                                                                        <span class="fa fa-heart-o"> <strong>47</strong></span>
                                                                                                        <span class="fa fa-eye pull-right"> <strong>137</strong></span>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="tab-pane" id="tab_default_2">
                                                                                    <div class="row" style="background-color: white;padding-top: 5px;">
                                                                                        <div class="row" style="min-height: 950px;max-height: 950px;overflow-x: auto;">
                                                                                            <div class="col-md-12">
                                                                                                <h3 style="padding: 0px 0px 0px 10px;">My Jobs</h3>                                                                         
                                                                                                <hr class="bg-danger">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="tab-pane" id="tab_default_3">
                                                                                    <div class="row" style="background-color: white;padding-top: 5px;">
                                                                                        <div class="row" style="min-height: 950px;max-height: 950px;overflow-x: auto;">
                                                                                            <div class="col-md-12">
                                                                                                <h3 style="padding: 0px 0px 0px 10px;">My Companies</h3>                                                                         
                                                                                                <hr class="bg-danger">
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="tab-pane" id="tab_default_4">
                                                                                    <!--///////////-->
                                                                                    <div class="row" style="background-color: white;padding-top: 50px;" id="lilo">
                                                                                        <div class="col-md-10 col-md-offset-1">
                                                                                            <form class="form-horizontal" role="form">
                                                                                                <fieldset>
                                                                                                    <!-- Form Name -->
                                                                                                    <legend>My-Rating's Advanced Job Filter</legend>
                                                                                                    <div class="form-group">
                                                                                                        <div class="col-sm-12">
                                                                                                            <div class="input-group">
                                                                                                                <select id="mseleci" class="form-control">
                                                                                                                    <option>Search jobs from a selected company</option>
                                                                                                                    <option>Search employees from a selected company</option>
                                                                                                                    <option>Search job for selected skills</option>
                                                                                                                    <option>Search employees for selected skills</option>
                                                                                                                    <option>Search employees near to your location</option>
                                                                                                                    <option>Search jobs near to your location</option>
                                                                                                                </select>
                                                                                                                <span class="input-group-addon btn-primary"><span class="fa fa-arrow-down"></span></span>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <!-- Text input-->
                                                                                                    <div class="form-group" id="abcf">
                                                                                                        <div class="col-sm-12">
                                                                                                            <div class="input-group">
                                                                                                                <input type="text" placeholder="Company Name" class="form-control dropdown-toggle"  id="sbf" autocomplete="off">
                                                                                                                <span class="input-group-addon btn-success"><span  class="fa fa-search"></span></span>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <ul class="" style="display:none;list-style: none;list-style-type: none" id="cpsele">                                                                                                       
                                                                                                    </ul>
                                                                                                    <!-- Job Position-->
                                                                                                    <div class="form-group" id="jpoos">
                                                                                                        <div class="col-sm-12">
                                                                                                            <div class="input-group">
                                                                                                                <input type="text" id="skillserchtt" name="skillserchtt" placeholder="Search Skills" class="form-control"/>
                                                                                                                <span class="input-group-addon btn-primary"><span class="fa fa-arrow-down"></span></span>
                                                                                                            </div>
                                                                                                        </div>                                                                                                      
                                                                                                    </div>
                                                                                                    <div class="row">
                                                                                                        <ul class="" style="list-style: none;list-style-type: none;margin-top: -25px;" id="jvfk3">                                                                                                       
                                                                                                        </ul>
                                                                                                    </div>
                                                                                                    <!-- Experiance Level-->
                                                                                                    <div class="form-group" id="jexp">
                                                                                                        <div class="col-sm-12">
                                                                                                            <div class="input-group">
                                                                                                                <select class="form-control">
                                                                                                                    <option>None</option>
                                                                                                                    <option>As a Intern</option>
                                                                                                                    <option>As a Traineee</option>
                                                                                                                    <option>As a Senior</option>
                                                                                                                    <option>As a Architec</option>
                                                                                                                    <option>As a Consultent</option>
                                                                                                                </select>
                                                                                                                <span class="input-group-addon btn-danger"><span class="fa fa-arrow-down"></span></span>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <!-- Text input-->
                                                                                                    <div class="form-group" id="jlooc">
                                                                                                        <div class="col-sm-6">
                                                                                                            <div class="input-group">
                                                                                                                <input type="text" placeholder="Country" class="form-control">
                                                                                                                <span class="input-group-addon btn-info"><span class="fa fa-search"></span></span>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <div class="col-sm-6">
                                                                                                            <div class="input-group">
                                                                                                                <input type="text" placeholder="Job Location" class="form-control">
                                                                                                                <span class="input-group-addon btn-warning"><span class="fa fa-search"></span></span>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="container-fluid form-group">
                                                                                                        <div id="jskilles">
                                                                                                            <label class="control-label" style="padding: 10px 0px 20px">Select Your Skills</label>
                                                                                                            <div class="row" style="height: auto;max-height: 200px;min-height: 200px;overflow-x: auto;background-color: white; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);padding: 10px">
                                                                                                                <div id="kij">

                                                                                                                </div>                                                                                                                                                                                                                 
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="form-group">
                                                                                                        <div class="col-sm-offset-2 col-sm-10">
                                                                                                            <div class="pull-right">
                                                                                                                <button type="button" class="btn btn-default">Cancel</button>
                                                                                                                <button type="button" id="ssbttn" class="btn btn-danger">Search</button>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </fieldset>
                                                                                            </form>
                                                                                        </div><!-- /.col-lg-12 -->
                                                                                    </div><!-- /.row -->
                                                                                    <div class="row" style="height: auto;max-height: 440px;min-height: 440px;overflow-x: auto; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);background-color: white">
                                                                                        <div class="col-md-12 col-sm-12" id="seoju">


                                                                                        </div>
                                                                                    </div>
                                                                                    <!--/////////////////////-->
                                                                                </div>   <!--    //end-->                                                                     
                                                                            </div>
                                                                        </div>
                                                                    </div>			
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="">
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="row">
                                                                    <div class="col-lg-6">
                                                                        <div class="panel-footer" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);background-color: #fff6;">
                                                                            <h3 style="font-family: 'Encode Sans', sans-serif;;text-align:center;margin-top: -5px;margin-bottom: 25px;"> My-Ratings Developers </h3>
                                                                            <div class="row">
                                                                                <div class="col-lg-4">	
                                                                                    <center style="background-color: white;padding: 15px 0 8px 0;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"><img src="resources/images/ceo.jpg" style="box-shadow: 0 4px 8px 0 rgba(11, 66, 255, 0.34), 0 6px 20px 0 rgba(45, 101, 234, 0.2);" class="img-circle" alt="Cinque Terre" width="100" height="100">
                                                                                        <!--<a href="https://twitter.com/Jhean_Yhu"> <p>John Yumang</p> </a>-->
                                                                                        <h5>Mr.Prasad Waduge</h5>
                                                                                        <p class="text-muted">President</p>
                                                                                    </center>
                                                                                </div>
                                                                                <div class="col-lg-4">
                                                                                    <center style="background-color: white;padding: 15px 0 8px 0;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"><img src="resources/images/photo.jpg" class="img-circle" style="box-shadow: 0 4px 8px 0 rgba(11, 66, 255, 0.34), 0 6px 20px 0 rgba(45, 101, 234, 0.2);" alt="Cinque Terre" width="100" height="100">
                                                                                        <!--<a href="https://twitter.com/Jhean_Yhu"> <p>John Yumang</p> </a>-->
                                                                                        <h5>Mr. Ranjith Suranga</h5>
                                                                                        <p class="text-muted">President</p>
                                                                                    </center>								
                                                                                </div>
                                                                                <div class="col-lg-4">	
                                                                                    <center style="background-color: white;padding: 15px 0 8px 0;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);"><img src="resources/images/owner.jpg" class="img-circle" style="box-shadow: 0 4px 8px 0 rgba(11, 66, 255, 0.34), 0 6px 20px 0 rgba(45, 101, 234, 0.2);" alt="Cinque Terre" width="100" height="100">
                                                                                        <!--<a href="https://twitter.com/Jhean_Yhu"> <p>John Yumang</p> </a>-->
                                                                                        <h5>Sanu Vithanage</h5>
                                                                                        <p class="text-muted">Owner</p>
                                                                                    </center>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <div class="panel-footer" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);background-color: #fff6;height: 255px;">
                                                                            <h3 style="font-family: 'Encode Sans', sans-serif;;text-align:center;margin-top: -5px;margin-bottom: 25px;">  Today Visits. </h3>
                                                                            <script src='https://image.freepik.com/free-vector/people-avatars_23-2147501881.jpg'></script><div style='overflow:hidden;height:170px;width:350px;'><div id='gmap_canvas' style='height:190px;width:350px;'></div><div><small><a href="http://embedgooglemaps.com">									embed google maps							</a></small></div><div><small><a href="http://www.autohuren.world/locaties/ibiza/">auto huren ibiza</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type='text/javascript'>function init_map() {
                                                                                    var myOptions = {zoom: 10, center: new google.maps.LatLng(51.58250734077006, 0.2883488777343901), mapTypeId: google.maps.MapTypeId.ROADMAP};
                                                                                    map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);
                                                                                    marker = new google.maps.Marker({map: map, position: new google.maps.LatLng(51.58250734077006, 0.2883488777343901)});
                                                                                    infowindow = new google.maps.InfoWindow({content: '<strong>Jean Yu</strong><br>London, United Kingdom<br>'});
                                                                                    google.maps.event.addListener(marker, 'click', function () {
                                                                                        infowindow.open(map, marker);
                                                                                    });
                                                                                    infowindow.open(map, marker);
                                                                                }
                                                                                google.maps.event.addDomListener(window, 'load', init_map);</script>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="panel-footer">
                                                                    <div class="row">                                                                       
                                                                        <div class="col-lg-12">
                                                                            <span style="text-align: center">All Right Reserved By Sanu Vithanage</span>
                                                                        </div>                                                                       
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br><br><br>
                                                </div>
                                                <!--//////////-->
                                            </div>
                                        </div>
                                    </div>
                                </div> <!--Jobs end-->
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
        <script type="text/javascript" src="resources/ajax/sanu-ajax-jobs.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-advserch.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-refresh.js"></script>
        <script type="text/javascript" src="resources/js/websocket.js"></script>
    </body>
</html>
