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
                                                <div class="banner-slider--box-link-content custom-banner-box-link">
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
    </div>

    <style>
        .custom-banner-box-link .is--primary {
            background-color: #FF9132 !important;
        }
        .custom-banner-box-link .KT-black,
        .custom-banner-box-link .Z1-black,
        .custom-banner-box-link .Z2-black,
        .custom-banner-box-link .MN-black {
            color: #000000 !important;
        }

        .custom-banner-box-link .KT-purple,
        .custom-banner-box-link .Z1-purple,
        .custom-banner-box-link .Z2-purple,
        .custom-banner-box-link .BT-purple,
        .custom-banner-box-link .MN-purple {
            color: #A81756 !important;
        }

        .custom-banner-box-link .BF-purple {
            background: #A81756 !important;
        }

        .custom-banner-box-link .KT-orange,
        .custom-banner-box-link .Z1-orange,
        .custom-banner-box-link .Z2-orang,
        .custom-banner-box-link .BT-orange {
            color: #FF9132 !important;
        }

        .custom-banner-box-link .MN-white,
        .custom-banner-box-link .BT-white {
            color: #FFFFFF !important;
        }
        @media screen and (max-width: 1024px) and (min-width: 480px) {
            .banner-slider--item .custom-banner-box-link .title {
                font-size: 30px;
            }
        }
    </style>
{/block}

