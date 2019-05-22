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
        <title>Job-View</title>
        <link rel="icon" type="image/png" href="resources/icon/fav-ico.png">
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap-theme.css">
        <link rel="stylesheet" type="text/css" href="resources/css/font-awesome.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/style1-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style2-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style3-sanu.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/style8-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style6-sanu.css">
        <link rel="stylesheet" type="text/css" href="resources/css/mywall.css" >       
        <link href="https://fonts.googleapis.com/css?family=Encode+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
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
                        <div class="col-md-12 col-sm-12">
                            <div class="main" id="cds" style="margin-top: 60px; z-index: 2">
                                <!--View-->
                                <div class="Views" style="display: block">
                                    <div class="page-content-wrapper">
                                        <div class="page-content inset">
                                            <div class="dfg-sanu">
                                                <div class="row">
                                                    <!--///////////////-->
                                                    <div class="" >
                                                        <div class="row panel">
                                                            <div class="col-md-4 bg_blur">
                                                                <img class="img-responsivew" src="resources/profile/${oun.wp}"/>
                                                                <a href="#" class="follow_btn hidden-xs">Follow</a>
                                                            </div>
                                                            <div class="col-md-8  col-xs-12">
                                                                <img src="resources/profile/${comma.profileP}" class="img-thumbnail picture hidden-xs" />

                                                                <div class="header">
                                                                    <h1>${comma.comName}</h1>
                                                                    <h4>${comma.title}</h4>
                                                                    <span>${comma.aboutComp}</span>
                                                                </div>
                                                            </div>
                                                        </div>   

                                                        <div class="row nav">    
                                                            <div class="col-md-4"></div>
                                                            <div class="col-md-8 col-xs-12" style="margin-top: -50px;padding: 0px;">
                                                                <div id="${job.jid}"  class="col-md-4 col-xs-4 btn btn-primary dm" style="height: 50px;"><i class="fa fa-plus fa-lg"></i><span  style="font-size: 15px;line-height: 35px;font-weight: bold;font-family: 'Montserrat', sans-serif;"> Apply This Job</span></div>
                                                                <div class="col-md-4 col-xs-4  btn btn-info" style="height: 50px"><i class="fa fa-save fa-lg"></i><span  style="font-size: 15px;line-height: 35px;font-weight: bold;font-family: 'Montserrat', sans-serif;"> Save This Job</span></div>
                                                                <div class="col-md-4 col-xs-4  btn btn-danger" style="height: 50px"><i class="fa fa-thumbs-o-up fa-lg"></i><span  style="font-size: 15px;line-height: 35px;font-weight: bold;font-family: 'Montserrat', sans-serif;"> Like This</span></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--///////////////////-->
                                                </div>
                                                <div class="row" style="">
                                                    <div class="rela-block content">
                                                        <div id="mailsub" class="notification" align="center">
                                                            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="min-width: 320px;">
                                                                <tr>
                                                                    <td align="center" bgcolor="#eff3f8">
                                                                        <table border="0" cellspacing="0" cellpadding="0" class="table_width_100" width="100%" style="max-width: 900px; min-width: 300px;">
                                                                            <tr>
                                                                                <td>
                                                                                    <div style="height: 40px; line-height: 40px; font-size: 10px;"> </div>
                                                                                </td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center" bgcolor="#fbfcfd">
                                                                                    <table width="90%" border="0" cellspacing="0" cellpadding="0">
                                                                                        <tr>
                                                                                            <td align="center">
                                                                                                <div style="height: 60px; line-height: 60px; font-size: 10px;"> </div>
                                                                                                <div style="line-height: 44px;">
                                                                                                    <font face="Arial, Helvetica, sans-serif" size="5" color="#57697e" style="font-size: 34px;">
                                                                                                    <span style="font-family: Arial, Helvetica, sans-serif; font-size: 34px; color: #57697e;">
                                                                                                        ${job.title}
                                                                                                    </span>
                                                                                                    </font>
                                                                                                </div>
                                                                                                <div style="height: 40px; line-height: 40px; font-size: 10px;"> </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr><td align="center">
                                                                                                <div style="line-height: 24px;">
                                                                                                    <font face="Arial, Helvetica, sans-serif" size="4" color="#57697e" style="font-size: 15px;">
                                                                                                    <span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">
                                                                                                        ${job.role}                                                                                                                                                                                                            
                                                                                                    </span>
                                                                                                    </font>

                                                                                                    <img src="resources/wallpics/job/${job.jobBanner}" class="img-responsive"/>
                                                                                                    <font face="Arial, Helvetica, sans-serif" size="4" color="#57697e" style="font-size: 15px;">
                                                                                                    <span style="font-family: Arial, Helvetica, sans-serif; font-size: 15px; color: #57697e;">
                                                                                                        ${job.pdate}                                                                                                                                                                                                            
                                                                                                    </span>
                                                                                                    </font>
                                                                                                </div>
                                                                                                <div style="height: 40px; line-height: 40px; font-size: 10px;"> </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td align="center">
                                                                                                <div style="line-height: 24px;">
                                                                                                    <a href="#" target="_blank" style="color: #596167; font-family: Arial, Helvetica, sans-serif; font-size: 13px;">
                                                                                                        <font face="Arial, Helvetica, sans-seri; font-size: 13px;" size="3" color="#596167">
                                                                                                        <img src="" width="193" height="43" alt="" border="0" style="display: block;" />
                                                                                                        </font>
                                                                                                    </a>
                                                                                                </div>
                                                                                                <div style="height: 60px; line-height: 60px; font-size: 10px;"> </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>		
                                                                                </td>
                                                                            </tr>
                                                                            <!--content 1 END-->
                                                                            <!--content 2 -->

                                                                            <!--content 2 END-->
                                                                            <!--links -->
                                                                            <tr>
                                                                                <td align="center" bgcolor="#ffffff" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #eff2f4;">
                                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                                        <tr>
                                                                                            <td align="center">
                                                                                                <div style="height: 32px; line-height: 32px; font-size: 10px;"></div>
                                                                                                <table width="80%" align="center" cellpadding="0" cellspacing="0">
                                                                                                    <tr>
                                                                                                        <td align="center" valign="middle" style="font-size: 12px; line-height: 22px;">
                                                                                                            <span style="font-family: Arial, Helvetica, sans-serif; font-size: 20px; color: #57697e; padding: 10px">
                                                                                                                Job Description
                                                                                                            </span>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    <tr>                                                                                                     
                                                                                                        <td align="center" valign="middle" style="font-size: 12px; line-height: 22px;">
                                                                                                            <font face="Tahoma, Arial, Helvetica, sans-serif" size="2" color="#282f37" style="font-size: 12px;">
                                                                                                            <span style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #5b9bd1;">
                                                                                                                <a href="#PRODUCTS" target="_blank" style="color: #5b9bd1; text-decoration: none;">${job.jobDescription}</a>
                                                                                                                    <img src="" alt="|" width="9" height="9" class="mob_display_none"/>    
                                                                                                            </span>
                                                                                                            </font>
                                                                                                        </td>
                                                                                                    </tr>                                        
                                                                                                </table>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <div style="height: 32px; line-height: 32px; font-size: 10px;"> </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>		
                                                                                </td></tr>
                                                                            <!--links END-->
                                                                            <!--content 3 -->
                                                                            <tr>
                                                                                <td align="center" bgcolor="#ffffff" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #eff2f4;">
                                                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                                                        <tr>
                                                                                            <td align="center">
                                                                                                <div style="height: 40px; line-height: 40px; font-size: 10px;"> </div>
                                                                                                <div class="mob_100" style="float: left; display: inline-block; width: 33%;">

                                                                                                    <td align="center" style="line-height: 14px; padding: 0 27px;">
                                                                                                        <div style="height: 40px; line-height: 40px; font-size: 10px;"> </div>
                                                                                                        <div style="line-height: 14px;text-align: center">
                                                                                                            <font face="Arial, Helvetica, sans-serif" size="3" color="#4db3a4" style="font-size: 14px;">
                                                                                                            <strong style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: #4db3a4;">
                                                                                                                <a href="#1" target="_blank" style="color: #4db3a4; text-decoration: none;">Required Skills</a>
                                                                                                            </strong>
                                                                                                            </font>
                                                                                                        </div>
                                                                                                        <div style="height: 18px; line-height: 18px; font-size: 10px;"> </div>
                                                                                                        <div style="line-height: 21px;">
                                                                                                            <font face="Arial, Helvetica, sans-serif" size="3" color="#98a7b9" style="font-size: 14px;">
                                                                                                            <span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: #98a7b9;">
                                                                                                                ${job.requiredSkills}
                                                                                                            </span>
                                                                                                            </font>
                                                                                                        </div>
                                                                                                    </td>

                                                                                                </div>                                                                                                                                                                                       							
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <div style="height: 80px; line-height: 80px; font-size: 10px;"> </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>		
                                                                                </td>
                                                                            </tr>
                                                                            <!--content 3 END-->
                                                                            <!--brands -->
                                                                            <tr>
                                                                                <td align="center" bgcolor="#ffffff" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #eff2f4;">
                                                                                    <table width="94%" border="0" cellspacing="0" cellpadding="0">
                                                                                        <tr>
                                                                                            <td align="center">

                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <!--<div style="height: 28px; line-height: 28px; font-size: 10px;"> </div>-->
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>		
                                                                                </td>
                                                                            </tr>
                                                                            <!--brands END-->
                                                                            <!--footer -->
                                                                            <tr>
                                                                                <td class="iage_footer" align="center" bgcolor="#ffffff">
                                                                                    <div style="height: 80px; line-height: 80px; font-size: 10px;"> </div>	
                                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                                        <tr>
                                                                                            <td align="center">
                                                                                                <font face="Arial, Helvetica, sans-serif" size="3" color="#96a5b5" style="font-size: 13px;">
                                                                                                <span style="font-family: Arial, Helvetica, sans-serif; font-size: 13px; color: #96a5b5;">
                                                                                                    2017 © My-Ratings. ALL Rights Reserved Sanu Vithanage.
                                                                                                </span></font>				
                                                                                            </td>
                                                                                        </tr>			
                                                                                    </table>
                                                                                    <div style="height: 30px; line-height: 30px; font-size: 10px;"> </div>	
                                                                                </td>
                                                                            </tr>
                                                                            <!--footer END-->
                                                                            <tr>
                                                                                <td>
                                                                                    <div style="height: 80px; line-height: 80px; font-size: 10px;"> </div>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td></tr>
                                                            </table>
                                                        </div> 
                                                    </div>                                                      
                                                </div>
                                                <!--                                                    <div class="rela-block footer">
                                                                <p>My-Ratings-JobViwer</p>
                                                                <br>
                                                                <p>.<br><br>.</p>
                                                                </div>-->
                                                <!--///////////-->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>  <!-- viewa main tag end-->
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
        <script type="text/javascript" src="resources/ajax/sanu-ajax-jobview.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-refresh.js"></script>
        <script type="text/javascript" src="resources/js/websocket.js"></script>
    </body>
</html>
