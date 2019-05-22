<div class="row"  style="position: fixed;z-index: 1;"> <!--begin-->
    <div class="col-md-12">
        <!--head beginsg width: 1160px-->
        <div class="" id="main-header">
            <nav class="navbar navbar-default" style="width: 1175px" role="navigation">
                <div class="navbar-header" style="background-color: #f56666">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="dashboard.htm" style="color: white">
                        <span id="lg1">MyRatings</span>
                        <div class="load-6" id="lg2" style="display:none">
                            <div class="letter-holder">
                                <div class="l-1 letter">M</div>
                                <div class="l-2 letter">y</div>
                                <div class="l-3 letter">-</div>
                                <div class="l-4 letter">R</div>
                                <div class="l-5 letter">a</div>
                                <div class="l-6 letter">t</div>
                                <div class="l-7 letter">i</div>
                                <div class="l-8 letter">n</div>
                                <div class="l-9 letter">g</div>
                                <div class="l-10 letter">s</div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class=""><a href="dashboard.htm" id="home" class="btn-home btc"><span class="glyphicon glyphicon-home"></span>Home</a></li>
                        <li><a href="network" class="btn-mynetwork btc" id="network"><span class="glyphicon glyphicon glyphicon-fire "></span>My Network</a></li>
                        <li class="dropdown"><a class="btn-job btc" id="job" href="jobs"><span
                                    class="glyphicon glyphicon-list-alt"></span>Jobs</b></a> </li>
                        <li class="dropdown"  data-toggle="collapse" data-target="#demo1"><a href="#"><span
                                    class="glyphicon glyphicon-search"></span>Search <b class="caret"></b></a>
                            <!--//search--> 
                            <ul class="dropdown-menu" style="min-width: 650px;margin-left: -390px" id="demo1">
                                <li>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <form class="navbar-form navbar-left" id="seof" method="post" action="searchUser" role="search">
                                                <div class="input-group">
                                                    <input type="text" id="sasam" style="width: 620px" class="form-control txt-search" name="search-text" placeholder="Search" />
                                                    <span class="input-group-btn">
                                                        <button class="btn btn-danger btn-search btc"  id="search" type="button">
                                                            Search</button>
                                                    </span>
                                                </div>
                                            </form>
                                            <ul style="cursor: pointer" id="serad">                                             
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown"><a href="#"  data-toggle="collapse" data-target="#erd"><span
                                    class="glyphicon glyphicon-globe"></span>Notific <span class="label label-danger" id="cnum">0</span>
                            </a>
                            <!--list-->
                            <ul class="dropdown-menu" id="erd">
                                <div class="cbz">
                                                                    
                                </div>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="message" class="dropdown-toggle btn-view btc" id="message"><span
                                    class="glyphicon glyphicon-envelope"></span>Message<span class="label label-info"></span>
                            </a>

                        </li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="collapse" data-target="#log-o"><span
                                    class="glyphicon glyphicon-user"></span>Admin <b class="caret"></b></a>
                            <!--log se-->
                            <ul class="dropdown-menu" id="log-o">
                                <li><a class="btc" href="profile"><span class="glyphicon glyphicon-user "></span>Profile</a></li>
                                <li><a class="btc" href="settings"><span class="glyphicon glyphicon-cog "></span>Settings</a></li>
                                <li class="divider"></li>
                                <li><a href="logoff.htm"><span class="glyphicon glyphicon-off"></span>Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
    </div>
</div> <!--end-->

