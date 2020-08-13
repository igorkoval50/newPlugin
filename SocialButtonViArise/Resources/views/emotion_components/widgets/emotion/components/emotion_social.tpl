{block name="widgets_emotion_components_vimeo_element"}
    <a class="social-element" href="{$Data.social_button_href}">
        <span class="img">
            <img src="{$Data.social_image}" alt="social-image">
        </span>
        <span class="social-text">
            {$Data.social_button_txt}
        </span>
    </a>
{/block}


<style>
   .social-element {
       background: #A81756;
       display: flex;
       align-items: center;
       padding: 0 20px;
       min-height: 60px;
   }
    .social-text {
        color: #fff;
        display: block;
        margin: 0 auto;
    }
   .social-element .img {
       border: 1px solid #fff;
       border-radius: 50%;
       height: 38px;
       width: 38px;
       display: flex;
       justify-content: center;
       align-items: center;
   }
   .social-element .img img {
       width: 30px;
       height: 30px;
       padding: 5px;
   }
</style>
