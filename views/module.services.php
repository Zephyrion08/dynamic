<?php
/*
 * Service home list
 */
$rescont = $ressercont = '';
$i = 0;
$j = 0;
$subpkgRec = Services::getservice_list(4);
// var_dump($subpkgRec); die();
if (!empty($subpkgRec)) {

    foreach ($subpkgRec as $k => $v) {
        $imglink = '';
        if ($v->image != "a:0:{}") {
            $imageList = unserialize($v->image);
            $file_path = SITE_ROOT . 'images/services/' . $imageList[0];
            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'services/' . $imageList[0];
            }
        }
        $actv = ($i == 0) ? 'active' : '';
        $rescont .= '<li class="' . $actv . '">
                                            <a href="#coffe-shop' . $v->id . '" data-toggle="tab">
                                                <img src="' . $imglink . '">
                                                <h4>' . $v->title . '</h4>
                                            </a>
                                        </li>';
        $i++;
    }

    foreach ($subpkgRec as $k => $v) {
        $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($v->content));
        $actv1 = ($j == 0) ? 'active' : '';
        $ressercont .= '<div role="tabpanel" class="tab-pane fade in ' . $actv1 . '" id="coffe-shop' . $v->id . '">

                                <p>' . substr(strip_tags($content[0]), 0, 300) . '
                                <br><a href="' . BASE_URL . 'service/' . $v->slug . '" title="">Read More</a></p>
                            </div>';
        $j++;
    }
}

$jVars['module:home-service-list'] = $rescont;
$jVars['module:home-service-content-list'] = $ressercont;


$restscont = '';

$servpkgRec = Services::find_all();
// var_dump($subpkgRec); die();
if (isset($_REQUEST['slug']) and !empty($_REQUEST['slug'])) {
    $slug = $_REQUEST['slug'];
} else {
    $slug = 'health-club';
}
if (!empty($subpkgRec)) {
    $i = 0;
    $j = 0;
    $restscont .= '<div class="tab-section bg-gray body-room-5">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="text-center">
                            <h2 class="mb-0">Services</h2>
                            <ul class="pages-link">
                                <li><a href="' . BASE_URL . 'home">Home</a></li>
                                <li>/</li>
                                <li>Services</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="dining-tabs">
                        <ul class="nav nav-tabs">';
    foreach ($servpkgRec as $key => $serRec) {
        if ($slug == $serRec->slug) {
            $class = "active";
        } else {
            $class = "";
        }
        $actv = ($i == 0) ? 'active' : '';
        $restscont .= '<li class="' . $class . '">
                                <a href="#Sauna' . $serRec->id . '" id="' . $serRec->slug . '" role="tab" data-toggle="tab">' . $serRec->title . '<small class="d-block">' . $serRec->sub_title . '</small></a>
                            </li>';
        $i++;
    }
    $restscont .= '  </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="block small-padding both-padding page">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="tab-content">';
    foreach ($servpkgRec as $key => $serRec) {
        $imageList = '';
        if ($serRec->image != "a:0:{}") {
            $imageList = unserialize($serRec->image);
        }
        if ($slug == $serRec->slug) {
            $class1 = "active";
        } else {
            $class1 = "";
        }
        $actv = ($j == 0) ? 'active' : '';
        $restscont .= '<div role="tabpanel" class="tab-pane fade in ' . $class1 . '" id="Sauna' . $serRec->id . '">
                                <div class="dining-detail">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="dining-detail-carousel">';
        // var_dump($imageList); die();
        if ($serRec->image != "a:0:{}") {
            foreach ($imageList as $key => $imgServ) {
                $restscont .= ' <div class="item">
											<img src="' . IMAGE_PATH . 'services/' . $imgServ . '" alt="' . $serRec->title . '" />
										</div>';
            }
        }
        $restscont .= ' </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <p class="service-content">
                                               ' . substr(strip_tags($serRec->content), 0, 30000) . '
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>';
        $j++;
    }
    $restscont .= '</div>
                    </div>
                </div>
            </div><!-- container -->
        </div><!-- block -->';


}

$jVars['module:service-detail-list'] = $restscont;

