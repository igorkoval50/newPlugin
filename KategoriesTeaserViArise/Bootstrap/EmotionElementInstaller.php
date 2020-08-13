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
            'KategoriesTeaserViArise',
            [
                'name' => 'Vi-Arise Kategories',
                'xtype' => 'emotion-components-vimeo',
                'template' => 'emotion_vimeo',
                'cls' => 'emotion-vimeo-element',
                'description' => 'A simple delight kategories element for the shopping worlds.'
            ]
        );

        $ViAriseElement->createMediaField([
            'name' => 'delight_image',
            'fieldLabel' => 'The banner image',
            'valueField' => 'virtualPath'
        ]);

        $ViAriseElement->createTextField([
            'name' => 'delight_headline',
            'fieldLabel' => 'Headline of the banner',
            'supportText' => 'Write your banner headline.',
            'defaultValue' => 'Lackpflege'
        ]);

        $ViAriseElement->createTextField([
            'name' => 'delight_button_txt',
            'fieldLabel' => 'text of the button',
            'supportText' => 'Write your txt what appear in the button.',
            'defaultValue' => 'Entdecken'
        ]);

        $ViAriseElement->createTextField([
            'name' => 'delight_button_href',
            'fieldLabel' => 'href of the button',
            'supportText' => 'Write your href of the category',
            'defaultValue' => '#'
        ]);
        $ViAriseElement->createComboBoxField([
            'fieldLabel' => 'Verlinkung liegt auf',
            'name' =>  'fff_button_link_element',
            'supportText' => 'Sie können hier festlegen, welches Element verlinkt wird.',
            'allowBlank' => false,
            'store' => 'Shopware.store.Category',
            'queryMode' => 'local',
            'displayField' => 'name',
            'valueField' => 'value',
            'defaultValue' => 'button',
            'position' => '27'
        ]);

        $ViAriseElement->createComboBoxField([
            'fieldLabel' => 'Hover-Effekt',
            'name' => 'time_style',
            'supportText' => 'Sie können hier den Effekt beim Darüberfahren mit der Maus festlegen.',
            'allowBlank' => false,
            'store' => 'Shopware.apps.nnwebEmotionHover.store.HoverStyleStore',
            'queryMode' => 'local',
            'displayField' => 'name',
            'valueField' => 'value',
            'defaultValue' => 'poseidon'
        ]);
    }
}
