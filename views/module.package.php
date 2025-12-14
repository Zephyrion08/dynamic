<?php
$booking_code = Config::getField('hotel_code', true);

$roomlist = $roombread = '';
$modalpopup = '';
$room_package = '';

/*
 * package listing page
 */
if (defined('PACKAGE_PAGE') and isset($_REQUEST['slug'])) {

    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';

    $pkgRow = Package::find_by_slug($slug);

    if ($pkgRow->type == 1) {


        $pkgRowImg = $pkgRow->banner_image;




        // new code
        if (!empty($siteRegulars->other_upload)) {
            $defaultImg = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
        } else {
            $defaultImg = BASE_URL . 'template/web/images/background/page-title-bg.png';
            ;
        }

        // Start with default banner
        $imglink = $defaultImg;

        // If the article has images
        if (!empty($pkgRowImg) && $pkgRowImg != "a:0:{}") {

            $imageList = unserialize($pkgRowImg);
            $imgno = array_rand($imageList);

            $file_path = SITE_ROOT . 'images/package/banner/' . $imageList[$imgno];

            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'package/banner/' . $imageList[$imgno];
            }
        }

        $roombread .= '
        <section class="page-title" style="background-image: url(' . $imglink . ');">
            <div class="auto-container">
                <div class="title-outer text-center">
                    <h1 class="title">' . $pkgRow->title . '</h1>
                </div>
            </div>
        </section>
';

        $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '{$pkgRow->id}' ORDER BY sortorder DESC ";

        $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
        $limit = 200;
        $total = $db->num_rows($db->query($sql));
        $startpoint = ($page * $limit) - $limit;
        $sql .= " LIMIT " . $startpoint . "," . $limit;
        $query = $db->query($sql);
        $pkgRec = Subpackage::find_by_sql($sql);
        // pr($pkgRec);
        $image = '';

        if (!empty($pkgRec)) {

            foreach ($pkgRec as $key => $subpkgRow) {
                $imageList = '';
                $image = '';
                if ($subpkgRow->image != "a:0:{}") {
                    $imageList = unserialize($subpkgRow->image);
                    if (!empty($imageList)) {
                        $image .= '<img src="' . IMAGE_PATH . 'subpackage/' . $imageList[0] . '" alt="package_image" >';
                    }
                }
                // pr($subpkgRow);

                $roomlist .= '
                <div class="room-block col-lg-6 col-md-6">
                        <div class="inner-box wow fadeIn">
                            <div class="image-box">
                                <figure class="image-2 overlay-anim">' . $image . '
                                </figure>
                            </div>
                            <div class="content-box">
                                <h6 class="title"><a href="' . BASE_URL . $subpkgRow->slug . '">' . $subpkgRow->title . '</a></h6>
                                <span class="price">' . $subpkgRow->onep_price . $subpkgRow->currency . ' / NIGHT</span>
                            </div>';
                $roomlist .= '
                            <div class="box-caption">
                                <a href="' . BASE_URL . $subpkgRow->slug . '" class="book-btn">book now</a>';

                if (!empty($subpkgRow->feature)) {
                    // pr($subpkgRec->feature);
                    $ftRec = unserialize($subpkgRow->feature);
                    if (!empty($ftRec)) {
                        $roomlist .= '

                                 
                                   <ul class="bx-links">';


                        foreach ($ftRec as $k => $v) {
                            if (empty($v[1])) {
                                continue; // Skip if no feature IDs
                            }
                            if (!empty($v[1])) {
                                $sfetname = '';
                                $i = 0;
                                $roomlist .= '';
                                $feature_list = '';

                                $max_features = 4; // show only 3
                                $count = 0;

                                foreach ($v[1] as $kk => $vv) {
                                    if ($count >= $max_features) {
                                        break; // stop after 3 features
                                    }

                                    $sfetname = Features::find_by_id($vv);
                                    if (!empty($sfetname->image)) {
                                        $feature_list .= '
                        <li style="margin-right:0;"><img  width="20" height="20" src="' . BASE_URL . 'images/features/' . $sfetname->image . '" alt="wifi"></li>
                              ';
                                    } else {
                                        $feature_list .= '
                        <li><i class="' . $sfetname->icon . '" title="' . $sfetname->title . '"></i></li>';
                                    }

                                    $i++;
                                    $count++;

                                    if (($i % 123123123123123 == 0) || (end($v[1]) == $vv) || ($count == $max_features)) {
                                        $roomlist .= '
                            ' . $feature_list . '
                        ';
                                        $feature_list = '';
                                    }
                                }
                            }

                        }
                        $roomlist .= '</ul>
                                ';
                    }
                }


                $roomlist .= '

                            </div>
                        </div>
                    </div>



                ';
            }

            $room_package = '
                      <section class="rooms-section pb-100">
            <div class="auto-container">
                <div class="row">
                    ' . $roomlist . '
                </div>
            </div>
        </section>';
        }
    } elseif ($pkgRow->id == 8) {

        $pkgRowImg = $pkgRow->banner_image;


        // new code
        if (!empty($siteRegulars->other_upload)) {
            $defaultImg = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
        } else {
            $defaultImg = BASE_URL . 'template/web/images/background/page-title-bg.png';
            ;
        }

        // Start with default banner
        $imglink = $defaultImg;

        // If the article has images
        if (!empty($pkgRowImg) && $pkgRowImg != "a:0:{}") {

            $imageList = unserialize($pkgRowImg);
            $imgno = array_rand($imageList);

            $file_path = SITE_ROOT . 'images/package/banner/' . $imageList[$imgno];

            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'package/banner/' . $imageList[$imgno];
            }
        }

        $roombread .= '
        <div class="banner-header section-padding valign bg-img bg-darkbrown1">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center caption mt-90">
                    <h1> restaurant</h1>
                </div>
            </div>
        </div>
    </div>
