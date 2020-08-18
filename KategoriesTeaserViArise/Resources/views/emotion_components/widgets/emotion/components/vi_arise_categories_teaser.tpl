{block name="widgets_emotion_components_vimeo_element"}
    <a href="{$Data.vi_arise_button_href}" class="teaser-wrapper-kategories">
        <span class="teaser-img">
            <img src="{$Data.vi_arise_image}" alt="banner-image">
        </span>
        <span class="banner-txt">
            <h2 class="teaser-headline">{$Data.vi_arise_headline}</h2>
            <h3 class="teaser-subline">{$Data.vi_arise_subline}</h3>
        </span>
    </a>

    <style>
        /*style for teaser */
        .teaser-wrapper-kategories, .teaser-wrapper-kategories span {
            display: block;
        }
        .teaser-wrapper-kategories {
            position: relative;
            height: 425px;
        }
        .teaser-wrapper-kategories .banner-txt {
            position: absolute;
            background: #A81756;
            width: 100%;
            bottom: 0;
            left: 0;
            text-align: left;
            min-height: 88px;
            padding: 15px 0 0 37px;
        }
        .teaser-wrapper-kategories h2 {
            font-weight: bold;
            color: #fff;
            margin: 0;
            margin-bottom: 5px;
            text-transform: uppercase;
            font-size: 19px;
            font-family: 'Gudea', sans-serif;
        }
        .teaser-wrapper-kategories h3 {
            color: #f7f7f7;
            margin: 0;
            font-weight: 400;
            text-transform: uppercase;
            position: relative;
            display: inline-block;
            font-size: 16px;
            font-family: 'Gudea', sans-serif;
        }
        .teaser-wrapper-kategories h3:before {
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
        @media screen and (max-width: 1024px) {
            .teaser-wrapper-kategories {
                height: 295px;
            }
            .teaser-wrapper-kategories h2 {
                font-size: 15px;
            }
            .teaser-wrapper-kategories h3 {
                font-size: 14px;
            }
    </style>
{/block}



