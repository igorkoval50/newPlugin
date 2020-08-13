<?php

namespace SocialButtonViArise\Bootstrap;

use Shopware\Components\Emotion\ComponentInstaller;

class EmotionElementInstaller
{
    /**
     * @var ComponentInstaller
     */
    private $emotionComponentInstaller;

    /**
     * @var string
     */
    private $pluginName;

    /**
     * @param string $pluginName
     * @param ComponentInstaller $emotionComponentInstaller
     */
    public function __construct($pluginName, ComponentInstaller $emotionComponentInstaller)
    {
        $this->emotionComponentInstaller = $emotionComponentInstaller;
        $this->pluginName = $pluginName;
    }

    public function install()
    {
        $ViAriseSocialElement = $this->emotionComponentInstaller->createOrUpdate(
            $this->pluginName,
            'SocialButtonViArise',
            [
                'name' => 'Social Button Vi-Arise',
                'template' => 'emotion_social',
                'cls' => 'emotion-vimeo-social',
                'description' => 'A simple social button vi-arise element for the shopping worlds.'
            ]
        );

        $ViAriseSocialElement ->createMediaField([
            'name' => 'social_image',
            'fieldLabel' => 'Icon',
            'valueField' => 'virtualPath'
        ]);

        $ViAriseSocialElement ->createTextField([
            'name' => 'social_button_href',
            'fieldLabel' => 'Link',
            'supportText' => 'Write your href of the category',
            'defaultValue' => 'https://www.instagram.com/uxgo_official/?hl=de'
        ]);

        $ViAriseSocialElement ->createTextField([
            'name' => 'social_button_txt',
            'fieldLabel' => 'Link text',
            'supportText' => 'Write your txt what appear in the button.',
            'defaultValue' => '#UXGOSTYLE JETZT ENTDECKEN'
        ]);
    }
}
