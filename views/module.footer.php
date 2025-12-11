<?php
$siteRegulars = Config::find_by_id(1);
$lastElement = '';
$phonelinked = '';
$whatsapp = '';
$virstualtour = '';
$tellinked = '';
$telno = explode(",", $siteRegulars->contact_info);
// $lastElement = array_shift($telno);
// $tellinked .= '<a href="tel:' . $lastElement . '" target="_blank" rel="noreferrer">' . $lastElement . '</a>';
foreach ($telno as $tel) {
  $arb = ($telno[0] == $tel) ? '' : '+977 ';
  $tellinked .= '<a href="tel:' . $arb . $tel . '" target="_blank" rel="noreferrer">' . $tel . '</a>';
  if (end($telno) != $tel) {
    $tellinked .= ', ';
  }
}


$mob_txt = '';
$mobs = explode(",", $siteRegulars->contact_info2);
foreach ($mobs as $moob) {
  $arb = ($mobs[0] == $moob) ? '+977 ' : '+977 ';
  $mob_txt .= '<a href="tel:' . $arb . $moob . '" target="_blank" rel="noreferrer">' . $moob . '</a>';
  if (end($mobs) != $moob) {
    $mob_txt .= ', ';
  }
}



$emailinked = '';
$emails = explode(",", $siteRegulars->email_address);
$lastEmail = array_shift($emails);
$emailinked .= '<a href="mailto:' . $lastEmail . '" target="_blank" rel="noreferrer">' . $lastEmail . '</a>';
foreach ($emails as $email) {

  $emailinked .= ',<a href="mailto:' . $email . '" target="_blank" rel="noreferrer">' . $email . '</a>';
  if (end($emails) != $email) {
    $emailinked .= ',';
  }
}
$phoneno = explode("/", $siteRegulars->whatsapp);
$lastElement = array_shift($phoneno);
$phonelinked .= '<a href="tel:+977-' . $lastElement . '" target="_blank" rel="noreferrer">' . $lastElement . '</a>/';
foreach ($phoneno as $phone) {

  $phonelinked .= '<a href="tel:+977-' . $phone . '" target="_blank" rel="noreferrer">' . $phone . '</a>';
  if (end($phoneno) != $phone) {
    $phonelinked .= '/';
  }
}
$roomslist = '';
$rooms = Subpackage::find_by_sql("SELECT * FROM tbl_package_sub WHERE status='1' AND type='2' ORDER BY sortorder DESC");
if (!empty($rooms)) {
  foreach ($rooms as $room) {
    $roomslist .= '<li><a href="' . BASE_URL . $room->slug . '" class="text-decoration-none">' . $room->title . '</a></li>';
  }
}
if (!empty($siteRegulars->whatsapp_a)) {
  $whatsapp = '
<div class="whats_app">
        <a href="https://wa.me/' . $siteRegulars->whatsapp_a . '" target="_blank" rel="noreferrer" class="whatsapp">
            <img src="' . BASE_URL . 'template/web-old/img/whatsapp.png" class="whatsapp_img" alt="whatsapp">
        </a>
    </div>
  ';
} else {
  $whatsapp = '';
}
$rooms = '';
$roomdatas = subpackage::get_relatedsub_by(2);
// pr($roomdatas);
if (!empty($roomdatas)) {
  foreach ($roomdatas as $roomdata) {
    $rooms .= ' <a href="' . BASE_URL . $roomdata->slug . '">' . $roomdata->title . '</a>';
  }
}
$vtours = VirtualTour::find_all_active();
$countvt = count($vtours);
// pr($countvt);
// pr($countvt);
if ($countvt != 0) {
  $virstualtour = ' <div class="three_app">
        <a href="' . BASE_URL . 'virtual-tour" target="_blank" rel="noreferrer" class="three">
            <img src="' . BASE_URL . 'template/web/img/virtual.jpg"></a>
    </div>';
}
$footer = '
 <footer class="main-footer footer-style-one">
      <!-- Widgets Section -->
      <div class="widgets-section">
        <div class="auto-container">
          <div class="row">
            <!-- Footer Column -->
            <div class="footer-column col-lg-4 col-sm-6">
              <div class="footer-widget about-widget wow fadeInLeft">
                <div class="widget-content">
                  <div class="logo"><a href="#"> <img src="' . IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload . '" alt=""></a></div>
                  <div class="text mb-0">' . $siteRegulars->breif . '</div>
                </div>
              </div>

              <div class="footer-widget widget-social wow fadeInLeft" data-wow-delay="300ms">

                <div class="widget-content">
                  <ul class="social-icon">
                    <li>' . $jVars['module:socilaLinkbtm'] . '</li>
                  </ul>
                </div>
              </div>
            </div>

            <!-- footer column -->
            <div class="footer-column col-lg-3 col-sm-6">
              <div class="footer-widget info-widget mb-30 wow fadeInLeft" data-wow-delay="300ms">
                <h4 class="widget-title">Address</h4>
                <div class="widget-content">
                  <!-- Contact List -->
                  <div class="contact-list">
                    <div class="inner">
                      <div class="list-info">' . $siteRegulars->fiscal_address . '</div>
                      <div class="list-info"> ' . $tellinked . '</div>
                      <div class="list-info">' . $emailinked . '</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Footer Column -->
            <div class="footer-column col-lg-2 col-sm-6 mb-0 ps-xl-15">
              <div class="footer-widget links-widget  wow fadeInLeft" data-wow-delay="200ms">
                <h4 class="widget-title">Quick Links</h4>
                <div class="widget-content">
                  <ul class="user-links">' . $jVars['module:footer-menu'] . '
                  </ul>
                </div>
              </div>
            </div>
            <!-- Footer Column -->
            <div class="footer-column col-lg-3 col-sm-6 mb-0 ps-xl-4">
              <div class="footer-widget links-widget ps-xl-4 ms-xl-5  wow fadeInLeft" data-wow-delay="200ms">
                <h4 class="widget-title">Booking Engine</h4>
                <div class="widget-content">
                  <ul class="user-links">
                    <li>' . $jVars['module:otatop'] . '</li>
                  </ul>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
      <!--  Footer Bottom -->
      <div class="footer-bottom">
        <div class="auto-container">
          <div class="inner-container">
            <div class="copyright-text">' . $jVars['site:copyright'] . '</div>
          </div>
        </div>
      </div>
    </footer>

    ' . $whatsapp . '

   ' . $virstualtour . '


           ';


$jVars['module:footer'] = $footer;


$footer2 = '
 <footer class="group">
      <ul class="footer-social">
         <li><span><a href="mailto:' . $configRec->email_address . '"> ' . $configRec->email_address . '</a></span></li>
         ' . $jVars['module:socilaLinkbtm'] . '
      </ul>
      <ul class="footer-copyright">
         <li>' . $jVars['site:copyright'] . '</li>
      </ul>
   </footer>
   <!-- Scroll to Top Button -->


';
$jVars['module:footer-booking-2'] = $footer2;



$jVars['module:footer-whatsapp'] = '';