';

        $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '{$pkgRow->id}' ORDER BY sortorder DESC ";

        $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
        $limit = 200;
        $total = $db->num_rows($db->query($sql));
        $startpoint = ($page * $limit) - $limit;
        $sql .= " LIMIT " . $startpoint . "," . $limit;
        $query = $db->query($sql);
        $pkgRec = Subpackage::find_by_sql($sql);
        // pr($pkgRec);
        $image = '';

        if (!empty($pkgRec)) {

            foreach ($pkgRec as $key => $subpkgRow) {
                $imageList = '';
                $image = '';
                if ($subpkgRow->image != "a:0:{}") {
                    $imageList = unserialize($subpkgRow->image);
                    if (!empty($imageList)) {
                        $image .= '<img src="' . IMAGE_PATH . 'subpackage/' . $imageList[0] . '" alt="package_image" >';
                    }
                }
                // pr($subpkgRow);

                $roomlist .= '
                <div class="col-lg-4 col-md-6">
                    <div class="pricing-card">
                        <div class="img"><a href="' . BASE_URL . '' . $subpkgRow->slug . '">' . $image . '</a></div>
                        <div class="desc">
                            <div class="name"><a href="' . BASE_URL . '' . $subpkgRow->slug . '">' . $subpkgRow->title . '</a></div>
';
                $itineraryInfos = Itinerary::get_itinerarylimit($subpkgRow->id);
                if (!empty($itineraryInfos)) {
                    $roomlist .= '<ul class="list-unstyled list">';
                    foreach ($itineraryInfos as $itineraryInfo) {
                        $roomlist .= '<li><i class="ti-check"></i>' . $itineraryInfo->title . '</li>';

                    }
                    $roomlist .= '</ul>';
                }


                $roomlist .= '
                              </div>
                    </div>
                </div>



                ';
            }

            $room_package = '
              <section class="pricing section-padding">
        <div class="container">
            <div class="row">
                    ' . $roomlist . '
                   </div>
        </div>
    </section>';
        }
    } else {
        $imglink = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
        $pkgRowImg = $pkgRow->banner_image;
        // new code
        if (!empty($siteRegulars->other_upload)) {
            $defaultImg = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
        } else {
            $defaultImg = BASE_URL . 'template/web/images/background/page-title-bg.png';
            ;
        }

        // Start with default banner
        $imglink = $defaultImg;

        // If the article has images
        if (!empty($pkgRowImg) && $pkgRowImg != "a:0:{}") {

            $imageList = unserialize($pkgRowImg);
            $imgno = array_rand($imageList);

            $file_path = SITE_ROOT . 'images/package/banner/' . $imageList[$imgno];

            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'package/banner/' . $imageList[$imgno];
            }
        }
        $roombread .= '
        <section class="page-title" style="background-image: url(' . $imglink . ');">
            <div class="auto-container">
                <div class="title-outer text-center">
                    <h1 class="title">' . $pkgRow->title . '</h1>
                </div>
            </div>
        </section>
