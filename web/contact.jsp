<!DOCTYPE html>
<html lang="en">

<head>
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
  <div class="map">
      
    <iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6858.444744280231!2d76.78264755000001!3d30.740254599999997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390fed0afe5003d3%3A0x8f47abe9f2044934!2sSector+17%2C+Chandigarh%2C+India!5e0!3m2!1sen!2sca!4v1414044293544"></iframe>
  </div>
  <div class="light-wrapper">
    <div class="container inner">
      <div class="row">
        <div class="col-sm-8">
          <h1 class="post-title">Feel Free to Drop Me a Line</h1>
          <p>Fill out the form below to contact us directly:</p>
          <div class="divide20"></div>
          <div class="form-container">
            <div class="response alert alert-success"></div>
            <form class="forms" action="http://themes.iki-bir.com/kubb/contact/form-handler.php" method="post">
              <fieldset>
                <ol>
                  <li class="form-row text-input-row name-field">
                    <input type="text" name="name" class="text-input defaultText required" title="Name (Required)"/>
                  </li>
                  <li class="form-row text-input-row email-field">
                    <input type="text" name="email" class="text-input defaultText required email" title="Email (Required)"/>
                  </li>
                  <li class="form-row text-input-row subject-field">
                    <input type="text" name="subject" class="text-input defaultText" title="Subject"/>
                  </li>
                  <li class="form-row text-area-row">
                    <textarea name="message" class="text-area required"></textarea>
                  </li>
                  <li class="form-row hidden-row">
                    <input type="hidden" name="hidden" value="" />
                  </li>
                  <li class="nocomment">
                    <label for="nocomment">Leave This Field Empty</label>
                    <input id="nocomment" value="" name="nocomment" />
                  </li>
                  <li class="button-row">
                    <input type="submit" value="Submit" name="submit" class="btn btn-submit bm0" />
                  </li>
                </ol>
                <input type="hidden" name="v_error" id="v-error" value="Required" />
                <input type="hidden" name="v_email" id="v-email" value="Enter a valid email" />
              </fieldset>
            </form>
          </div>
          <!-- /.form-container --> 
        </div>
        <!-- /.span8 -->
        <aside class="col-sm-4 sidebar lp20">
          <div class="sidebox widget">
            <div class="section-title">
              <h3 class="widget-title">Address</h3>
            </div>
            <p>
                <strong>Head Office</strong>
                <br>
                The Cafe Shoppe, <br>
                S.C.O. 231, Opposite Neelam Cinema, <br>
                Sector 17D, Chandigarh (Punjab).
            </p>
            <address>
            <strong>The Cafe Shoppe - Sector 34</strong><br>
            The Cafe Shoppe, <br>
                S.C.O. 1478, First Floor, <br>
                Sector 34, Chandigarh (Punjab).
                <br>
            <abbr title="Phone">P:</abbr> (941) 793-8028 <br>
            <abbr title="Email">E:</abbr> <a href="javascript:;">puneet.mahindru@hotmail.com</a>
            </address>
          </div>
          <!-- /.widget --> 
        </aside>
        <!-- /.span4 --> 
      </div>
      <!-- /.row --> 
      
    </div>
  </div>
  <footer class="footer">
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

<!-- Mirrored from themes.iki-bir.com/kubb/contact.jsp by HTTrack Website Copier/3.x [XR&CO'2013], Sat, 09 Aug 2014 06:44:37 GMT -->
</html>