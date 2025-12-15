<?php




$mainslides = '';
$address = '';

$Records = Slideshow::getSlideshow_by_mode(1);
$Recordvideo = Slideshow::getslide_by_mode(2);
// pr($slides);getSlideshow_by_mode
// pr($Recordvideo);
if (!empty($Recordvideo)) {
    if ($Records) {
        foreach ($Records as $RecRow) {
            $splitSRC = explode("http://", $RecRow->linksrc);
            $linkTarget = ($RecRow->linktype == 1) ? ' target="_blank"  ' : '';
            $linksrc = (count($splitSRC) == 1) ? $RecRow->linksrc : $RecRow->linksrc;
            $linkstart = ($RecRow->linksrc != '') ? ' <a href="' . $linksrc . '" ' . $linkTarget . '" class="btn" data-animation-in="fadeInUp" data-delay-in="0.5">rooms & suites' : '';
            $linkend = ($RecRow->linksrc != '') ? '</a>' : '</a>';
            $file_path = SITE_ROOT . 'images/slideshow/' . $RecRow->image;
            // pr($RecRow->linktype);
            if (file_exists($file_path) and !empty($RecRow->image)) {
                $mainslides .= '

                    <div class="banner-slide-v2">
                <div class="outer-box">
                    <figure class="image wow fadeInUp tm-gsap-img-parallax overflow-hidden"><img
                        src="' . IMAGE_PATH . 'slideshow/' . $RecRow->image . '" alt=""></figure>
                    <div class="content-box">
                    <span class="sub-title" data-animation-in="fadeInUp" data-delay-in="0.1">' . $RecRow->title . '</span>
                    <h1 data-animation-in="fadeInUp" data-delay-in="0.3">' . $RecRow->title . '</h1>
                   ' . $linkstart . $linkend . '
                    </div>
                </div>
                </div>
            ';

            }
        }
    }
} else {
    $mainslides .= '
 <header class="header">
        <div class="video-fullscreen-wrap">
            <div class="video-fullscreen-video">
                <video playsinline="" autoplay="" loop="" muted="">
                    <source src="' . IMAGE_PATH . 'slideshow/video/' . $Recordvideo->source_vid . '" type="video/mp4" autoplay="" loop="" muted="">
                </video>
            </div>
            <div class="v-middle caption overlay">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-md-12 text-center">
                            <!--<h1>' . $Recordvideo->title . '</h1>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

';
}

$jVars['module:homeslider'] = $mainslides;


/* First Slideshow */
$reslide = $rescontent = '';

$Records = Slideshow::getSlideshow_by('', '', 1);
// pr($Records);
// var_dump($Records); die();
if ($Records) {
    $reslide .= '';
    foreach ($Records as $RecRow) {


        $file_path = SITE_ROOT . 'images/slideshow/' . $RecRow->image;
        if (file_exists($file_path) and !empty($RecRow->image)) {
            $reslide .= '

                <div class="item"><img src="' . IMAGE_PATH . 'slideshow/' . $RecRow->image . '" alt="' . $RecRow->title . '" width="100%"></div>
                
                ';

            $rescontent = '<h1>' . $siteRegulars->upcomingcontent . '</h1>';

        }

    }
    $reslide .= ' ';
}

$jVars['module:slideshow-uc'] = $reslide;
$jVars['module:slideshow-content'] = $rescontent;




?>