';

        $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '{$pkgRow->id}' ORDER BY sortorder DESC ";

        $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
        $limit = 200;
        $total = $db->num_rows($db->query($sql));
        $startpoint = ($page * $limit) - $limit;
        $sql .= " LIMIT " . $startpoint . "," . $limit;
        $query = $db->query($sql);
        $pkgRec = Subpackage::find_by_sql($sql);
        $image = '';

        // pr($pkgRec);

        if (!empty($pkgRec)) {

            foreach ($pkgRec as $key => $subpkgRow) {
                $imageList = '';
                $image = '';
                if ($subpkgRow->image != "a:0:{}") {
                    $imageList = unserialize($subpkgRow->image);
                    if (!empty($imageList)) {
                        $image .= '<img src="' . IMAGE_PATH . 'subpackage/' . $imageList[0] . '" alt="package_image" >';
                    }
                }
                // pr($subpkgRow);

                $roomlist .= '
                <div class="room-block col-lg-6 col-md-6">
                        <div class="inner-box wow fadeIn">
                            <div class="image-box">
                                <figure class="image-2 overlay-anim">' . $image . '
                                </figure>
                            </div>
                            <div class="content-box">
                                <h6 class="title"><a href="' . BASE_URL . $subpkgRow->slug . '">' . $subpkgRow->title . '</a></h6>
                                <span class="price">' . $subpkgRow->onep_price . $subpkgRow->currency . ' / NIGHT</span>
                            </div>';
                $roomlist .= '
                            <div class="box-caption">
                                <a href="' . BASE_URL . $subpkgRow->slug . '" class="book-btn">book now</a>';

                if (!empty($subpkgRow->feature)) {
                    // pr($subpkgRec->feature);
                    $ftRec = unserialize($subpkgRow->feature);
                    if (!empty($ftRec)) {
                        $roomlist .= '

                                 
                                   <ul class="bx-links">';


                        foreach ($ftRec as $k => $v) {
                            if (empty($v[1])) {
                                continue; // Skip if no feature IDs
                            }
                            if (!empty($v[1])) {
                                $sfetname = '';
                                $i = 0;
                                $roomlist .= '';
                                $feature_list = '';

                                $max_features = 4; // show only 3
                                $count = 0;

                                foreach ($v[1] as $kk => $vv) {
                                    if ($count >= $max_features) {
                                        break; // stop after 3 features
                                    }

                                    $sfetname = Features::find_by_id($vv);
                                    if (!empty($sfetname->image)) {
                                        $feature_list .= '
                        <li style="margin-right:0;"><img  width="20" height="20" src="' . BASE_URL . 'images/features/' . $sfetname->image . '" alt="wifi"></li>
                              ';
                                    } else {
                                        $feature_list .= '
                        <li><i class="' . $sfetname->icon . '" title="' . $sfetname->title . '"></i></li>';
                                    }

                                    $i++;
                                    $count++;

                                    if (($i % 123123123123123 == 0) || (end($v[1]) == $vv) || ($count == $max_features)) {
                                        $roomlist .= '
                            ' . $feature_list . '
                        ';
                                        $feature_list = '';
                                    }
                                }
                            }

                        }
                        $roomlist .= '</ul>
                                ';
                    }
                }


                $roomlist .= '

                            </div>
                        </div>
                    </div>



                ';
            }

            $room_package = '
                      <section class="rooms-section pb-100">
            <div class="auto-container">
                <div class="row">
                    ' . $roomlist . '
                </div>
            </div>
        </section>';
        }
    }

}


/*
 * package homepage listing
 */
