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
    </style>
{/block}



