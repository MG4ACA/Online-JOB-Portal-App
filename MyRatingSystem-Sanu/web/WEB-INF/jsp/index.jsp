<%-- 
    Document   : index
    Created on : Aug 10, 2017, 6:16:07 AM
    Author     : Sanu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My-Ratings</title>
        <link rel="icon" type="image/png" href="resources/icon/fav-ico.png">
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css" th:href="{@resources//css/bootstrap.css}">
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap-theme.css" th:href="{@resources//css/bootstrap-theme.css}">
        <link rel="stylesheet" type="text/css" href="resources/css/font-awesome.css" th:href="{@resources//css/font-awesome.css}">
        <link rel="stylesheet" type="text/css" href="resources/css/style1-sanu.css" th:href="{@resources//css/style1-sanu.css}">
        <script src='https://www.google.com/recaptcha/api.js'></script>
        <link href="https://fonts.googleapis.com/css?family=Pacifico|Saira" rel="stylesheet"> 
        <link rel="stylesheet" type="text/css" href="resources/css/alertify.core.css" >
        <link rel="stylesheet" type="text/css" href="resources/css/alertify.default.css">
    </head>
    <body>

        <!-- Page content -->
        <div id="page-content-wrapper" style="position: fixed;z-index: 10">
            <div class="page-content inset">
                <div class="row">
                    <div class="col-md-12">
                        <div class="">
                            <nav class="navbar navbar-default " role="navigation" style="background-color: rgba(255, 255, 255, 0.74);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                                <div class="navbar-header" style="background-color: #f56666">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                                            class="icon-bar"></span><span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand" href="#" style="color: white">My-Ratings</a>
                                </div>
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                    <ul class="nav navbar-nav">
                                        <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span>Home</a></li>
                                        <li><a href="#"><span class="glyphicon glyphicon glyphicon-fire"></span>My Network</a></li>
                                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                                                    class="glyphicon glyphicon-list-alt"></span>Jobs</b></a> </li>
                                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                                                    class="glyphicon glyphicon-search"></span>Search <b class="caret"></b></a>
                                            <!--//search--> 
                                            <ul class="dropdown-menu" style="min-width: 300px;">
                                                <li>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <form class="navbar-form navbar-left" role="search">
                                                                <div class="input-group">
                                                                    <input type="text" class="form-control" placeholder="Search" />
                                                                    <span class="input-group-btn">
                                                                        <button class="btn btn-primary" type="button">
                                                                            Go!</button>
                                                                    </span>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <div class="row pull-right">
                                        <div class="col-md-12">
                                            <form class="navbar-form navbar-left" action="log.htm" method="post" role="search">
                                                <div class="form-inline">
                                                    <input type="text" class="form-control" name="email" placeholder="Email" />
                                                    <input type="password" class="form-control" name="pass" placeholder="Password" />
                                                    <span class="form-inline">
                                                        <button class="btn btn-primary" type="submit">Login</button>
                                                    </span>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="homepage-hero-module">
            <div class="video-container">
                <div class="filter"></div>
                <video autoplay loop class="fillWidth video ">
                    <source  src="resources/images/Working-Space.mp4" type="video/mp4" class="video" />
                </video>
            </div>
        </div>

        <div class=" container row" style="margin-top: -535px;z-index: 5;">
            <!--<div class="col-lg-7 "></div>-->
            <div class="col-md-5 col-xs-10" style="background-color: rgba(255, 255, 255, 0.74); box-shadow: 0 4px 30px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                <h2>Sing in</h2>
                <form class="form-group" method="post" action="add.htm">
                    <div class="row">
                        <div class="col-md-6 col-xs-6">
                            <input class="form-control" id="fnamel" placeholder="First Name" type="text" name="fname">
                        </div>
                        <div class="col-md-6 col-xs-6">
                            <input class="form-control" id="lnamel" placeholder="Last Name" type="text" name="lname">
                        </div>
                    </div>
                    <div class="row" style="margin-top: 15px">
                        <div class="col-md-12 col-xs-12">
                            <input class="form-control" id="emailad" placeholder="Email Address" type="text" name="email">
                        </div>
                    </div>
                    <div class="row" style="margin-top: 15px">
                        <div class="col-md-5 col-xs-6">
                            <input class="form-control" id="passt" placeholder="Password" type="password" name="pass">
                        </div>
                        <div class="col-md-5 col-xs-6">
                            <input class="form-control" id="passt2" placeholder="Confirm PassWord" type="password" name="pass2">
                        </div>
                    </div>
                    <div class="row" style="margin-top: 15px">
                        <div class="col-md-5 col-xs-5">
                            <select name="ctry" id="ctload" class="form-control">
                                <option>Sri Lanaka</option>
                                <!--<option>India</option>-->
                            </select>
                        </div>
                        <div class="col-md-7 col-xs-7">
                            <input class="form-control" id="tplog" placeholder="Telephone Number" type="text" name="tp">
                        </div>
                    </div>
                    <div class="row" style="margin-top: 15px">
                        <div class="col-md-5 col-xs-6">
                            <input class="form-control" id="postCl" placeholder="Postal Code" type="text" name="pc">
                        </div>
                        <div class="col-md-7 col-xs-6">
                            <input class="form-control" id="posdl" placeholder="Your Position" type="text" name="posi">
                        </div>

                    </div>
                    <div class="row" style="margin-top: 15px">
                        <div class="col-md-12 col-xs-3">
                            <div class="g-recaptcha"  data-sitekey="6Le3LykUAAAAAD7y0W4DL7hiK4EBFRUwXmwiu81r"></div>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 15px">
                        <div class="col-md-9 col-xs-9">

                        </div>
                        <div class="col-md-1 col-xs-1">
                            <button class="btn btn-primary" id="looobtn" type="button">Register</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-1 col-xs-1">

            </div>
            <div class="col-md-6">
                <div class="blink">
                    <h1 style="">
                        <a href="" style="color:rgba(0, 0, 0, 0.69);font-family: 'Saira', sans-serif;font-size: 30px" class="typewrite" data-period="2000" data-type='[ "Hello There How Are You..", "Do You Find A Place For Your Job..?.", "Do You Want To Rate You Among Friends", "What You Are Waiting For..","This is Your Chance..Take IT..." ]'>
                            <span class="wrap"></span>
                        </a>
                    </h1>
                </div>
            </div>
        </div>
        <div class="navbar-fixed-bottom" style="background-color: rgba(255, 255, 255, 0.32);box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
            <footer>
                <p style="color: black;text-align: center">All Reserved Sanu Vithanage 2017</p>
            </footer>
        </div>

        <!--/////////////////////-->
        <script type="text/javascript" src="resources/js/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap.js"></script>
        <script type="text/javascript" src="resources/js/alertify.js"></script>
        <script type="text/javascript" src="resources/js/script1-sanu.js"></script>
        <script type="text/javascript" src="resources/js/script2-sanu.js"></script>
        <script type="text/javascript" src="resources/validation/sanu-loging.js"></script>
        <script type="text/javascript" src="resources/ajax/sanu-ajax-refresh.js"></script>
        <script type="text/javascript" src="resources/js/websocket.js"></script>
    </body>
</html>