$homeroomdetail = '';
if (defined('HOME_PAGE')) {


    $sql = "SELECT * FROM tbl_package_sub WHERE status='1' AND type = '5' ORDER BY sortorder DESC ";

    $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
    $limit = 2;
    $total = $db->num_rows($db->query($sql));
    $startpoint = ($page * $limit) - $limit;
    $sql .= " LIMIT " . $startpoint . "," . $limit;
    $query = $db->query($sql);
    $pkgRec = Subpackage::find_by_sql($sql);

    // Initialize the new room block content
    $pricing_blocks_html = '';

    if (!empty($pkgRec)) {
        $pkgdetail = Package::find_by_id(5);

        foreach ($pkgRec as $key => $subpkgRow) {
            $gallRec = SubPackageImage::getImagelist_by($subpkgRow->id);

            $imageList = '';
            $imagepath = '';
            $imageList = unserialize($subpkgRow->image);

            if (!empty($imageList[0])) {
                $file_path = SITE_ROOT . 'images/subpackage/' . $imageList[0];
                if (file_exists($file_path) and !empty($imageList[0])):
                    $imagepath = IMAGE_PATH . 'subpackage/' . $imageList[0];
                endif;
            }

            // --- Start Feature List Generation (Modified for the new design) ---
            $feature_list_html = '';
            if (!empty($subpkgRow->feature)) {
                $ftRec = unserialize($subpkgRow->feature);
                if (!empty($ftRec)) {
                    $features_list_one = ''; // First list (max 2 features)
                    $features_list_two = ''; // Second list (max 2 features)
                    $count = 0;
                    $max_features_per_list = 2; // For list-style-two columns

                    foreach ($ftRec as $k => $v) {
                        if (empty($v[1])) {
                            continue;
                        }

                        foreach ($v[1] as $kk => $vv) {
                            if ($count >= 4) { // Limit total features to 4 (2 per list)
                                break 2; // Break out of both inner loops
                            }

                            $sfetname = Features::find_by_id($vv);
                            $feature_item = '<li><i class="icon fa fa-circle-check"></i> ' . $sfetname->title . '</li>';

                            // Distribute features into the two lists
                            if ($count < $max_features_per_list) {
                                $features_list_one .= $feature_item;
                            } else {
                                $features_list_two .= $feature_item;
                            }
                            $count++;
                        }
                    }

                    // Assemble the full list box HTML
                    if (!empty($features_list_one) || !empty($features_list_two)) {
                        $feature_list_html = '
                            <div class="list-box">
                                <ul class="list-style-two">
                                    ' . $features_list_one . '
                                </ul>
                                <ul class="list-style-two">
                                    ' . $features_list_two . '
                                </ul>
                            </div>';
                    }
                }
            }
            // --- End Feature List Generation ---


            // Determine content alignment and image reveal direction based on the key (odd/even)
            // The design shows the first block (key 0) with content-align-right and reveal-right.
            // The second block (key 1) with default alignment and reveal-left.

            $is_odd = $key % 2 != 0; // The second block (key 1) is odd

            $content_align_class = $is_odd ? '' : ' content-align-right'; // Only the first block has this
            $home4_style_class = $is_odd ? '' : ' home4-style'; // Only the first block has this
            $mb_0_class = ($key == (count($pkgRec) - 1)) ? ' mb-0' : '';

            $image_reveal_class = $is_odd ? ' reveal-left' : ' reveal-right';
            $image_column_order_class = $is_odd ? ' ' : ''; // Swap order for odd-indexed rooms

            // Build the room block HTML
            $pricing_blocks_html .= '
                <div class="pricing-block-three' . $mb_0_class . $home4_style_class . '">
                    <div class="inner-box' . $content_align_class . '">
                        <div class="row">
                            <div class="content-column col-lg-4 col-md-6' . $image_column_order_class . '">
                                <div class="inner-column wow fadeInLeft animated">
                                    <span class="pricing-amount">' . $subpkgRow->currency . $subpkgRow->onep_price . '<span>/ Night</span></span><a href="' . BASE_URL . $subpkgRow->slug . '"> 
                                    <h3 class="pricing-title">' . $subpkgRow->title . '</h3></a>
                                    ' . $feature_list_html . '
                                    <div class="text">' . $subpkgRow->title . '</div>
                                    <div class="btn-box">
                                        <a href="#" class="btn-style-four">Book Now</a>
                                    </div>
                                </div>
                            </div>
                            <div class="image-column col-lg-8 col-md-6">
                                <div class="image-box">
                                <a href=' . BASE_URL . $subpkgRow->slug . '>
                                    <figure class="image wow' . $image_reveal_class . '"><img src="' . $imagepath . '" alt="' . $subpkgRow->title . '"></figure></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>';
        }

        // Assign the final wrapped HTML to homeroomdetail
        $homeroomdetail .= '
            <section class="pricing-section-three">
                <div class="auto-container">
                    ' . $pricing_blocks_html . '
                </div>
            </section>';

        // NOTE: I'm keeping the original $room_package logic untouched, though it was likely being overwritten or used for a different display.
        $room_package = '
            <section class="home-room-package">
            <div class="swiper mySwiper home-room-list">
                <div class="swiper-wrapper">
                    </div>
                <div class="button_wrapper position-absolute">
                <div class="swiper-button-next"><i class="fa-light fw-medium fa-arrow-right fa-2x text-black"></i></div>
                <div class="swiper-pagination position-absolute z-n1"></div>
                <div class="swiper-button-prev"><i class="fa-light fw-medium fa-arrow-left fa-2x text-black"></i></div>
                </div>
            </div>
            </section>';
    }
}


$jVars['module:list-modalpop-up'] = $modalpopup;
$jVars['module:list-room-detail'] = $homeroomdetail;

$jVars['module:list-package-room'] = $room_package;
$jVars['module:list-package-room-bred'] = $roombread;


/*
 * Sub package detail
 */
$resubpkgDetail = '';
$resubpkgDetail1 = '';
$resubpkgDetail2 = '';
$subimg = '';
$imageList = '';
$subpkg_carousel = '';
$otherroom = '';

