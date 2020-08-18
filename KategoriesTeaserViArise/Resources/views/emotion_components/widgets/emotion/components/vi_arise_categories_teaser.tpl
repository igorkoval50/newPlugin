{block name="widgets_emotion_components_vimeo_element"}
    <a href="{$Data.vi_arise_button_href}" class="teaser-wrapper">
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
        .teaser-wrapper, .teaser-wrapper span {
            display: block;
        }
        .teaser-wrapper {
            position: relative;
            border: 10px solid #fff;
        }
        .teaser-wrapper .banner-txt {
            position: absolute;
            background: #A81756;
            width: 100%;
            bottom: 0;
            left: 0;
            text-align: left;
            min-height: 88px;
            padding: 15px 0 0 37px;
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
    </style>
{/block}