$facility_bread = '';
if (defined('FACILITY_PAGE')) {
    $siteRegulars = Config::find_by_id(1);
    $imglink = $siteRegulars->facility_upload;
    // pr($imglink);
    if (!empty($imglink)) {
        $img = IMAGE_PATH . 'preference/facility/' . $siteRegulars->facility_upload;
    } elseif (!empty($siteRegulars->other_upload)) {
        $img = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
    } else {
        $img = BASE_URL . 'template/web/images/background/page-title-bg.png';

    }


    $facility_bread = '
        <section class="page-title" style="background-image: url(' . $img . ');">
            <div class="auto-container">
                <div class="title-outer text-center">
                    <h1 class="title">Our Services</h1>
                </div>
            </div>
        </section>';

}
$jVars['module:facilitybread'] = $facility_bread;

$facility = "";
if (defined('FACILITY_PAGE')) {


    $record = Services::getservice_list();
    if (!empty($record)) {
        foreach ($record as $recRow) {
            if (!empty($recRow->icon)) {
                $facility .= '
                <div class="col-lg-3 col-md-6">
                    <div class="single-facility animate-box" data-animate-effect="fadeInUp"> <i class="' . $recRow->icon . '"></i>
                        <h5>' . $recRow->title . '</h5>
                    </div>
                </div>

                ';
            } else {

                $img = !empty($recRow->image) ? @unserialize($recRow->image) : [];

                if (is_array($img) && !empty($img[0])) {
                    $file_path = SITE_ROOT . 'images/services/' . $img[0];
                    if (file_exists($file_path)) {
                        $imglink = IMAGE_PATH . 'services/' . $img[0];
                        $iconHtml = '<img src="' . $imglink . '">';
                    } else {
                        $iconHtml = '';
                    }
                } else {
                    $iconHtml = '';
                }


                if (!empty($iconHtml)) {
                    $facility .= '
                    <div class="service-block-six text-center col-lg-3 col-sm-6">
                        <div class="inner-box">
                            <div class="icon-box">
                                <div class="bg-shap">
                                    <div class="bg-shap">
                                        ' . $iconHtml . '
                                    </div>
                                </div>
                            </div>
                            <div class="content-box">
                                <h4 class="title">' . $recRow->title . '</h4>
                            </div>
                        </div>
                    </div>


                    ';
                }
            }
        }
    }


}

$jVars['module:facility-list'] = $facility;


/*
 * Service Page
 */
$rescont = '';
$imglink = '';
$rescont_final = '';

if (defined('SERVICES_PAGE') and isset($_REQUEST['slug'])) {
    $slug = addslashes($_REQUEST['slug']);
    $subpkgRec = services::find_by_slug($slug);
    if (!empty($subpkgRec)) {
        $rescont .= '';
        $imgs = unserialize($subpkgRec->image);
        foreach ($imgs as $img) {
            $file_path = SITE_ROOT . 'images/services/' . $img;
            if (file_exists($file_path) && $img != NULL) {
                $imglink .= '<div class="text-center item bg-img" data-overlay-dark="3" data-background="' . IMAGE_PATH . 'services/' . $img . '"></div> ';
            }
        }
        $res_content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($subpkgRec->content));
        $tru_content = (!empty($res_content[1])) ? $res_content[1] : $res_content[0];
        $rescont .= '
            <header class="header slider">
                <div class="owl-carousel owl-theme">
                    ' . $imglink . '
                </div>
                <!-- arrow down -->
                <div class="arrow bounce text-center">
                    <a href="#" data-scroll-nav="1" class=""> <i class="ti-arrow-down"></i> </a>
                </div>
            </header>
            <section class="rooms-page section-padding" data-scroll-index="1">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <div class="section-subtitle">' . $subpkgRec->sub_title . '</div>
                            <div class="section-title mb-30">' . $subpkgRec->title . '</div>
                            ' . $tru_content . '
                        </div>
                    </div>
                </div>
            </section>
        ';
    }
}

$jVars['module:service-main'] = $rescont;


