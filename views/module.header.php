<?php
$siteRegulars = Config::find_by_id(1);
$booking_code = Config::getField('hotel_code', true);
$header = ob_start();
$headerscript = '';
$tellinked = '';
$telno = explode("/", $siteRegulars->contact_info);
$lastElement = array_shift($telno);
$tellinked .= '<a href="tel:' . $lastElement . '" target="_blank" rel="noreferrer">' . $lastElement . '</a>/';
foreach ($telno as $tel) {

    $tellinked .= '<a href="tel:+977-' . $tel . '" target="_blank" rel="noreferrer">' . $tel . '</a>';
    if (end($telno) != $tel) {
        $tellinked .= '/';
    }
}
?>
<header class="main-header header-style-two">
    <div class="container-fluid px-5">
        <div class="header-top">
            <div class="inner-box">
                <!-- top-left -->
                <div class="top-left">
                    <span><i class="icon fa fa-location"></i>Kathmandu, Nepal</span>
                </div>
                <!-- Top-right -->
                <div class="top-right">
                    <ul class="social-icon-one">
                        <li>Follow Us :</li>
                        <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fab fa-x-twitter"></i></a></li>
                        <li><a href="#"><i class="fa-brands fa-linkedin"></i></a></li>
                        <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Main box -->
        <div class="main-box">
            <div class="logo-box">
                <div class="logo">
                    <a href="index.html"><img src="images/logo-2.png" alt="" title="Villaz"></a>
                </div>
            </div>

            <!--Nav Box-->
            <div class="nav-outer">
                <nav class="nav main-menu">
                    <ul class="navigation">
                        <li><a href="about.html">About Us</a></li>
                        <li class="dropdown"><a href="rooms.html">Rooms & Suites</a>
                            <ul>
                                <li><a href="room-details.html">Rooms 1</a></li>
                                <li><a href="room-details.html">Rooms 2</a></li>
                                <li><a href="room-details.html">Rooms 3</a></li>
                            </ul>
                        </li>
                        <li><a href="dine.html">Dine & Bar</a></li>
                        <li><a href="event.html">Meeting & Halls</a></li>
                        <li><a href="facility.html">Services</a></li>
                        <li><a href="gallery.html">Gallery</a></li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </nav>
                <!-- Main Menu End-->
            </div>

            <div class="outer-box">
                <button class="search-btn">
                    <a href="#">Book Now</a>
                </button>
            </div>
        </div>

        <!-- Mobile Menu  -->
        <div class="mobile-menu">
            <div class="menu-backdrop"></div>
            <!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header-->
            <nav class="menu-box">
                <div class="upper-box">
                    <div class="nav-logo">
                        <a href="index.html"><img src="images/logo-2.png" alt=""></a>
                    </div>
                    <div class="close-btn"><i class="icon fa fa-times"></i></div>
                </div>
                <ul class="navigation clearfix"></ul>
                <!--Keep This Empty / Menu will come through Javascript-->

                <ul class="social-links">
                    <li><a href="#"><i class="fab fa-x-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                    <li><a href="#"><i class="fab fa-pinterest"></i></a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                </ul>
            </nav>
        </div><!-- End Mobile Menu -->
    </div>
</header>
<!-- header close -->
<?php
$header = ob_get_clean();
$booking_code = Config::getField('hotel_code', true);

$header = '
<header class="main-header header-style-two">
    <div class="container-fluid px-5">
        <div class="header-top">
            <div class="inner-box">
                <!-- top-left -->
                <div class="top-left ">
                    <span><i class="icon fa fa-location"></i>' . $siteRegulars->fiscal_address . '</span>
                </div>
                <!-- Top-right -->
                <div class="top-right">
                    <ul class="social-icon-one">
                        <li> Follow Us.:</li>
                        ' . $jVars['module:socilaLinkbtm'] . '
                    </ul>
                </div>
            </div>
        </div>

        <!-- Main box -->
        <div class="main-box">
            <div class="logo-box">
                <div class="logo">
                    <a href="' . BASE_URL . '"><img src="' . IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload . '" alt="" title="Villaz"></a>
                </div>
            </div>

            <!--Nav Box-->
            <div class="nav-outer">
                <nav class="nav main-menu">
                     ' . $jVars['module:res-menu'] . '
                </nav>
                <!-- Main Menu End-->
            </div>

            <div class="outer-box">
                <button class="search-btn">
                    <a href="#">Book Now</a>
                </button>
            </div>
        </div>

        <!-- Mobile Menu  -->
    </div>
</header>


';
$headerscript = '
 <script>
 var wind = $(window);
              wind.on("scroll", function () {
        var bodyScroll = wind.scrollTop(),
            navbar = $(".navbar"),
            logo = $(".navbar .logo> img");
        if (bodyScroll > 100) {
            navbar.addClass("nav-scroll");
            logo.attr(\'src\', \'' . IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload . '\');
        } else {
            navbar.removeClass("nav-scroll");
            logo.attr(\'src\', \'' . IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload . '\');
        }
    });
        </script>';
$jVars['module:header'] = $header;
$jVars['module:header-script'] = $headerscript;



$header1 = '
                <header class="site-header">
               <div class="logo">
               	<a href="' . BASE_URL . '' . '"><img src="' . IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload . '" style="border-radius: 6%; background-color: white;" alt="logo"></a>
               </div> 
            </header>

            <div id="main-content" class="twelve columns">
                ' . $jVars['module:slideshow-content'] . '
            </div><!-- /main-content form -->
             
            <div class="modal-toggles">
            ' . $jVars['module:res-menu-uc'] . '
          
         
          </div>';
$jVars['module:header-uc'] = $header1;


