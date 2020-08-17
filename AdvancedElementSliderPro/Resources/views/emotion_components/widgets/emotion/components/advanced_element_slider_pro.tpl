{block name="frontend_widgets_banner_slider"}
    <div class="emotion--banner-slider image-slider"
         data-image-slider="true"
         data-thumbnails="false"
         data-lightbox="false"
         data-loopSlides="true"
         data-animationSpeed="500"
         data-arrowControls="{$Data.showArrows}}"
         data-autoSlideInterval="{$Data.advanced_element_slider_settings_slideduration}"
         data-autoSlide="true"
         data-imageSelector=".image-slider--item">


        {block name="frontend_widgets_banner_slider_container"}
            <div class="banner-slider--container image-slider--container">

                {block name="frontend_widgets_banner_slider_slide"}
                    <div class="banner-slider--slide image-slider--slide">

                        {for $i=1 to 3}

                            {assign var='slidePreLine' value="advanced_element_slider_pre_line1_slide`$i`"}
                            {assign var='slideLine1' value="advanced_element_slider_line1_slide`$i`"}
                            {assign var='slideLine2' value="advanced_element_slider_line2_slide`$i`"}
                            {assign var='slideLink1' value="advanced_element_slider_badge1_slide`$i`"}
                            {assign var='slideButtonText' value="advanced_element_slider_button_text_slide`$i`"}
                            {assign var='slideImageFull' value="advanced_element_slider_background_image_full_slide`$i`"}
                            {assign var='slideModelName' value="advanced_element_slider_model_name_slide`$i`"}

                            {assign var='slidePreLineColor' value="advanced_element_slider_pre_line1_slide_color`$i`"}
                            {assign var='slideLine1Color' value="advanced_element_slider_line1_slide_color`$i`"}
                            {assign var='slideLine2Color' value="advanced_element_slider_line2_slide_color`$i`"}
                            {assign var='slideLink1Color' value="advanced_element_slider_badge1_slide_color`$i`"}
                            {assign var='slideButtonTextColor' value="advanced_element_slider_button_text_slide_color`$i`"}
                            {assign var='slideButtonBackground' value="advanced_element_slider_button_text_slide_background`$i`"}
                            {assign var='slideModelNameColor' value="advanced_element_slider_model_name_slide_color`$i`"}

                             {*Slide output start*}
                            {if !empty($Data.$slideLine1)}
                                {block name="frontend_widgets_banner_slider_item"}
                                    <div class="banner-slider--item image-slider--item"
                                         data-coverImage="true"
                                         data-containerSelector=".banner-slider--banner">

                                        {block name="frontend_widgets_banner_slider_banner"}
                                            <div class="banner-slider--banner">

                                                {block name="frontend_widgets_banner_slider_banner_picture"}
                                                    {*<picture>*}
                                                        {*{insert name="getSourceSet" source="{$Data.$slideImageFull}" class="banner-slider--image" max-size="2500"}*}
                                                    {*</picture>*}
                                                    <img class="banner-slider--image" src="{$Data.$slideImageFull}" alt="test">
                                                {/block}
                                            </div>
                                        {/block}


                                        {block name="frontend_widgets_banner_slider_link"}
                                            <a href="{$Data.$slideLink1}"
                                               class="banner-slider--box-link-content">
                                                <div class="banner-slider--box-link-content-content">
                                                    <span class="subtitle {$Data.$slidePreLineColor}">
                                                        {$Data.$slidePreLine}
                                                    </span>
                                                    <div class="title  {$Data.$slideLine1Color}">
                                                        {$Data.$slideLine1}
                                                    </div>
                                                    <p class="title2 {$Data.$slideLine2Color}"> {$Data.$slideLine2}</p>
                                                    <button class="btn is--primary {$Data.$slideButtonTextColor} {$Data.$slideButtonBackground}"
                                                            href="{$Data.$slideLink1}">
                                                        {$Data.$slideButtonText}
                                                    </button>
                                                    <div class="link {$Data.$slideModelNameColor}">
                                                        {$Data.$slideModelName}
                                                    </div>
                                                </div>
                                            </a>
                                        {/block}
                                    </div>
                                {/block}
                            {/if}
                        {/for}
                    </div>
                {/block}
            </div>
        {/block}

        {block name="widgets_emotion_components_vimeo_element"}
            <div class="teaser-container {if $Data.vi_arise_image_three != ''} teaser-container-three{/if}">
                <a href="{$Data.vi_arise_button_href}" class="teaser-wrapper">
        <span class="teaser-img">
            <img src="{$Data.vi_arise_image}" alt="banner-image">
        </span>
                    <span class="banner-txt">
            <h2 class="teaser-headline">{$Data.vi_arise_headline}</h2>
            <h3 class="teaser-subline">{$Data.vi_arise_subline}</h3>
        </span>
                </a>

                <a href="{$Data.vi_arise_button_href_second}" class="teaser-wrapper">
        <span class="teaser-img">
            <img src="{$Data.vi_arise_image_second}" alt="banner-image">
        </span>
                    <span class="banner-txt">
            <h2 class="teaser-headline">{$Data.vi_arise_headline_second}</h2>
            <h3 class="teaser-subline">{$Data.vi_arise_subline_second}</h3>
        </span>
                </a>

                {if $Data.vi_arise_image_three != ''}

                    <a href="{$Data.vi_arise_button_href_three}" class="teaser-wrapper">
        <span class="teaser-img">
            <img src="{$Data.vi_arise_image_three}" alt="banner-image">
        </span>
                        <span class="banner-txt">
            <h2 class="teaser-headline">{$Data.vi_arise_headline_three}</h2>
            <h3 class="teaser-subline">{$Data.vi_arise_subline_three}</h3>
        </span>
                    </a>
                {/if}

            </div>
        {/block}
    </div>

    <style>
        /*style for banner*/
        .banner-slider--box-link-content .subtitle,
        .banner-slider--box-link-content .title,
        .banner-slider--box-link-content .title2  {
            color: red;
            font-size: 20px;
        }
        .banner-slider--box-link-content .link {
            color: red;
            font-size: 20px;
        }
        .banner-slider--box-link-content .is--primary {
            background-color: #FF9132;
            color: #000;
        }
        .banner-slider--box-link-content .KT-black,
        .banner-slider--box-link-content .Z1-black,
        .banner-slider--box-link-content .Z2-black,
        .banner-slider--box-link-content .MN-black {
            color: #000000;
        }

        .banner-slider--box-link-content .KT-purple,
        .banner-slider--box-link-content .Z1-purple,
        .banner-slider--box-link-content .Z2-purple,
        .banner-slider--box-link-content .BT-purple,
        .banner-slider--box-link-content .MN-purple {
            color: #A81756;
        }

        .banner-slider--box-link-content .BF-purple {
            background: #A81756;
        }

        .banner-slider--box-link-content .KT-orange,
        .banner-slider--box-link-content .Z1-orange,
        .banner-slider--box-link-content .Z2-orang,
        .banner-slider--box-link-content .BT-orange {
            color: #FF9132;
        }

        .banner-slider--box-link-content .MN-white,
        .banner-slider--box-link-content .BT-white {
            color: #FFFFFF;
        }

        /*style for teaser */
        .teaser-wrapper, .teaser-wrapper span {
            display: block;
        }
        .teaser-wrapper {
            position: relative;
        }
        .teaser-wrapper .banner-txt {
            position: absolute;
            background: #A81756;
            width: 60%;
            bottom: 5%;
            left: 0;
            padding: 30px 50px 30px 50px;
            text-align: left;
        }
        .teaser-wrapper h2 {
            font-weight: bold;
            color: #fff;
            margin: 0;
            margin-bottom: 10px;
            text-transform: uppercase;
        }
        .teaser-wrapper h3 {
            color: #f7f7f7;
            margin: 0;
            font-weight: 400;
            text-transform: uppercase;
            position: relative;
            display: inline-block;
        }
        .teaser-wrapper h3:before {
            content: "";
            position: absolute;
            width: 100%;
            height: 1px;
            background-color: #fff;
            display: block;
            bottom: -10px;
        }
        .teaser-img {
            padding: 0 20px;
        }
        .teaser-img img {
            width: 100%;
        }
        .teaser-container {
            display: flex;
            justify-content: space-between;
            align-items: stretch;
        }
        .teaser-container .teaser-wrapper {
            width: 50%;
            padding: 0 10px;
        }
        .teaser-container-three .teaser-wrapper {
            width: 33.333%;
            padding: 0 10px;
        }
        .teaser-container .teaser-wrapper .banner-txt {
            padding: 7px 10px;
            bottom: 5%;
        }
        .teaser-container .teaser-wrapper h2 {
            margin-bottom: 3px;
        }
        .teaser-container .teaser-wrapper h3:before {
            bottom: -1px;
        }
        .teaser-container .teaser-img {
            height: 100%;
            padding: 0;
        }
        .teaser-container .teaser-img img {
            min-height: 100%;
            object-fit: cover;
        }
    </style>
{/block}

