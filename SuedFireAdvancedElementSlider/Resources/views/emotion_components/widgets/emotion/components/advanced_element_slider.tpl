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
    </div>

    <style>
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
    </style>
{/block}

