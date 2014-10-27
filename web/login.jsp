<!DOCTYPE html>
<html lang="en">
    <head>
        <script type="text/javascript">
            function removeMsg(){
                $('#msg').fadeOut('slow');
            }
        </script>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="shortcut icon" href="style/images/favicon.png">
        <title>The Cafe Shoppe</title>
        <!-- Bootstrap core CSS -->
        <link href="style/css/bootstrap.css" rel="stylesheet">
        <link href="style/css/settings.css" rel="stylesheet">
        <link href="style/js/google-code-prettify/prettify.css" rel="stylesheet">
        <link href="style/js/fancybox/jquery.fancybox.css" rel="stylesheet" type="text/css" media="all" />
        <link href="style/js/fancybox/helpers/jquery.fancybox-thumbs0ff5.css?v=1.0.2" rel="stylesheet" type="text/css" />
        <link href="style.css" rel="stylesheet">
        <link href="style/css/color/aqua.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,500,500italic,700italic,700,900,900italic,300italic,300,100italic,100' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300italic,400italic,700italic,400,700,300' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,700,300,100' rel='stylesheet' type='text/css'>
        <link href="style/type/fontello.css" rel="stylesheet">
        <link href="style/type/budicons.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
              <script src="style/js/html5shiv.js"></script>
              <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
              <![endif]-->
    </head>
    <body>

        <div class="body-wrapper">
            <div class="navbar">
                <div class="navbar-header">
                    <div class="container">
                        <div class="basic-wrapper"> <a class="btn responsive-menu pull-right" data-toggle="collapse" data-target=".navbar-collapse"><i class='icon-menu-1'></i></a> <a class="navbar-brand" href="index.jsp"><img src="style/images/logo.png" alt="" data-src="style/images/logo.png" data-ret="style/images/logo@2x.png" class="retina" /></a> </div>
                        <nav class="collapse navbar-collapse pull-right">
                            <ul class="nav navbar-nav">
                                <li class=""><a href="index.jsp" class="js-activated">Home</a></li>
                                <li class=""><a href="about.jsp" class="js-activated">About Us</a>
                                </li>
                                <li class=""><a href="gallery.jsp" class="js-activated">Gallery</a>
                                </li>

                                <li class=""><a href="contact.jsp" class="js-activated">Contact</a>
                                </li>
                                <li class=""><a href="login.jsp" class="js-activated">Login</a>
                                </li>
                            </ul>
                            <ul class="social pull-right">
                                <li><a href="#"><i class="icon-s-instagram"></i></a></li>
                                <li><a href="#"><i class="icon-s-flickr"></i></a></li>
                                <li><a href="#"><i class="icon-s-twitter"></i></a></li>
                                <li><a href="#"><i class="icon-s-facebook"></i></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <!--/.nav-collapse --> 
            </div>
            <!--/.navbar -->
            <div class="page-title" style="background-image: url(style/images/art/page-title-7.jpg);">
                <div class="overlay"></div>
                <h1>Work Area</h1>
            </div>
            <div class="light-wrapper">
                <div class="container inner">

                    <div class="row">
                        <div class="col-sm-4">
                        </div>

                        <div class="col-sm-4">
                            <%
                                String msg = request.getParameter("do");
                                if (msg != null) {
                            %>
                            <div id="msg" class="alert alert-danger">
                                <strong>Login Failed : </strong> Id Or Password Must be Wrong.
                                <a href='javascript:;' onclick="removeMsg()" style="float:right;" id="ex">x</a>
                            </div>

                            <%                            }
                            %>
                            <form action="process/loginProcess.jsp" method="post" onsubmit="">
                                <input class="input-group" placeholder="Username"  type="text" name="uname" id="uname" style="width:300px; background:url(images/user.png); background-repeat:no-repeat; padding-left:40px; height:30px;" /> 
                                <div class="divide10"></div>
                                <input class="input-group" placeholder="Password" type="password" name="password" id="password" style="width:300px; background:url(images/pass.png); background-repeat:no-repeat; padding-left:43px; height:30px; "/> 
                                <div class="divide10"></div>
                                <select name="loginType" id="loginType" class="input-group">
                                    <option value="">Select Login Type</option>
                                    <option value="admin">Admin</option>
                                    <option value="">Cafe Manager</option>
                                    <option value="">Team Member</option>

                                </select>
                                <div class="divide10"></div><input type="submit" name="submit" value="Login" class="btn btn-green" style="width:300px;"/>
                            </form>
                        </div>
                        <div class="col-sm-4">
                        </div>



                    </div>
                </div>
            </div>

            <!-- /.light-wrapper -->

            <a class="color-wrapper text-center container" href="contact.jsp">If you like what you see, let's work together.</a>
            <footer class="footer black-wrapper">
                <div class="container inner">
                    <p class="pull-left">© 2013 The Cafe Shoppe. All rights reserved.</p>
                    <ul class="social pull-right">
                        <li><a href="#"><i class="icon-s-rss"></i></a></li>
                        <li><a href="#"><i class="icon-s-twitter"></i></a></li>
                        <li><a href="#"><i class="icon-s-facebook"></i></a></li>
                        <li><a href="#"><i class="icon-s-dribbble"></i></a></li>
                        <li><a href="#"><i class="icon-s-pinterest"></i></a></li>
                        <li><a href="#"><i class="icon-s-instagram"></i></a></li>
                        <li><a href="#"><i class="icon-s-vimeo"></i></a></li>
                    </ul>
                </div>
                <!-- .container --> 
            </footer>
            <!-- /footer --> 

        </div>
        <!-- /.body-wrapper --> 
        <script src="style/js/jquery.min.js"></script> 
        <script src="style/js/bootstrap.min.js"></script> 
        <script src="style/js/twitter-bootstrap-hover-dropdown.min.js"></script> 
        <script src="style/js/jquery.themepunch.plugins.min.js"></script> 
        <script src="style/js/jquery.themepunch.revolution.min.js"></script> 
        <script src="style/js/jquery.fancybox.pack.js"></script> 
        <script src="style/js/fancybox/helpers/jquery.fancybox-thumbs0ff5.js?v=1.0.2"></script> 
        <script src="style/js/fancybox/helpers/jquery.fancybox-mediae209.js?v=1.0.0"></script> 
        <script src="style/js/jquery.isotope.min.js"></script> 
        <script src="style/js/jquery.easytabs.min.js"></script> 
        <script src="style/js/idangerous.swiper-2.1.min.js"></script> 
        <script src="style/js/jquery.fitvids.js"></script> 
        <script src="style/js/jquery.sticky.js"></script> 
        <script src="style/js/google-code-prettify/prettify.js"></script> 
        <script src="style/js/jquery.slickforms.js"></script> 
        <script src="style/js/instafeed.min.js"></script> 
        <script src="style/js/jquery.dcflickr.1.0.js"></script> 
        <script src="style/js/retina.js"></script> 
        <script src="style/js/classie.js"></script> 
        <script src="style/js/scripts.js"></script>
        <!-- DEMO ONLY -->
        <link rel="alternate stylesheet" type="text/css" href="switcher/aqua.css" title="kubbaqua-color" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="switcher/green.css" title="kubbgreen-color" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="switcher/lime.css" title="kubblime-color" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="switcher/navy.css" title="kubbnavy-color" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="switcher/orange.css" title="kubborange-color" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="switcher/pink.css" title="kubbpink-color" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="switcher/purple.css" title="kubbpurple-color" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="switcher/red.css" title="kubbred-color" media="screen" />
        <link rel="alternate stylesheet" type="text/css" href="switcher/yellow.css" title="kubbyellow-color" media="screen" />
        <script type="text/javascript" src="switcher/switchstylesheet.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){ 
                $(".changecolor").switchstylesheet( { seperator:"color"} );
            });
        </script>
    </body>
</html>