if ((defined('SUBPACKAGE_PAGE') && isset($_REQUEST['slug']))) {
    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    $subpkgRec = Subpackage::find_by_slug($slug);
    $gallRec = SubPackageImage::getImagelist_by($subpkgRec->id);

    $booking_code = Config::getField('hotel_code', true);
    if (!empty($subpkgRec)) {
        $pkhdata = Package::find_by_id($subpkgRec->type);

        // pr($pkhdata);
        if ($pkhdata->type == 1) {
            $relPacs = Subpackage::get_relatedpkg(1, $subpkgRec->id, 12);


            $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($subpkgRec->content));

            // new code
            $imglink = '';
            $img = $subpkgRec->image2;
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
                $file_path = SITE_ROOT . 'images/subpackage/image/' . $img;
                if (file_exists($file_path)) {
                    $imglink = IMAGE_PATH . 'subpackage/image/' . $img;
                }
            }




            $pkgRec = Package::find_by_id($subpkgRec->type);
            $subpkg_carousel = '';
            if (!empty($gallRec)) {

                foreach ($gallRec as $row) {
                    $file_path = SITE_ROOT . 'images/package/galleryimages/' . $row->image;
                    if (file_exists($file_path) and !empty($row->image)):
                        $subpkg_carousel .= '
                        <div class="feature-slide">
                                    <div class="outer-box">
                        <div class="image-box overlay-anim">
                                            <img src="' . IMAGE_PATH . 'package/galleryimages/' . $row->image . '">
                                        </div>
                                        </div>
                                </div>  

                          ';
                    endif;
                }

            }



            $roombread .= '
        <section class="page-title" style="background-image: url(' . $imglink . '">
            <div class="auto-container">
                <div class="title-outer text-center">
                    <h1 class="title">' . $subpkgRec->title . '</h1>
                </div>
            </div>
        </section>
';



            $resubpkgDetail1 .= '
                            <div class="wrapper">
                                <h3>Description of Room</h3>
                                <p class="text"> ' . $content[0] . '</p>
                                <div class="row justify-content-center">
                                    <div class="col-xl-12">
                                        <div class="room-details__content-right mb-40 mt-20">
                                            <div class="room-details__details-box">
                                                <div class="row">
                                                    <div class="col-6 col-md-3">
                                                        <p class="text mb-0">Room Size</p>
                                                        <h6>' . $subpkgRec->room_size . '</h6>
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <p class="text mb-0">Rooms Bed</p>
                                                        <h6>' . $subpkgRec->bed . '</h6>
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <p class="text mb-0">Occupancy</p>
                                                        <h6>' . $subpkgRec->occupancy . '</h6>
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <p class="text mb-0">View</p>
                                                        <h6>' . $subpkgRec->view . '</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <p class="text">' . $subpkgRec->detail . '</p>
                            </div>



                ';


            if (!empty($subpkgRec->feature)) {
                $ftRec = unserialize($subpkgRec->feature);

                if (!empty($ftRec)) {

                    // Start the main container div (similar to your desired output)
                    $resubpkgDetail2 .= '
            <div class="mt-40">';

                    foreach ($ftRec as $k => $v) {
                        // Check if feature IDs exist for this group
                        if (empty($v[1])) {
                            continue;
                        }

                        // 1. Get Group Title (e.g., Room Amenities, Safety Features)
                        $feattitle = !empty($v[0][0]) ? $v[0][0] : 'Room Facilities';

                        // 2. Add Group Title
                        $resubpkgDetail2 .= '
            <h4>' . $feattitle . '</h4>
            <div class="row room-facility-list mb-40">'; // Start the Bootstrap row/grid

                        // 3. Loop through individual features in the group
                        foreach ($v[1] as $kk => $vv) {

                            // Fetch feature data from the database
                            $sfetname = Features::find_by_id($vv);

                            if (!empty($sfetname)) {

                                $icon_html = '';

                                // Determine the icon/image HTML
                                if (!empty($sfetname->image)) {
                                    // Use image if available
                                    $icon_html = '<img src="' . BASE_URL . 'images/features/' . $sfetname->image . '" alt="' . $sfetname->title . '">';
                                } elseif (!empty($sfetname->icon)) {
                                    // Fallback to icon class if image is not available
                                    $icon_html = '<i class="' . $sfetname->icon . '"></i>';
                                }

                                // Only output if we have a valid feature (name and icon/image)
                                if (!empty($icon_html)) {

                                    // Output the feature as a grid column (col-sm-6 col-xl-4)
                                    $resubpkgDetail2 .= '
                            <div class="col-sm-6 col-xl-4">
                                <div class="list-one d-flex align-items-center me-sm-4 mb-3">
                                    <div class="icon text-theme-color1 mr-10 flex-shrink-0">' . $icon_html . '</div>
                                    <h6 class="title m-0">' . $sfetname->title . '</h6>
                                </div>
                            </div>';
                                }
                            }
                        }

                        // Close the row/grid for the current group
                        $resubpkgDetail2 .= '
            </div>';

                    }

                    // Close the main container div
                    $resubpkgDetail2 .= '
        </div>';
                }
            }


            $otherroom = '';
            $rooms = Subpackage::get_relatedsub_by($subpkgRec->type, $subpkgRec->id);
            // pr($rooms);


            if (!empty($rooms)) {


                foreach ($rooms as $room) {
                    if (!empty($room->image)) {
                        $img123 = unserialize($room->image);

                        if (file_exists($file_path) && !empty($img123[0])) {
                            $imglink = IMAGE_PATH . 'subpackage/' . $img123[0];
                            $file_path = SITE_ROOT . 'images/subpackage/' . $img123[0];
                        } else {
                            $imglink = IMAGE_PATH . 'static/static.jpg';
                        }
                    } else {
                        $imglink = IMAGE_PATH . 'static/static.jpg';
                    }


                    $otherroom .= '
                                    <li>
                                        <div class="sidebar__post-image"> <a
                                                    href="' . BASE_URL . $room->slug . '"><img src="' . $imglink . '"
                                                alt=""></a> </div>
                                        <div class="sidebar__post-content">
                                            <h3> <span class="sidebar__post-content-meta"><a
                                                    href="' . BASE_URL . $room->slug . '"><i
                                                        class="fas fa-door-open"></i>' . $room->title . '</a></span> ' . $room->onep_price . $room->currency . ' /Night
                                            </h3>
                                        </div>
                                    </li>
                                    ';


                }

                // pr($otherroom);
                $resubpkgDetail .= '
                        <section class="blog-details pt-120 pb-120">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 col-lg-7 product-details rd-page">
                        <div class="feature-section-five slider-style mb-30">
                            <div class="feature-slider feature-slider-style1">
                                <jcms:module:sub-package-cr/>
                            </div>
                        </div>

                        <div class="room-details__left">
                            ' . $resubpkgDetail1 . '
                            ' . $resubpkgDetail2 . '
                            
                        </div>
                    </div>
                    
                    <div class="col-xl-4 col-lg-5">
                        <div class="sidebar">
                            <div class="sidebar__post mb-30">
                                <form id="contact_form2" name="contact_form" class="" action="#" method="post">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="mb-3">
                                                <label class="form-label">Check In</label>
                                                <input id="check_in" name="check_in" class="form-control bg-white" type="text" required>


                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="mb-3">
                                                <label class="form-label">Check Out</label>
                                                <input id="check_out" name="check_out" class="form-control bg-white" type="text" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <input name="form_botcheck" class="form-control" type="hidden" value="">
                                        <button type="submit" class="theme-btn btn-style-one w-100"
                                            data-loading-text="Please wait..."><span class="btn-title">Book
                                                Now</span></button>
                                    </div>
                                </form>

                                
                            </div>
                            <div class="sidebar__single sidebar__post">
                                <h3 class="sidebar__title">Compare Room</h3>
                                <ul class="sidebar__post-list list-unstyled">
                                    ' . $otherroom . '
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


    ';
            }

        } /******** For service inner page ***************/ elseif ($subpkgRec->type == 6) {
            $relPacs = Subpackage::get_relatedpkg(1, $subpkgRec->id, 12);
            // new code
            $imglink = '';
            $img = $subpkgRec->image2;
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
                $file_path = SITE_ROOT . 'images/subpackage/image/' . $img;
                if (file_exists($file_path)) {
                    $imglink = IMAGE_PATH . 'subpackage/image/' . $img;
                }
            }


            $gallRec = SubPackageImage::getImagelist_by($subpkgRec->id);
            $subpkg_carousel = '';
            if (!empty($gallRec)) {
                foreach ($gallRec as $row) {
                    $file_path = SITE_ROOT . 'images/package/galleryimages/' . $row->image;
                    if (file_exists($file_path) and !empty($row->image)):
                        $subpkg_carousel .= '
                         <div class="feature-slide">
                                    <div class="outer-box">
                        <div class="image-box overlay-anim">
                                            <img src="' . IMAGE_PATH . 'package/galleryimages/' . $row->image . '">
                                        </div>
                                        </div>
                                </div> 
                          ';
                    endif;
                }
            }

            $roombread .= '
        <section class="page-title" style="background-image: url(' . $imglink . '">
            <div class="auto-container">
                <div class="title-outer text-center">
                    <h1 class="title">' . $subpkgRec->title . '</h1>
                </div>
            </div>
        </section>
