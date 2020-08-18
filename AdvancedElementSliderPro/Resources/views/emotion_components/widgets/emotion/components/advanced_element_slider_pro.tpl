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
                                                    <picture>
                                                        {insert name="getSourceSet" source="{$Data.$slideImageFull}" class="banner-slider--image" max-size="2500"}
                                                    </picture>
                                                {/block}
                                            </div>
                                        {/block}


                                        {block name="frontend_widgets_banner_slider_link"}
                                            <a href="{$Data.$slideLink1}"
                                               class="banner-slider--box-link">
                                                <div class="banner-slider--box-link-content custom-banner-box-link-pro">
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
                <a href="{$Data.vi_arise_button_link_element}" class="teaser-wrapper">
        <span class="teaser-img">
            <img src="{$Data.vi_arise_image}" alt="banner-image">
        </span>
                    <span class="banner-txt">
            <h2 class="teaser-headline">{$Data.vi_arise_headline}</h2>
            <h3 class="teaser-subline">{$Data.vi_arise_subline}</h3>
        </span>
                </a>

                <a href="{$Data.vi_arise_button_link_element_second}" class="teaser-wrapper">
        <span class="teaser-img">
            <img src="{$Data.vi_arise_image_second}" alt="banner-image">
        </span>
                    <span class="banner-txt">
            <h2 class="teaser-headline">{$Data.vi_arise_headline_second}</h2>
            <h3 class="teaser-subline">{$Data.vi_arise_subline_second}</h3>
        </span>
                </a>

                {if $Data.vi_arise_image_three != ''}

                    <a href="{$Data.vi_arise_button_link_element_three}" class="teaser-wrapper">
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
        .custom-banner-box-link-pro .is--primary {
            background-color: #FF9132 !important;
        }
        .custom-banner-box-link-pro .KT-black,
        .custom-banner-box-link-pro .Z1-black,
        .custom-banner-box-link-pro .Z2-black,
        .custom-banner-box-link-pro .MN-black {
            color: #000000 !important;
        }

        .custom-banner-box-link-pro .KT-purple,
        .custom-banner-box-link-pro .Z1-purple,
        .custom-banner-box-link-pro .Z2-purple,
        .custom-banner-box-link-pro .BT-purple,
        .custom-banner-box-link-pro .MN-purple {
            color: #A81756 !important;
        }

        .custom-banner-box-link-pro .BF-purple {
            background: #A81756 !important;
        }

        .custom-banner-box-link-pro .KT-orange,
        .custom-banner-box-link-pro .Z1-orange,
        .custom-banner-box-link-pro .Z2-orang,
        .custom-banner-box-link-pro .BT-orange {
            color: #FF9132 !important;
        }

        .custom-banner-box-link-pro .MN-white,
        .custom-banner-box-link-pro .BT-white {
            color: #FFFFFF !important;
        }
        @media screen and (max-width: 1024px) and (min-width: 480px) {
            .banner-slider--item .custom-banner-box-link-pro .title {
                font-size: 30px;
            }
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
            width: 100%;
            bottom: 0;
            left: 0;
            text-align: left;
            min-height: 88px;
        }
        .teaser-wrapper h2 {
            font-weight: bold;
            color: #fff;
            margin: 0;
            margin-bottom: 5px;
            text-transform: uppercase;
            font-size: 19px;
        }
        .teaser-wrapper h3 {
            color: #f7f7f7;
            margin: 0;
            font-weight: 400;
            text-transform: uppercase;
            position: relative;
            display: inline-block;
            font-size: 16px;
        }
        .teaser-wrapper h3:before {
            content: "";
            position: absolute;
            width: 100%;
            height: 1px;
            background-color: #fff;
            display: block;
            bottom: -3px;
        }

        .teaser-img img {
            width: 100%;
        }
        .teaser-container {
            display: flex;
            justify-content: space-between;
            align-items: stretch;
            padding-left: 12px;
        }
        .teaser-container .teaser-wrapper {
            width: 50%;
            padding: 0;
        }
        .teaser-container-three .teaser-wrapper {
            width: 33.333%;
            height: 425px;
            border: 10px solid #fff;
            margin-right: 12px;
        }
        .teaser-container .teaser-wrapper .banner-txt {
            padding: 15px 0 0 37px;
            bottom: 0;
            width: 100%;
        }
        .teaser-container .teaser-wrapper h2 {
            margin-bottom: 3px;
        }
        .teaser-container .teaser-wrapper h3:before {
            bottom: -3px;
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

