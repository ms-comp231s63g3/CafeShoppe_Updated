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
  <div class="page-title" style="background-image: url(style/images/art/page-title-2.jpg);">
    <div class="overlay"></div>
    <h1>Item Gallery</h1>
  </div>
  <div class="grid-portfolio full-portfolio">
    <div class="filter dark-wrapper container">
      <ul>
        <li><a class="active" href="#" data-filter="*">All</a></li>
        <li><a href="#" data-filter=".hot">HOT</a></li>
        <li><a href="#" data-filter=".cold">COLD</a></li>
        <li><a href="#" data-filter=".eatables">Eatables</a></li>
        <li><a href="#" data-filter=".accessory">Products</a></li>
      </ul>
    </div>
    <!-- /filter -->
    <ul class="items">
      <li class="item thumb hot">
        <figure><a href="style/images/art/p1-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-01">
          <div class="text-overlay">
            <div class="info">Cappucino</div>
          </div>
          <img src="style/images/art/p1.jpg" alt="" /> </a></figure>
        <div id="title-01" class="info hidden">
          <h2>Cappucino</h2>
          <div class="fancybody">A belly of Italian espresso smoothened with steamed and foamed milk.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb cold">
        <figure><a href="style/images/art/p2-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-02">
          <div class="text-overlay">
            <div class="info">Kaapi Nirvana</div>
          </div>
          <img src="style/images/art/p2.jpg" alt="" /> </a></figure>
        <div id="title-02" class="info hidden">
          <h2>Kaapi Nirvana</h2>
          <div class="fancybody">A prize winner at the WBC in Norway! A chilled out espresso with subtle Caribbean flavors topped with whipped cream and chocolate vermicelli.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb hot">
        <figure><a href="style/images/art/p3-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-03">
          <div class="text-overlay">
            <div class="info">Cafe Mocha</div>
          </div>
          <img src="style/images/art/p3.jpg" alt="" /> </a></figure>
        <div id="title-03" class="info hidden">
          <h2>Cafe Mocha</h2>
          <div class="fancybody">Espresso with hot milk and sinful chocolate sauce.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb hot">
        <figure><a href="style/images/art/p4-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-04">
          <div class="text-overlay">
            <div class="info">Cafe Americano</div>
          </div>
          <img src="style/images/art/p4.jpg" alt="" /> </a></figure>
        <div id="title-04" class="info hidden">
          <h2>Cafe Americano</h2>
          <div class="fancybody">A double shot of espresso with hot water, served with milk on the side.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb eatables">
        <figure><a href="style/images/art/p5-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-05">
          <div class="text-overlay">
            <div class="info">Hazelnut Karat Celebration Cake</div>
          </div>
          <img src="style/images/art/p5.jpg" alt="" /> </a></figure>
        <div id="title-05" class="info hidden">
          <h2>Hazelnut Karat Celebration Cake</h2>
          <div class="fancybody">Moist and delicious carrot cake with white chocolate and hazelnuts. Visit nearby Cafe Coffee Day to buy this delicious cake and make your special occasions unforgettable.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb accessory">
        <figure><a href="style/images/art/p6-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-06">
          <div class="text-overlay">
            <div class="info">Ullamcorper Tellus</div>
          </div>
          <img src="style/images/art/p6.jpg" alt="" /> </a></figure>
        <div id="title-06" class="info hidden">
          <h2>Vulputate Cursus Mollis</h2>
          <div class="fancybody">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus commodo.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb eatables">
        <figure><a href="style/images/art/p7-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-07">
          <div class="text-overlay">
            <div class="info">Strawberry Cloud Cupcake</div>
          </div>
          <img src="style/images/art/p7.jpg" alt="" /> </a></figure>
        <div id="title-07" class="info hidden">
          <h2>Strawberry Cloud Cupcake</h2>
          <div class="fancybody">Luscious strawberries blush on meeting a delish cloud of frosting.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb hot">
        <figure><a href="style/images/art/p8-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-08">
          <div class="text-overlay">
            <div class="info">Irish Coffee</div>
          </div>
          <img src="style/images/art/p8.jpg" alt="" /> </a></figure>
        <div id="title-08" class="info hidden">
          <h2>Irish Coffee</h2>
          <div class="fancybody">Coffee, sugar, cream and the smooth flavour of non-alcoholic whiskey.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb cold">
        <figure><a href="style/images/art/p9-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-09">
          <div class="text-overlay">
            <div class="info">Devils Own</div>
          </div>
          <img src="style/images/art/p9.jpg" alt="" /> </a></figure>
        <div id="title-09" class="info hidden">
          <h2>Devils Own</h2>
          <div class="fancybody">Get wicked with the cafe frappe loaded with chocolate and whipped cream. Ah, so sinful!</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb hot">
        <figure><a href="style/images/art/p10-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-10">
          <div class="text-overlay">
            <div class="info">Green Tea</div>
          </div>
          <img src="style/images/art/p10.jpg" alt="" /> </a></figure>
        <div id="title-10" class="info hidden">
          <h2>Green Tea</h2>
          <div class="fancybody">A Sweet, aromatic and healthy tea. The leaves are mixed with Jasmine flower bits that give a distinct fragrance and flavor. Can be served either with milk or lemon.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb accessory">
        <figure><a href="style/images/art/p11-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-11">
          <div class="text-overlay">
            <div class="info">Pellentesque Malesuada Elit</div>
          </div>
          <img src="style/images/art/p11.jpg" alt="" /> </a></figure>
        <div id="title-11" class="info hidden">
          <h2>Vulputate Cursus Mollis</h2>
          <div class="fancybody">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus commodo.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb accessory">
        <figure><a href="style/images/art/p12-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-12">
          <div class="text-overlay">
            <div class="info">Tristique Fusce Quam</div>
          </div>
          <img src="style/images/art/p12.jpg" alt="" /> </a></figure>
        <div id="title-12" class="info hidden">
          <h2>Vulputate Cursus Mollis</h2>
          <div class="fancybody">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus commodo.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb eatables">
        <figure><a href="style/images/art/p13-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-13">
          <div class="text-overlay">
            <div class="info">Hazelnut Karat Cake Slice</div>
          </div>
          <img src="style/images/art/p13.jpg" alt="" /> </a></figure>
        <div id="title-13" class="info hidden">
          <h2>Hazelnut Karat Cake Slice</h2>
          <div class="fancybody">Moist and delicious carrot cake with white chocolate and hazelnuts.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb cold">
        <figure><a href="style/images/art/p14-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-14">
          <div class="text-overlay">
            <div class="info">Iced Eskimo</div>
          </div>
          <img src="style/images/art/p14.jpg" alt="" /> </a></figure>
        <div id="title-14" class="info hidden">
          <h2>Iced Eskimo</h2>
          <div class="fancybody">Iced Eskimo, The extreme icy pole of seriously chilled coffee! Zap away that summer heat and enjoy a tall glass of pure shock, as you plunge your mind into CCDs all new summer special, the brain freeze! CCDs all new range of Iced Beverages!</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb accessory">
        <figure><a href="style/images/art/p15-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-15">
          <div class="text-overlay">
            <div class="info">Dapibus Ultricies Fusce</div>
          </div>
          <img src="style/images/art/p15.jpg" alt="" /> </a></figure>
        <div id="title-15" class="info hidden">
          <h2>Vulputate Cursus Mollis</h2>
          <div class="fancybody">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus commodo.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb cold">
        <figure><a href="style/images/art/p16-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-16">
          <div class="text-overlay">
            <div class="info">Cold Sparkle</div>
          </div>
          <img src="style/images/art/p16.jpg" alt="" /> </a></figure>
        <div id="title-16" class="info hidden">
          <h2>Cold Sparkle</h2>
          <div class="fancybody">Indulge in your favorite ice-blend cold coffee flavored with coconut.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb accessory">
        <figure><a href="style/images/art/p17-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-17">
          <div class="text-overlay">
            <div class="info">Tristique Cursus Vehicula</div>
          </div>
          <img src="style/images/art/p17.jpg" alt="" /> </a></figure>
        <div id="title-17" class="info hidden">
          <h2>Vulputate Cursus Mollis</h2>
          <div class="fancybody">Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus commodo.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb cold">
        <figure><a href="style/images/art/p18-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-18">
          <div class="text-overlay">
            <div class="info">Vegan Shake</div>
          </div>
          <img src="style/images/art/p18.jpg" alt="" /> </a></figure>
        <div id="title-18" class="info hidden">
          <h2>Vegan Shake</h2>
          <div class="fancybody">Milk not your thing? This refreshing cold coffee on ice tastes smooth and creamy, without milk.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb eatables">
        <figure><a href="style/images/art/p19-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-19">
          <div class="text-overlay">
            <div class="info">Belgian Choco Shot</div>
          </div>
          <img src="style/images/art/p19.jpg" alt="" /> </a></figure>
        <div id="title-19" class="info hidden">
          <h2>Belgian Choco Shot</h2>
          <div class="fancybody">A rich smooth Belgian chocolate shot </div>
        </div>
        <!-- /.info .hidden --> 
      </li>
      <li class="item thumb eatables">
        <figure><a href="style/images/art/p20-full.jpg" class="fancybox-media" data-rel="portfolio" data-title-id="title-20">
          <div class="text-overlay">
            <div class="info">Choco Indulgence Celebration Cake</div>
          </div>
          <img src="style/images/art/p20.jpg" alt="" /> </a></figure>
        <div id="title-20" class="info hidden">
          <h2>Choco Indulgence Celebration Cake</h2>
          <div class="fancybody">Rich and delicious dark and white chocolate truffle cake with butterscotch crunch.</div>
        </div>
        <!-- /.info .hidden --> 
      </li>
    </ul>
    <!-- /.items --> 
  </div>
  <!-- /.portfolio -->
  <br/><br/><a class="color-wrapper text-center container" href="contact.jsp">If you like what you see, pay a visit.</a>
  
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

</html>