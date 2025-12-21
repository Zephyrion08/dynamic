<?php
$resinndetail = $imageList = $innerbred = $t = '';
$homearticle = Article::find_by_id(22);
if (!empty($homearticle)) {
    if ($homearticle->image != "a:0:{}") {
        $imageList = unserialize($homearticle->image);
        $imgno = array_rand($imageList);
        $file_path = SITE_ROOT . 'images/articles/' . $imageList[$imgno];
        if (file_exists($file_path)) {
            $imglink = IMAGE_PATH . 'articles/' . $imageList[$imgno];
        } else {
            $imglink = BASE_URL . 'template/web/img/mosaic_2.jpg';
        }
    } else {
        $imglink = BASE_URL . 'template/cms/img/mosaic_2.jpg';
    }
    $t .= ' <div class="col-xs-12">
                     <a href="' . BASE_URL . 'page/' . $homearticle->slug . '">
                    <div class="mosaic_container">
                        <img src="' . $imglink . '" alt="' . $homearticle->title . '" class="img-responsive add_bottom_30"><span class="caption_2"> ' . $homearticle->title . '</span>
                    </div>
                    </a>
                </div>';


}

$jVars['module:aboutarticle'] = $t;

/**
 *      Home page
 */
$resinnh = '';

if (defined('HOME_PAGE')) {
    $recInn = Article::homepageArticle();
    // pr($recInn);
    if (!empty($recInn)) {
        foreach ($recInn as $innRow) {
            $image = unserialize($innRow->image);
            $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($innRow->content));
            $readmore = '';
            if (!empty($innRow->linksrc)) {
                $linkTarget = ($innRow->linktype == 1) ? ' target="_blank" rel="noreferrer" ' : '';
                $linksrc = ($innRow->linktype == 1) ? $innRow->linksrc : BASE_URL . $innRow->linksrc;
                $readmore = '<a href="' . $linksrc . '" title="">see more</a>';
            } else {
                $readmore = (count($content) > 1) ? '<a href="' . BASE_URL . 'page/' . $innRow->slug . '" title="">Read more...</a>' : '';
            }
            $resinnh .= '
            ' . $content[0] . '
            ';
        }
    }

}

// pr($recInn);
$jVars['module:home-article'] = $resinnh;

/**
 *      Inner page detail
 */

$aboutdetail = $imageList = $aboutbred = '';

if (defined('INNER_PAGE') and isset($_REQUEST['slug'])) {
    $slug = addslashes($_REQUEST['slug']);
    $recRow = Article::find_by_slug($slug);
    // pr($recRow);

    if (!empty($recRow)) {
        // pr(SITE_ROOT . 'preference/other/' . $siteRegulars->other_upload);


        if (!empty($siteRegulars->other_upload)) {
            $defaultImg = IMAGE_PATH . 'preference/other/' . $siteRegulars->other_upload;
        } else {
            $defaultImg = BASE_URL . 'template/web/images/background/page-title-bg.png';
            ;
        }

        // Start with default banner
        $imglink = $defaultImg;

        // If the article has images
        if (!empty($recRow->image) && $recRow->image != "a:0:{}") {

            $imageList = unserialize($recRow->image);
            $imgno = array_rand($imageList);

            $file_path = SITE_ROOT . 'images/articles/' . $imageList[$imgno];

            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'articles/' . $imageList[$imgno];
            }
        }




        $innerbred .= '

        <section class="page-title" style="background-image: url(' . $imglink . ');">
      <div class="auto-container">
        <div class="title-outer text-center">
          <h1 class="title">' . $recRow->title . '</h1>
        </div>
      </div>
    </section>
       
        ';

        $rescontent = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($recRow->content));
        $content = !empty($rescontent[1]) ? $rescontent[1] : $rescontent[0];

        $aboutdetail .= '

                    ' . $content . ' 
                    ';
    }
    else{
        
    }
}

$jVars['module:inner-about-detail'] = $aboutdetail;
$jVars['module:inner-about-bread'] = $innerbred;


$restyp = '';

$typRow = Article::get_by_type();
if (!empty($typRow)) {
    $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($typRow->content));
    $readmore = '';
    if (!empty($typRow->linksrc)) {
        $linkTarget = ($typRow->linktype == 1) ? ' target="_blank" rel="noreferrer"' : '';
        $linksrc = ($typRow->linktype == 1) ? $typRow->linksrc : BASE_URL . $typRow->linksrc;
        $readmore = '<a class="text-link link-direct" href="' . $linksrc . '">see more</a>';
    } else {
        $readmore = (count($content) > 1) ? '<a href="' . BASE_URL . $typRow->slug . '">Read more...</a>' : '';
    }
    $restyp .= '<h3 class="h3 header-sidebar">' . $typRow->title . '</h3>
	<div class="home-content">
		' . $content[0] . ' ' . $readmore . '
	</div>';

}

$jVars['module:article_by_type'] = $restyp;



/*
    Why Choose Us
*/
$resinnh1 = '';

if (defined('HOME_PAGE')) {

    $resinnh1 .= '';

    // pr($resinnh1);
    $recInn1 = Article::find_by_id(2);
    if (!empty($recInn1)) {
        $resinnh1 .= $recInn1->content;


    }

}

$jVars['module:home_article'] = $resinnh1;


/*
    HomePage Facilities
*/
$resinnh1 = '';

if (defined('HOME_PAGE')) {

    $resinnh1 .= '';


    $recInn1 = Article::find_by_id(3);

    if (!empty($recInn1)) {

        $resinnh1 .= $recInn1->content;


    }

}

$jVars['module:home_facilities'] = $resinnh1;


$resinnh2 = '';

if (defined('HOME_PAGE')) {

    $resinnh2 .= '';


    // $recInn2 = Article::find_by_id(16);
    $recInn2 = Article::find_all_active_uc();

    if (!empty($recInn2)) {
        foreach ($recInn2 as $recInn) {

            $resinnh2 .= '
            <section id="' . $recInn->slug . '" class="mod-about">
        <div class="modal-toggle">
           <a href="#" id="modal-close" title="close">close</a>
        </div>
         <div class="row about-content">
          <div class="row about-header">
      <div class="twelve tweleve1 columns">
          <div class="icon-wrap">
              <i class="icon"></i></div>
          <h1>
              ' . $recInn->title . '</h1>
      </div></div>
          ';
            $resinnh2 .=
                $recInn->content;
            if ($recInn->id == 16) {
                $resinnh2 .= '  ' . $jVars['module:contact:home'] . '';
            }
            $resinnh2 .= '
</div>
          <!-- /about-content -->
       </section><!-- /mod-about -->';
        }



    }
}

$jVars['module:home_shinee'] = $resinnh2;

?>