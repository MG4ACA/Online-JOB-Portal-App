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
        <title>Settings</title>
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
                    <!--...-->
                    <%@include file="header.jsp" %>

                    <div class="row"> <!--main row of contect-sanu-->
                        <div class="col-md-12">
                            <div class="main" id="cds" style="margin-top: 70px; z-index: 2">

                                <!--Settings-->
                                <div class="Settings" style="display: block">
                                    <div class="page-content-wrapper">
                                        <div class="page-content inset">
                                            <div class="row">
                                                <div class="col-md-9 col-xs-8">
                                                    <!--                                                    <div class="row">
                                                                                                            <div class="col-md-6">-->
                                                    <div class="panel with-nav-tabs panel-default">
                                                        <div class="panel-heading">
                                                            <ul class="nav nav-tabs">
                                                                <li class="active"><a href="#tab1default" data-toggle="tab"><i class="glyphicon glyphicon-edit"></i>Tab1</a></li>
                                                                <li><a href="#tab2default" data-toggle="tab"><i class="glyphicon glyphicon-user"></i>Tab2</a></li>
                                                                <li><a href="#tab3default" data-toggle="tab"><i class="glyphicon glyphicon-print"></i>Tab3</a></li>
                                                                <li><a href="#tab4default" data-toggle="tab"><i class="glyphicon glyphicon-leaf"></i>Tab4</a></li>
                                                                <li><a href="#tab5default" data-toggle="tab"><i class="glyphicon glyphicon-phone"></i>Tab5</a></li>
                                                                <li class="dropdown">
                                                                    <a href="#" data-toggle="dropdown">Tab6 <span class="caret"></span></a>
                                                                    <ul class="dropdown-menu" role="menu">
                                                                        <li><a href="#tab6default" data-toggle="tab"><i class="glyphicon glyphicon-chevron-right"></i>Nested tab 1</a></li>
                                                                        <li><a href="#tabnested1default" data-toggle="tab"><i class="glyphicon glyphicon-chevron-right"></i>Nested tab 2</a></li>
                                                                        <li><a href="#tabnested2default" data-toggle="tab"><i class="glyphicon glyphicon-chevron-right"></i>Nested tab3</a></li>
                                                                    </ul>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="tab-content">
                                                                <div class="tab-pane fade in active" id="tab1default"><div class="row form-group">

                                                                        <div class="col-sm-2">Headache</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Fever</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Nausea</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Giddiness</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm  btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">WeightLoss</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm  btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div></div>

                                                                <div class="tab-pane fade" id="tab2default"><div class="row form-group">

                                                                        <div class="col-sm-2">Headache</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Fever</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Nausea</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Giddiness</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm  btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">WeightLoss</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm  btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div></div>

                                                                <div class="tab-pane fade" id="tab3default"><div class="row form-group">

                                                                        <div class="col-sm-2">Headache</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Fever</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Nausea</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Giddiness</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm  btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">WeightLoss</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm  btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div></div>

                                                                <div class="tab-pane fade" id="tab4default"><div class="row form-group">


                                                                        <div class="col-sm-2">Headache</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Fever</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Nausea</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Giddiness</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm  btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">WeightLoss</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm  btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div></div>

                                                                <div class="tab-pane fade" id="tab5default"><div class="row form-group">

                                                                        <div class="col-sm-2">Headache</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Fever</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Nausea</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Giddiness</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm  btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">WeightLoss</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm  btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div></div>

                                                                <div class="tab-pane fade" id="tab6default"><p>Nested item 1</p><div class="row form-group">

                                                                        <div class="col-sm-2">Headache</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Fever</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Nausea</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Giddiness</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm  btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">WeightLoss</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm  btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div></div>

                                                                <div class="tab-pane fade" id="tabnested1default"><p>Nested item 2</p><div class="row form-group">

                                                                        <div class="col-sm-2">Headache</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Fever</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Nausea</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Giddiness</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm  btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">WeightLoss</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm  btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div></div>

                                                                <div class="tab-pane fade" id="tabnested2default"><p>Nested item 3</p><div class="row form-group">

                                                                        <div class="col-sm-2">Headache</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Fever</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-primary btn-sm  active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-primary btn-sm">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Nausea</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">Giddiness</div>  
                                                                        <div class=" col-sm-3 btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm  btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>

                                                                    <div class="row form-group">
                                                                        <div class="col-sm-2">WeightLoss</div>  
                                                                        <div class=" col-sm-3  btn-group" data-toggle="buttons">
                                                                            <label class="btn btn-sm btn-primary active">
                                                                                <input type="checkbox" autocomplete="off" checked>Yes
                                                                            </label>
                                                                            <label class="btn btn-sm  btn-primary">
                                                                                <input type="checkbox" autocomplete="off">No
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-3 col-sm-12">
                                                    <div class="card hovercard">
                                                        <div class="cardheader img-responsive" style="background:url(resources/profile/${cuser.wp}) no-repeat;background-size: cover">
                                                        </div>
                                                        <div class="avatar">
                                                            <img alt="" src="resources/profile/${cuser.cf}" >
                                                        </div>
                                                        <div class="info">
                                                            <div class="title">
                                                                <a target="_blank" href="#">${cuser.firstName} ${cuser.lastName}</a>
                                                            </div>
                                                            <div class="desc">UI & UX Designer</div>
                                                            <div class="desc">New Delhi</div>
                                                        </div>
                                                        <div class="bottom">
                                                            <a class="btn btn-primary btn-twitter btn-sm" href="https://www.youtube.com/user/ckrstorm" target="_blank">
                                                                <i class="fa fa-youtube"></i>
                                                            </a>
                                                            <a class="btn btn-danger btn-sm" rel="publisher"
                                                               href="https://plus.google.com/114356158260877386735" target="_blank">
                                                                <i class="fa fa-google-plus"></i>
                                                            </a>
                                                            <a class="btn btn-primary btn-sm" rel="publisher"
                                                               href="https://www.facebook.com/chandandesigner" target="_blank">
                                                                <i class="fa fa-facebook"></i>
                                                            </a>
                                                            <a class="btn btn-warning btn-sm" rel="publisher" href="https://www.linkedin.com/in/chandan-kumar-ray-3155b036" target="_blank">
                                                                <i class="fa fa-linkedin"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--</div>-->

                                                <!--                            </div>
                                                                        </div>-->
                                            </div>  <!-- Setings main tag end-->


                                        </div>  <!-- end of main main of content-->
                                    </div> <!-- end of main column of content-->
                                </div> <!-- end of main row of content-->
                            </div> <!--3nd div-->
                        </div>  <!--2nd div-->
                    </div><!-- end of  div 1-->

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
