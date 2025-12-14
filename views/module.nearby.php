<?php
$nearbydetail = $nearbydetail_modals = $imageList = $nearbybred = $nearbymain = '';
$news_blocks_html = '';

if (defined('HOME_PAGE')) {
    $recRows = Nearby::find_all_active();

    // --- START: LIMIT TO 3 RECORDS ---
    if (!empty($recRows)) {
        // Only keep the first 3 records in the array
        // $recRows = array_slice($recRows, 0, 3);
    }
    // --- END: LIMIT TO 3 RECORDS ---

    if (!empty($recRows)) {

        foreach ($recRows as $k => $recRow) {

            // --- Determine active class ---
            if ($k == 0) {
                $active = 'active ';
            } else {
                $active = '';
            }

            // --- Image Path Logic ---
            $wow_delay = $k * 300; // Calculate delay: 0ms, 300ms, 600ms, etc.

            if ($recRow->image != "a:0:{}") {
                $imageList = unserialize($recRow->image);
                if (!empty($imageList[0])) { // Use the first image in the array
                    $file_path = SITE_ROOT . 'images/nearby/' . $imageList[0];
                    if (file_exists($file_path)) {
                        $imglink = IMAGE_PATH . 'nearby/' . $imageList[0];
                    }
                }
            }

            // new code
            $imglink = '';
            $img = $recRow->image;
            if (!empty($siteRegulars->other_upload)) {
                $defaultImg = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
            } else {
                $defaultImg = BASE_URL . 'template/web/images/background/page-title-bg.png';
                ;
            }
            // Start with default banner
            $imglink = $defaultImg;
            // If the article has images
            if (!empty($img) && $img != "a:0:{}") {
                $imageList = unserialize($img);

                $file_path = SITE_ROOT . 'images/nearby/' . $imageList[0];
                if (file_exists($file_path)) {
                    $imglink = IMAGE_PATH . 'nearby/' . $imageList[0];
                }
            }

            // --- Dynamic News Block HTML ---
            $news_blocks_html .= '
                <div class="news-block-four col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="' . $wow_delay . 'ms">
                    <div class="inner-box">
                        <div class="image-box">
                            <figure class="image">
                                <a href="' . $recRow->google_embeded . '"target = " _blank">
                                    <img src="' . $imglink . '" alt="' . $recRow->title . '">
                                    <img src="' . $imglink . '" alt="' . $recRow->title . '">
                                </a>
                            </figure>
                        </div>
                        <div class="content-box">
                            <ul class="post-meta">
                                <li class="categories"><a href="#">Distance</a></li>
                                <li class="date">' . $recRow->distance . '</li>
                            </ul>
                            <h4 class="title"><a href="' . $recRow->google_embeded . '" target = " _blank">' . $recRow->title . '</a></h4>
                        </div>
                    </div>
                </div>';

            // --- Your original $nearbydetail and $nearbydetail_modals logic ---
            $nearbydetail .= '
                <div id="tab-' . $k . '" class="' . $active . ' item">
                    <h6>' . $recRow->title . '</h6>
                </div>';

            $nearbydetail_modals .= '
                <div id="tab-' . $k . '-content" class="cont ' . $active . '">
                    <div class="row">
                        <div class="col-md-6">
                            <h4 class="mb-2">' . $recRow->title . '</h4>
                            <h6><i>' . $recRow->sub_title . '</i></h6>
                            <p>' . strip_tags($recRow->content) . '<br/>
                            <span class="mt-3 distnc">Distance: ' . $recRow->distance . ' <a target="_blank" rel="noreferrer" class="getDirection" data-src="#"><i class="fa fa-long-arrow-right"></i></a></span></p>
                        </div>
                        <div class="col-md-6">
                            <div class="facility__image">
                                <iframe src="' . $recRow->google_embeded . '" width="800" height="600" style="border:1;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                        </div>
                    </div>
                </div>';
            // --- End original $nearbydetail and $nearbydetail_modals logic ---

        }
    }

    // --- Assemble the final HTML for the attractions section ---
    $nearbymain = '
        <section class="news-section">
            <div class="auto-container">
                <div class="sec-title text-center wow fadeInUp">
                    <span class="sub-title">Attractions</span>
                    <h2>Nearby Landmarks</h2>
                </div>
                <div class="row">
                    ' . $news_blocks_html . '
                </div>
            </div>
        </section>';
}

// Assign the final output to your target variable
$jVars['module:inner-nearby-detail'] = $nearbymain;

?>