';

            $resubpkgDetail1 .= '
                            <div class="wrapper">
                                <h3>Our Hall</h3>
                                <p class="text">' . $subpkgRec->content . '</p>

                                <h4>Table Format</h4>
                                <div class="row justify-content-center">
                                    <div class="col-xl-12">
                                        <div class="room-details__content-right mb-40 mt-20">
                                            <div class="room-details__details-box">
                                                <div class="row">
                                                    <div class="col-6 col-md-3">
                                                        <p class="text mb-0">Room Size</p>
                                                        <h6>' . $subpkgRec->size . '</h6>
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <p class="text mb-0">Rooms Bed</p>
                                                        <h6>' . $subpkgRec->theatre_style . '</h6>
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <p class="text mb-0">Occupancy</p>
                                                        <h6>' . $subpkgRec->class_room_style . '</h6>
                                                    </div>
                                                    <div class="col-6 col-md-3">
                                                        <p class="text mb-0">View</p>
                                                        <h6>' . $subpkgRec->round_table . '</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <p class="text">' . $subpkgRec->detail . '</p>
                            </div>

            ';

            if (!empty($subpkgRec->feature)) {
                $ftRec = unserialize($subpkgRec->feature);

                if (!empty($ftRec)) {

                    // Start the main container div (similar to your desired output)
                    $resubpkgDetail2 .= '
            <div class="mt-40">';

                    foreach ($ftRec as $k => $v) {
                        // Check if feature IDs exist for this group
                        if (empty($v[1])) {
                            continue;
                        }

                        // 1. Get Group Title (e.g., Room Amenities, Safety Features)
                        $feattitle = !empty($v[0][0]) ? $v[0][0] : 'Room Facilities';

                        // 2. Add Group Title
                        $resubpkgDetail2 .= '
            <h4>' . $feattitle . '</h4>
            <div class="row room-facility-list mb-40">'; // Start the Bootstrap row/grid

                        // 3. Loop through individual features in the group
                        foreach ($v[1] as $kk => $vv) {

                            // Fetch feature data from the database
                            $sfetname = Features::find_by_id($vv);

                            if (!empty($sfetname)) {

                                $icon_html = '';

                                // Determine the icon/image HTML
                                if (!empty($sfetname->image)) {
                                    // Use image if available
                                    $icon_html = '<img src="' . BASE_URL . 'images/features/' . $sfetname->image . '" alt="' . $sfetname->title . '">';
                                } elseif (!empty($sfetname->icon)) {
                                    // Fallback to icon class if image is not available
                                    $icon_html = '<i class="' . $sfetname->icon . '"></i>';
                                }

                                // Only output if we have a valid feature (name and icon/image)
                                if (!empty($icon_html)) {

                                    // Output the feature as a grid column (col-sm-6 col-xl-4)
                                    $resubpkgDetail2 .= '
                            <div class="col-sm-6 col-xl-4">
                                <div class="list-one d-flex align-items-center me-sm-4 mb-3">
                                    <div class="icon text-theme-color1 mr-10 flex-shrink-0">' . $icon_html . '</div>
                                    <h6 class="title m-0">' . $sfetname->title . '</h6>
                                </div>
                            </div>';
                                }
                            }
                        }

                        // Close the row/grid for the current group
                        $resubpkgDetail2 .= '
            </div>';

                    }

                    // Close the main container div
                    $resubpkgDetail2 .= '
        </div>';
                }
            }





            $resubpkgDetail .= '
            <section class="blog-details pt-120 pb-120">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 product-details rd-page">
                            <div class="feature-section-five slider-style mb-30">
                                <div class="feature-slider feature-slider-style1">
                                    ' . $subpkg_carousel . '
                                </div>
                            </div>
                            <div class="room-details__left">
                            ' . $resubpkgDetail1 . '
                            ' . $resubpkgDetail2 . '
                            </div>
                        </div>
                    </div>
                </div>
            </section>

              ';




        } /******** For other inner page ***************/ elseif ($subpkgRec->type == 8) {
            $relPacs = Subpackage::get_relatedpkg(1, $subpkgRec->id, 12);
            // new code
            $imglink = '';
            $img = $subpkgRec->image2;
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
                $file_path = SITE_ROOT . 'images/subpackage/image/' . $img;
                if (file_exists($file_path)) {
                    $imglink = IMAGE_PATH . 'subpackage/image/' . $img;
                }
            }

            $gallRec = SubPackageImage::getImagelist_by($subpkgRec->id);
            $subpkg_carousel = '';
            if (!empty($gallRec)) {
                foreach ($gallRec as $row) {
                    $file_path = SITE_ROOT . 'images/package/galleryimages/' . $row->image;
                    if (file_exists($file_path) and !empty($row->image)):
                        $subpkg_carousel .= '
                        <div class="feature-slide">
                                    <div class="outer-box">
                        <div class="image-box overlay-anim">
                                            <img src="' . IMAGE_PATH . 'package/galleryimages/' . $row->image . '">
                                        </div>
                                        </div>
                                </div> 

                          ';
                    endif;
                }


            }


            $roombread .= '
        <section class="page-title" style="background-image: url(' . $imglink . '">
            <div class="auto-container">
                <div class="title-outer text-center">
                    <h1 class="title">' . $subpkgRec->title . '</h1>
                </div>
            </div>
        </section>


            ';
            $resubpkgDetail .= '
             <section class="rooms-page section-padding" data-scroll-index="1">
        <div class="container">
            <!-- project content -->
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="section-title">Hiking</div>
                    <p class="mb-30">
                    ' . $subpkgRec->content . '</p>
                </div>

                <div class="col-md-12 text-center">
                    <div class="row justify-content-md-center">
                        <div class="col-md-2 pricing-card  mt-30" style="background: transparent;">
                            <div class="amount">' . $subpkgRec->currency . $subpkgRec->onep_price . '<span>/ person</span></div>
                        </div>
                        <div class="col-md-2">
                            <a class="btn-form1-submit activity-btn mt-15" href="https://wa.me/' . $siteRegulars->whatsapp_a . '" data-bs-toggle="modal" data-bs-target="#exampleModalactivities">Enquiry now</a>
                        </div>
                    </div>
                </div>
            </div>

       ';
            $resubpkgDetail .= '
