<%
    String type = (String) session.getAttribute("session_type");
    if (((String) session.getAttribute("session_id") != null) && (type.equals("admin"))) {
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <script type="text/javascript">
            function removeMsg(){
                $('#msg').fadeOut('slow');
            }
        </script>
        <meta charset="utf-8" />
        <title>The Cafe Shoppe</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="description" />
        <meta content="Mosaddek" name="author" />
        <link rel="stylesheet" type="text/css" href="assets/chosen-bootstrap/chosen/chosen.css" />
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link href="assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
        <link href="assets/bootstrap/css/bootstrap-fileupload.css" rel="stylesheet" />
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/style-responsive.css" rel="stylesheet" />
        <link href="css/style-default.css" rel="stylesheet" id="style_color" />
        <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
        <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    </head>
    <!-- END HEAD -->
    <!-- BEGIN BODY -->
    <body class="fixed-top">
        <!-- BEGIN HEADER -->
        <div id="header" class="navbar navbar-inverse navbar-fixed-top">
            <!-- BEGIN TOP NAVIGATION BAR -->
            <div class="navbar-inner">
                <div class="container-fluid">
                    <!--BEGIN SIDEBAR TOGGLE-->
                    <div class="sidebar-toggle-box hidden-phone">
                        <div class="icon-reorder tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
                    </div>
                    <!--END SIDEBAR TOGGLE-->
                    <!-- BEGIN LOGO -->
                    <a class="brand" href="index.html">
                        <img src="img/logo.png" alt="Metro Lab" />
                    </a>
                    <!-- END LOGO -->
                    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                    <a class="btn btn-navbar collapsed" id="main_menu_trigger" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="arrow"></span>
                    </a>
                    <!-- END RESPONSIVE MENU TOGGLER -->
                    <div class="top-nav ">
                        <ul class="nav pull-right top-menu" >
                            <!-- BEGIN SUPPORT -->

                            <!-- END SUPPORT -->
                            <!-- BEGIN USER LOGIN DROPDOWN -->
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="img/avatar1_small.jpg" alt="">
                                    <span class="username">Puneet Mahindru</span>
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu extended logout">
                                    <li><a href="logout.jsp"><i class="icon-key"></i>Sign Out</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- END TOP NAVIGATION BAR -->
        </div>
        <div id="container" class="row-fluid">
            <!-- BEGIN SIDEBAR -->
            <div class="sidebar-scroll">
                <div id="sidebar" class="nav-collapse collapse">

                    <ul class="sidebar-menu">
                        <li class="sub-menu">
                            <a class="" href="index.jsp">
                                <i class="icon-dashboard"></i>
                                <span>Home</span>
                            </a>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon-book"></i>
                                <span>Operations</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub">


                                <li><a class="" href="index.jsp?page=emplist.jsp">Manager List</a></li>
                                <li><a class="" href="index.jsp?page=templist.jsp">Team Member List</a></li>
                                <li><a class="" href="index.jsp?page=register.jsp">Register Employee</a></li>
                                <li><a class="" href="index.jsp?page=password.jsp">Change Password</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon-bar-chart"></i>
                                <span>Reports</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub">
                                <!--                                <li><a href="index.jsp?page=hr_preSale_report.jsp">Past day Sale Report</a></li>-->
                                <li><a href="index.jsp?page=grinderreport.jsp">Grinder Reports</a></li>
                                <li><a href="index.jsp?page=damagereport.jsp">Damage And Dump Reports</a></li>
                                <li><a href="index.jsp?page=transferreport.jsp">Transfer Out Reports</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon-tasks"></i>
                                <span>Items</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub">
                                <li><a href="index.jsp?page=addItem.jsp">Introduce New Item</a></li>
                                <li><a href="index.jsp?page=itemList.jsp">Item List</a></li>
                            </ul>
                        </li>
                        <!--                        <li class="sub-menu">
                                                    <a href="javascript:;" class="">
                                                        <i class="icon-cogs"></i>
                                                        <span>Edit Home Page</span>
                                                        <span class="arrow"></span>
                                                    </a>
                                                    <ul class="sub">
                                                        <li><a href="index.jsp?page=editbanner.jsp">Edit Banner</a></li>
                                                        <li><a href="index.jsp?page=editabout.jsp">Edit About Us Page</a></li>
                                                        <li><a href="index.jsp?page=editcontact.jsp">Edit Contact Page</a></li>
                                                    </ul>
                                                </li>-->
                    </ul>
                    <!-- END SIDEBAR MENU -->
                </div>
            </div>
        </div>
        <%
            String path1 = request.getParameter("page");
            if (path1 == null) {
        %>
        <jsp:include page="home.jsp"/>
        <%               } else if (path1 != null) {
            String path = path1;
        %>
        <jsp:include page="<%=path%>"/>
        <%
            }

        %>
        <div id="footer">
            2014 &copy; The Cafe Shoppe. All Rights reserved.
        </div>
        <script type="text/javascript" src="myjs/allSimple.js"></script>
        <script src="js/jquery-1.8.3.min.js"></script>
        <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
        <script type="text/javascript" src="assets/jquery-slimscroll/jquery-ui-1.9.2.custom.min.js"></script>
        <script type="text/javascript" src="assets/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/fullcalendar/fullcalendar/fullcalendar.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <!-- ie8 fixes -->
        <!--[if lt IE 9]>
        <script src="js/excanvas.js"></script>
        <script src="js/respond.js"></script>
        <![endif]-->
        <script type="text/javascript" src="js/jquery.validate.min.js"></script>
        <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js" type="text/javascript"></script>
        <script src="js/jquery.sparkline.js" type="text/javascript"></script>
        <script src="assets/chart-master/Chart.js"></script>
        <script src="js/jquery.scrollTo.min.js"></script>


        <!--common script for all pages-->
        <script src="js/common-scripts.js"></script>

        <!--script for this page only-->

        <script src="js/easy-pie-chart.js"></script>
        <script src="js/sparkline-chart.js"></script>
        <script src="js/home-page-calender.js"></script>
        <script src="js/home-chartjs.js"></script>
        <script src="js/form-validation-script.js"></script>
        <script src="js/form-component.js"></script>
        <script language="javascript" type="text/javascript">
            $(function() {

                $.configureBoxes();

            });

        </script>
        <!-- END JAVASCRIPTS -->   
    </body>
    <!-- END BODY -->
</html>
<%    } else {
        response.sendRedirect("../index.jsp");
    }
%>