$facilityhome = "";
$facilityhomeservice = '';
$fac = '';
if (defined('HOME_PAGE')) {
    $record = Services::getservice_list(8, 1);
    if (!empty($record)) {
        foreach ($record as $i => $recRow) {
            $img = unserialize($recRow->image);
            if (!empty($img)) {
                $file_path = SITE_ROOT . 'images/services/' . $img[0];
                if (file_exists($file_path) && $img[0] != NULL) {
                    $imglink = IMAGE_PATH . 'services/' . $img[0];
                    $facilityhome .= '
                        <div class="col-lg-4 col-md-6">
                            <div class="single-facility animate-box" data-animate-effect="fadeInUp"> <img src="' . $imglink . '">
                                <h5>' . $recRow->title . '</h5>
                                <p>' . strip_tags($recRow->content) . '</p>
                                <div class="facility-shape"> <img src="' . $imglink . '"> </div>
                            </div>
                        </div>
                    ';
                }
            }
        }
    }

    $recordservice = Services::getservice_list('', 2);
    if (!empty($recordservice)) {
        foreach ($recordservice as $i => $recservice) {
            $img = unserialize($recservice->image);
            if (!empty($img)) {
                $file_path = SITE_ROOT . 'images/services/' . $img[0];
                if (file_exists($file_path) && $img[0] != NULL) {
                    $imglink = IMAGE_PATH . 'services/' . $img[0];

                    // link logic
                    $link = '
                    <a href="' . BASE_URL . 'service/' . $recservice->slug . '">' . $recservice->sub_title . '</a>';
                    if (!empty($recservice->linksrc)) {
                        $target = ($recservice->linktype == 1) ? 'target="_blank"' : '';
                        $base_url = ($recservice->linktype == 1) ? $recservice->linksrc : BASE_URL . $recservice->linksrc;
                        $link = '
                                <a href="' . $base_url . '" ' . $target . '">' . $recservice->sub_title . '</a>';
                    }

                    if ($i % 2 == 0) {
                        $facilityhomeservice .= '
                            <div class="service-block-two" data-bg="' . $imglink . '">
                                <div class="inner-box">
                                <div class="content">
                                    <div class="category">' . $recservice->title . '</div>
                                    <h3 class="title">' . $recservice->sub_title . '</h3>
                                </div>
                                <div class="overlay-content">
                                    <div class="category">' . $recservice->title . '</div>
                                    <h3 class="title">' . $link . '</h3>
                                </div>
                                </div>
                            </div>


                        ';
                    } else {
                        $facilityhomeservice .= '

                            <div class="service-block-two" data-bg="' . $imglink . '">
                                <div class="inner-box">
                                <div class="content">
                                    <div class="category">' . $recservice->title . '</div>
                                    <h3 class="title">' . $recservice->sub_title . '</h3>
                                </div>
                                <div class="overlay-content">
                                    <div class="category">' . $recservice->title . '</div>
                                    <h3 class="title">' . $link . '</h3>
                                </div>
                                </div>
                            </div>

                        ';
                    }
                }
            }
        }
        $fac .= '
            <section class="service-section-two pt-80 pb-0">
      <div class="auto-container">
        <div class="sec-title wow fadeInUp">
          <div class="row">
            <div class="col-lg-5">
              <span class="sub-title style-three">Our Services</span>
              <h2>Stay Better, Travel Happier with Us</h2>
            </div>
            <div class="col-lg-4 offset-lg-2">
              <div class="text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum
                has been the industry\'s standard dummy text </div>
            </div>
          </div>
        </div>
      </div>

      <div class="outer-box" data-background="template/web/images/background/bg1.jpg">
        <div class="service-two-slider">
          ' . $facilityhomeservice . '
        </div>
      </div>
    </section>
        ';
    }
}
if (defined('FACILITY_PAGE')) {


    $record = Services::getservice_list(30, 1);
    if (!empty($record)) {
        foreach ($record as $recRow) {
            if (!empty($recRow->icon)) {
                $facilityhome .= '
                 <div class="col">
                            <div class="ul-service">
                                <div class="ul-service-icon"><i class="fa-light ' . $recRow->icon . '"></i></div>
                                <span class="ul-service-title">' . $recRow->title . '</span>
                                <p class="ul-service-descr">' . $recRow->content . '</p>
                            </div>
                        </div>

                ';
            } else {
                $imglink = '';
                $img = !empty($recRow->image) ? unserialize($recRow->image) : [];
                $file_path = SITE_ROOT . 'images/services/' . $img[0];
                if (file_exists($file_path) && $img[0] != NULL) {
                    $imglink = IMAGE_PATH . 'services/' . $img[0];
                    $facilityhome .= '
                         <div class="col">
                            <div class="ul-service">
                                <div class="ul-service-icon"><img src="' . $imglink . '" alt="' . $recRow->title . '"></div>
                                <span class="ul-service-title">' . $recRow->title . '</span>
                                <p class="ul-service-descr">' . $recRow->content . '</p>
                            </div>
                        </div>

                    ';
                }
            }
        }
    }


}

$jVars['module:facility-list-home'] = $facilityhome;
$jVars['module:facility-service-home'] = $fac;

?>