<div class="row">
    <div class="col-md-12 text-center"><h4 class="mt-30">Our Itinerary</h4></div>
';

            $itineraryInfos = Itinerary::get_itinerary($subpkgRec->id);
            if (!empty($itineraryInfos)) {
                $count = 0;
                foreach ($itineraryInfos as $itineraryInfo) {
                    // Open first column every 3 items (start of set)
                    if ($count % 3 == 0) {
                        // If it's not the very first item, close previous column
                        if ($count > 0 && $count % 6 == 0) {
                            // Close previous row and start a new one after 6 items
                            $resubpkgDetail .= '
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <ul class="accordion-box clearfix">';
                        } elseif ($count % 6 == 3) {
                            // Start second column after 3 items
                            $resubpkgDetail .= '
                </ul>
            </div>
            <div class="col-md-6">
                <ul class="accordion-box clearfix">';
                        } elseif ($count == 0) {
                            // Start first column on first iteration
                            $resubpkgDetail .= '
                <div class="col-md-6">
                    <ul class="accordion-box clearfix">';
                        }
                    }

                    // Add the itinerary item
                    $resubpkgDetail .= '
        <li class="accordion block">
            <div class="acc-btn">' . $itineraryInfo->title . '</div>
            <div class="acc-content">
                <div class="content">
                    <div class="text">' . $itineraryInfo->content . '</div>
                </div>
            </div>
        </li>';

                    $count++;
                }

                // Close open tags properly
                $resubpkgDetail .= '
                </ul>
            </div>
        </div>
        ';
            } else {
                $resubpkgDetail .= '
        <div class="col-md-12"><p class="text-center">No itinerary available.</p></div>
    </div>';
            }


            $resubpkgDetail .= '    </div>
    </section>

     <div class="modal fade" id="exampleModalactivities" tabindex="-1" aria-labelledby="exampleModalactivities" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content" style="background: #e4e7e9;">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Enquiry Form</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="activityform" class="contact__form contactform_4" >
                        <!-- form elements -->
                        <div class="row">
                            <input type="hidden" name="slug" value="' . $subpkgRec->slug . '"/>
                            <div class="col-md-12 form-group">
                                <input name="name" type="text" placeholder="Full Name *" required>
                            </div>
                            <div class="col-md-12 form-group">
                                <input name="email" type="email" placeholder="Email Address *" required>
                            </div>
                            <div class="col-md-12 form-group">
                                <input name="phone" type="text" placeholder="Phone Number *" required>
                            </div>
                            <div class="col-md-12 form-group">
                                <textarea name="message" id="message" cols="30" rows="4" placeholder="Message *" required></textarea>
                            </div>
                            <div class="col-md-12 form-group">
                                <div class="g-recaptcha" data-sitekey="6LeTWg4sAAAAAALJoGmx_RfzVCgwJ9_pS1TFfYdI" style="margin-top:15px;"></div>
                            </div>
                            <div id="result_msg"></div>
                            <div class="col-md-12">
                                <button type="submit" id="submit" class="butn-dark2" style="margin-top:15px;"><span>Send Message</span></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    ';


        } /******** For other other inner page ***************/ else {
            $relPacs = Subpackage::get_relatedpkg(1, $subpkgRec->id, 12);

            // new code
            $imglink = '';
            $img = $subpkgRec->image2;
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
                $file_path = SITE_ROOT . 'images/subpackage/image/' . $img;
                if (file_exists($file_path)) {
                    $imglink = IMAGE_PATH . 'subpackage/image/' . $img;
                }
            }

            $gallRec = SubPackageImage::getImagelist_by($subpkgRec->id);
            $subpkg_carousel = '';
            if (!empty($gallRec)) {
                foreach ($gallRec as $row) {
                    $file_path = SITE_ROOT . 'images/package/galleryimages/' . $row->image;
                    if (file_exists($file_path) and !empty($row->image)):
                        $subpkg_carousel .= '
                            <div class="feature-slide">
                                    <div class="outer-box">
                        <div class="image-box overlay-anim">
                                            <img src="' . IMAGE_PATH . 'package/galleryimages/' . $row->image . '">
                                        </div>
                                        </div>
                                </div> 
                         ';
                    endif;
                }
            }

            $roombread .= '
        <section class="page-title" style="background-image: url(' . $imglink . '">
            <div class="auto-container">
                <div class="title-outer text-center">
                    <h1 class="title">' . $subpkgRec->title . '</h1>
                </div>
            </div>
        </section>
';
            $resubpkgDetail1 .= '
                            <div class="wrapper">
                                <h3>Our Hall</h3>
                                <p class="text">' . $subpkgRec->content . '</p>
                                <p class="text">' . $subpkgRec->detail . '</p>
                            </div>

            ';




            $resubpkgDetail .= '
           <section class="blog-details pt-120 pb-120">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 product-details rd-page">
                            <div class="feature-section-five slider-style mb-30">
                                <div class="feature-slider feature-slider-style1">
                                    ' . $subpkg_carousel . '
                                </div>
                            </div>
                            <div class="room-details__left">
                            ' . $resubpkgDetail1 . '
                            ' . $resubpkgDetail2 . '
                            </div>
                        </div>
                    </div>
                </div>
            </section>

                       ';

        }
    }
}

$jVars['module:sub-package-detail'] = $resubpkgDetail;
$jVars['module:sub-package-detail1'] = $resubpkgDetail1;
$jVars['module:sub-package-detail2'] = $resubpkgDetail2;
$jVars['module:sub-package-otherroom'] = $otherroom;
$jVars['module:sub-package-bread'] = $roombread;
$jVars['module:sub-package-cr'] = $subpkg_carousel;

