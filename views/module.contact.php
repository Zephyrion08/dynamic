<?php
/*
 * Contact form
 */
$rescont = $innerbred = '';
$img = '';
$tellinked = '';
$telno = explode(",", $siteRegulars->contact_info);

foreach ($telno as $tel) {
  $arb = ($telno[0] == $tel) ? '' : '+977 ';
  $tellinked .= '<a href="tel:' . $arb . $tel . '" target="_blank" rel="noreferrer">' . $tel . '</a>';
  if (end($telno) != $tel) {
    $tellinked .= ', ';
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
if (defined('CONTACT_PAGE')) {


  $siteRegulars = Config::find_by_id(1);
  $maintell = '';
  $tellinked = '';
  $telno = explode(",", $siteRegulars->contact_info);
  $lastElement = array_shift($telno);
  $tellinked .= '<a href="tel:' . $lastElement . '" target="_blank" rel="noreferrer" class="text-decoration-none text-black">' . $lastElement . '</a>';
  foreach ($telno as $key => $tel) {


    $tellinked .= ',<a href="tel:+977-' . $tel . '" target="_blank" rel="noreferrer" class="text-decoration-none text-black">' . $tel . '</a>';
    if (end($telno) != $tel) {
      $tellinked .= ',';
    }
    if ($key % 2 == 0) {
      $maintell .= '<div class="d-flex align-items-center justify-content-start mb-2 text-white">
                                        <i class="flaticon-telephone me-2"></i>
                                        <div>
                                        ' . $tellinked . '
                                        </div>
                                    </div>
                                        ';
    }
  }
  $imglink = $siteRegulars->contact_upload;
  if (!empty($imglink)) {
    $img = IMAGE_PATH . 'preference/contact/' . $siteRegulars->contact_upload;
  } else {
    $img = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
  }
  // pr($siteRegulars);
  $nearbydetail = '';
  $recRows = Nearby::find_all_active();
  // pr($recRow);
  if (!empty($recRows)) {

    foreach ($recRows as $recRow) {



      $nearbydetail .= '
            <div class="accordion-item">
          <h2 class="accordion-header" id="heading' . $recRow->title . '">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse' . $recRow->title . '" aria-expanded="false" aria-controls="collapse' . $recRow->title . '">
              ' . $recRow->title . ' <span class="badge   rounded-pill ms-2">' . $recRow->distance . '</span>
            </button>
          </h2>
          <div id="collapse' . $recRow->title . '" class="accordion-collapse collapse" aria-labelledby="heading' . $recRow->title . '" data-bs-parent="#nearbyAccordion">
            <div class="accordion-body">
              ' . strip_tags($recRow->content) . '
              <div class="mt-3"></div>
                        <a href="' . $recRow->google_embeded . '" target="_blank" rel="noreferrer" class="btn btn-outline-primary btn-sm">
                            Get Direction
                        </a>
            </div>
          </div>
        </div>
            ';

    }
  }
  $rescont .= '


    <section class="page-title" style="background-image: url(' . $img . ');">
      <div class="auto-container">
        <div class="title-outer text-center">
          <h1 class="title">Contact Us</h1>
        </div>
      </div>
    </section>
    <!-- Contact -->

    <section class="contact-details">
      <div class="container pt-110 pb-70">

        <div class="row">
          <div class="col-xl-7 col-lg-6">
            <div class="sec-title">
              <span class="sub-title before-none">Send us email</span>
              <h2>Feel free to write</h2>
            </div>
            <!-- Contact Form -->
            <form id="contact_form">
              <div class="row">
                <div class="col-12">
                    <div class="alert alert-success contact__msg" style="display: none" role="alert"> Your message was sent successfully. </div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-6">
                  <div class="mb-3">
                    <input name="name" class="form-control" type="text" placeholder="Enter Name">
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="mb-3">
                    <input name="email" class="form-control required email" type="email" placeholder="Enter Email">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-6">
                  <div class="mb-3">
                    <input name="address" class="form-control required" type="text" placeholder="Enter Subject">
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="mb-3">
                    <input name="phone" class="form-control" type="text" placeholder="Enter Phone">
                  </div>
                </div>
              </div>
              <div class="mb-3">
                <textarea name="message" class="form-control required" rows="7"
                  placeholder="Enter Message"></textarea>
              </div>
              <div class="mb-5">
                <input name="form_botcheck" class="form-control" type="hidden" value="" />
                <button type="submit" id="submit" class="theme-btn btn-style-one" data-loading-text="Please wait..."><span
                    class="btn-title">Send message</span></button>
              </div>
            </form>
            <!-- Contact Form Validation-->
          </div>
          <div class="col-xl-5 col-lg-6">
            <div class="contact-details__right">
              <div class="sec-title">
                <span class="sub-title before-none">Need any help?</span>
                <h2>Get in touch with us</h2>
                <div class="text">Lorem ipsum is simply free text available dolor sit amet consectetur notted adipisicing elit sed do eiusmod tempor incididunt simply dolore magna.</div>
              </div>
              <ul class="list-unstyled contact-details__info">
                <li>
                  <div class="icon">
                    <i class="fa fa-phone" width="25"></i>
                  </div>
                  <div class="text">
                    <h6 class="mb-1">Have any question?</h6>
                    ' . $tellinked . '
                  </div>
                </li>
                <li>
                  <div class="icon">
                    <i class="fa fa-envelope"></i>
                  </div>
                  <div class="text">
                    <h6 class="mb-1">Write email</h6>
                    ' . $emailinked . '
                  </div>
                </li>
                <li>
                  <div class="icon">
                    <i class="fa fa-home"></i>
                  </div>
                  <div class="text">
                    <h6 class="mb-1">Visit anytime</h6>
                    ' . $siteRegulars->fiscal_address . '
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>
        <section class="map-section">
      <iframe class="map w-100" src="' . $siteRegulars->location_map . '"></iframe>
    </section>


    ';
}

$jVars['module:contact-us'] = $rescont;


//uc contact details
$home_contact = '';
$configRec = Config::find_by_id(1);
$home_contact .= ' 
                    <div class="six columns mob-whole contact">
                    <h3>Contact Numbers:</h3>
                    <p> Cell No: <a href="' . $configRec->whatsapp . '">' . $configRec->whatsapp . '</a><br>
                    <p> Cell No: <a href="' . $configRec->address . '"> ' . $configRec->address . '</a><br>
                    </p>

                    <h3>Email:</h3>
                    <p><a href="mailto:' . $configRec->email_address . '"> ' . $configRec->email_address . '</a><br>
                    </p>

                    <h3>Address:</h3>
                    <p><a href="' . $configRec->contact_info2 . '" target="_blank" rel="noreferrer"> ' . $configRec->fiscal_address . ' </a>
                    </p>
                </div>
                </div>
                ';

$jVars['module:contact:home'] = $home_contact;
