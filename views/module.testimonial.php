<?php

/*
 * Testimonial List Home page
 */
$restst = '';
$tstRec = Testimonial::get_alltestimonial(9);
if (!empty($tstRec)) {
    $restst .= '';
    foreach ($tstRec as $tstRow) {
        $slink = !empty($tstRow->linksrc) ? $tstRow->linksrc : 'javascript:void(0);';
        $target = !empty($tstRow->linksrc) ? 'target="_blank" rel="noreferrer"' : '';
        $rating = '';
        for ($i = 0; $i < $tstRow->type; $i++) {
            $rating .= '<a href="#"><i class="fa-solid fa-star"></i></a>';
        }
        $restst .= '';
        $restst .= '
        <!-- owl item -->
                            <div class="mad-grid-item">
                                <div class="mad-testimonial">
                                    <div class="mad-testimonial-info">
                                        <blockquote>
                                            <p>
                                                �' . strip_tags($tstRow->content) . '�
                                            </p>
                                        </blockquote>
                                    </div>

                                    <div class="mad-author">
                                        <div class="mad-author-info">
                                            <span class="mad-author-name">' . $tstRow->name . ' - ' . $tstRow->via_type . '</span>
                                              <a href="#"><img src="template/web/images/visor2.png" alt="tetimonial_image" /></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
        <!-- / owl item -->
                    ';

        $restst .= '';
    }
    $restst .= '';
}

$result_last = '
<div class="mad-section mad-section--stretched mad-colorizer--scheme-color-3 with-svg-img mad-colorizer--scheme-light  content-element-main" data-bg-image-src="footer_4_bg_img.svg">
                    <!--================ Testimonials ================-->
                    <div class="mad-testimonials style-2">
                        <div class="mad-grid mad-grid--cols-1 owl-carousel no-dots nav-size-2">
                    ' . $restst . '
                    </div>
                    </div>
                    <!--================ End of Testimonials ================-->
                </div>';


$jVars['module:testimonialList123'] = $result_last;



/*
 * Testimonial Header Title
 */
$tstHtitle = '';
$test = '';

if (defined('HOME_PAGE')) {
    $tstRec = Testimonial::get_alltestimonial();
    if (!empty($tstRec)) {

        foreach ($tstRec as $tstRow) {
            $rate = str_repeat('<i class="star-rating"></i>', $tstRow->rating);
            $tstHtitle .= '
            <div class="testimonial-block-four">
            <div class="inner-box">
              <div class="content-box">
                <span class="icon fa fa-quote-right"></span>
                <div class="text">' . strip_tags($tstRow->content) . '</div>
              </div>
              <div class="info-box">
                <figure class="thumb"><a href="' . $slink . '" ' . $target . '><img src="' . IMAGE_PATH . 'testimonial/' . $tstRow->image . '" alt=""></a></figure>
                <div><a href="' . $slink . '" ' . $target . '>
                  <h6 class="name">' . $tstRow->name . '</h6>
                  <span class="designation">' . $tstRow->via_type . '</span>
                  </a>
                </div>
              </div>
            </div>
          </div>
';
        }
        $test .= '
            <section class="testimonial-section-four">
      <div class="auto-container">
        <div class="row justify-content-end">
          <div class="col-lg-8">
            <div class="sec-title text-center">
              <span class="sub-title">Our Customer Feedback</span>
              <h2>What Client\'s Say?</h2>
            </div>
          </div>
        </div>
        <div class="testimonial-carousel-two slick-gap-30">
          ' . $tstHtitle . '
        </div>
      </div>
      <div class="image-box d-none d-lg-block">
        <figure class="image wow reveal-top tm-gsap-img-parallax overflow-hidden"><img
            src="images/resource/testimonials-side-bg.jpg" alt=""></figure>
      </div>
    </section>
        ';
    }
}
$jVars['module:testimonial-title'] = $test;


/*
 * Testimonial Rand
 */
$tstHead = '';

$tstRand = Testimonial::get_by_rand();
if (!empty($tstRand)) {
    $tstHead .= '<!-- Quote | START -->
	<div class="section quote fade">
		<div class="center">
	    
	        <div class="col-1">
	        	<div class="thumb"><img src="' . IMAGE_PATH . 'testimonial/' . $tstRand->image . '" alt="' . $tstRand->name . '"></div>
	            <h5><em>' . strip_tags($tstRand->content) . '</em></h5>
	            <p><span><strong>' . $tstRand->name . ', ' . $tstRand->country . '</strong> (Via : ' . $tstRand->via_type . ')</span></p>
	        </div>
	        
	    </div>
	</div>
	<!-- Quote | END -->';
}

$jVars['module:testimonial-rand'] = $tstHead;


/*
 * Testimonial List
 */
$restst = '';
$tstRec = Testimonial::get_alltestimonial(9);
if (!empty($tstRec)) {
    $restst .= '<div class="clients_slider owl-carousel" id="testi-slider">';

    foreach ($tstRec as $tstRow) {
        $slink = !empty($tstRow->linksrc) ? $tstRow->linksrc : 'javascript:void(0);';
        $target = !empty($tstRow->linksrc) ? 'target="_blank" rel="noreferrer"' : '';


        $restst .= '<div class="item">
                        <div class="media">
                        <div class="col-md-3 col-sm-3">
                            <div class="test-img">
                                <a href="' . $slink . '" ' . $target . '>
                                    <img src="' . IMAGE_PATH . 'testimonial/' . $tstRow->image . '" alt="' . $tstRow->name . '" class="img-responsive">
                                </a>
                            </div>
                            </div>
                            
                            <div class="col-md-9 col-sm-9">
                            <div class="media-body test">
                                <p><i>“</i>' . strip_tags($tstRow->content) . '</p>
                                <a href="' . $slink . '" ' . $target . '>
                                    <h4>' . $tstRow->name . '</h4>
                                </a>
                            </div>
                            </div>
                        </div>
                    </div>';
    }
    $restst .= '</div>';
}

$jVars['module:testimonialList'] = $restst;
?>