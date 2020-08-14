<?php

namespace KategoriesTeaserViArise\Bootstrap;

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
        $ViAriseElement = $this->emotionComponentInstaller->createOrUpdate(
            $this->pluginName,
            'CategoriesTeaserViArise',
            [
                'xtype' => 'vi-arise-categories-teaser',
                'name' => 'Vi-Arise categories teaser',
                'template' => 'vi_arise_categories_teaser'
            ]
        );

        $ViAriseElement->createMediaField([
            'name' => 'vi_arise_image',
            'fieldLabel' => 'Image',
            'valueField' => 'virtualPath'
        ]);

        $ViAriseElement->createComboBoxField([
            'fieldLabel' => 'Category',
            'name' =>  'vi_arise_button_link_element',
            'xtype' => 'emotion-components-fields-category-selection'
        ]);

        $ViAriseElement->createTextField([
            'name' => 'vi_arise_headline',
            'fieldLabel' => 'Headline'
        ]);

        $ViAriseElement->createTextField([
            'name' => 'vi_arise_subline',
            'fieldLabel' => 'Subline'
        ]);
    }
}
