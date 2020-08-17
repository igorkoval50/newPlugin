<?php

namespace AdvancedElementSliderPro\Bootstrap;

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
        $advancedSliderElement = $this->emotionComponentInstaller->createOrUpdate(
            $this->pluginName,
            'AdvancedElementSliderPro',
            [
                'name' => 'Advanced Element Slider Pro',
                'xtype' => 'advanced-element-slider-pro',
                'template' => 'advanced_element_slider_pro',
                'cls' => 'advanced-element-slider',
                'description' => 'A advanced element slider pro'
            ]
        );

        // Slide1
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_pre_line1_slide1',
            'fieldLabel' => 'Slide 1 - kleiner Top Text oben',
            'allowBlank' => false
        ]);

        //Kleiner Top Text oben/Small
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_pre_line1_slide_color1',
            'fieldLabel' => 'CSS Klasse kleiner Top Text',
            'supportText' => 'Change color classes KT-black, KT-purple, KT-orange',
            'allowBlank' => true
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_line1_slide1',
            'fieldLabel' => 'Slide 1 - Zeile 1',
            'allowBlank' => false
        ]);

        //Zeile 1/Line 1
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_line1_slide_color1',
            'fieldLabel' => 'CSS Klasse Zeile 1',
            'supportText' => 'Change color classes Z1-black, Z1-purple, Z1-orange',
            'allowBlank' => true
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_line2_slide1',
            'fieldLabel' => 'Slide 1 - Zeile 2',
            'allowBlank' => false
        ]);

        //Zeile 2/Line 2
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_line2_slide_color1',
            'fieldLabel' => 'CSS Klasse Zeile 2',
            'supportText' => 'Change color classes Z2-black, Z2-purple, Z2-orange',
            'allowBlank' => true
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_button_text_slide1',
            'fieldLabel' => 'Slide 1 - Button Text',
            'allowBlank' => true
        ]);

        //Button Text
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_button_text_slide_color1',
            'fieldLabel' => 'CSS Klasse Button Text Color',
            'supportText' => 'Change color classes BT-white, BT-purple, BT-orange',
            'allowBlank' => true
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_badge1_slide1',
            'fieldLabel' => 'Slide 1 - Link',
            'allowBlank' => true
        ]);

        //Button-Farbe/Button-Colour
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_button_text_slide_background1',
            'fieldLabel' => 'CSS Klasse Button',
            'supportText' => 'Change color classes BF-purple',
            'allowBlank' => true
        ]);

        $advancedSliderElement->createMediaField(
            [
                'name' => 'advanced_element_slider_background_image_full_slide1',
                'fieldLabel' => 'Slide 1 - Hintergrundbild (voll)',
                'allowBlank' => false
            ]
        );

        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_model_name_slide1',
            'fieldLabel' => 'Slide 1 - Model Name',
            'allowBlank' => false
        ]);

        ////Model Name
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_model_name_slide_color1',
            'fieldLabel' => 'CSS Klasse Model Name',
            'supportText' => 'Change color classes MN-white, MN-purple, MN-orange',
            'allowBlank' => true
        ]);

        // Slide2
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_pre_line1_slide2',
            'fieldLabel' => 'Slide 2 - kleiner Top Text oben',
            'allowBlank' => true
        ]);

        //Kleiner Top Text oben/Small
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_pre_line1_slide_color2',
            'fieldLabel' => 'CSS Klasse kleiner Top Text',
            'supportText' => 'Change color classes KT-black, KT-purple, KT-orange',
            'allowBlank' => true
        ]);


        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_line1_slide2',
            'fieldLabel' => 'Slide 2 - Zeile 1',
            'allowBlank' => true
        ]);

        //Zeile 1/Line 1
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_line1_slide_color2',
            'fieldLabel' => 'CSS Klasse Zeile 1',
            'supportText' => 'Change color classes Z1-black, Z1-purple, Z1-orange',
            'allowBlank' => true
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_line2_slide2',
            'fieldLabel' => 'Slide 2 - Zeile 2',
            'allowBlank' => true
        ]);

        //Zeile 2/Line 2
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_line2_slide_color2',
            'fieldLabel' => 'CSS Klasse Zeile 2',
            'supportText' => 'Change color classes Z2-black, Z2-purple, Z2-orange',
            'allowBlank' => true
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_button_text_slide2',
            'fieldLabel' => 'Slide 2 - Button Text',
            'allowBlank' => true
        ]);

        //Button Text
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_button_text_slide_color2',
            'fieldLabel' => 'CSS Klasse Button Text Color',
            'supportText' => 'Change color classes BT-white, BT-purple, BT-orange',
            'allowBlank' => true
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_badge1_slide2',
            'fieldLabel' => 'Slide 2 - Link',
            'allowBlank' => true
        ]);

        //Button-Farbe/Button-Colour
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_button_text_slide_background2',
            'fieldLabel' => 'CSS Klasse Button',
            'supportText' => 'Change color classes BF-purple',
            'allowBlank' => true
        ]);


        $advancedSliderElement->createMediaField(
            [
                'name' => 'advanced_element_slider_background_image_full_slide2',
                'fieldLabel' => 'Slide 2 - Hintergrundbild (voll)',
                'allowBlank' => true
            ]
        );

        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_model_name_slide2',
            'fieldLabel' => 'Slide 2 - Model Name',
            'allowBlank' => true
        ]);

        ////Model Name
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_model_name_slide_color2',
            'fieldLabel' => 'CSS Klasse Model Name',
            'supportText' => 'Change color classes MN-white, MN-purple, MN-orange',
            'allowBlank' => true
        ]);

        // Slide3
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_pre_line1_slide3',
            'fieldLabel' => 'Slide 3 - kleiner Top Text oben',
            'allowBlank' => true
        ]);

        //Kleiner Top Text oben/Small
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_pre_line1_slide_color3',
            'fieldLabel' => 'CSS Klasse kleiner Top Text',
            'supportText' => 'Change color classes KT-black, KT-purple, KT-orange',
            'allowBlank' => true
        ]);


        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_line1_slide3',
            'fieldLabel' => 'Slide 3 - Zeile 1',
            'allowBlank' => true
        ]);

        //Zeile 1/Line 1
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_line1_slide_color3',
            'fieldLabel' => 'CSS Klasse Zeile 1',
            'supportText' => 'Change color classes Z1-black, Z1-purple, Z1-orange',
            'allowBlank' => true
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_line2_slide3',
            'fieldLabel' => 'Slide 3 - Zeile 2',
            'allowBlank' => true
        ]);

        //Zeile 2/Line 2
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_line2_slide_color3',
            'fieldLabel' => 'CSS Klasse Zeile 2',
            'supportText' => 'Change color classes Z2-black, Z2-purple, Z2-orange',
            'allowBlank' => true
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_button_text_slide3',
            'fieldLabel' => 'Slide 3 - Button Text',
            'allowBlank' => true
        ]);

        //Button Text
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_button_text_slide_color3',
            'fieldLabel' => 'CSS Klasse Button Text Color',
            'supportText' => 'Change color classes BT-white, BT-purple, BT-orange',
            'allowBlank' => true
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_badge1_slide3',
            'fieldLabel' => 'Slide 3 - Link',
            'allowBlank' => true
        ]);

        //Button-Farbe/Button-Colour
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_button_text_slide_background3',
            'fieldLabel' => 'CSS Klasse Button',
            'supportText' => 'Change color classes BF-purple',
            'allowBlank' => true
        ]);

        $advancedSliderElement->createMediaField(
            [
                'name' => 'advanced_element_slider_background_image_full_slide3',
                'fieldLabel' => 'Slide 3 - Hintergrundbild (voll)',
                'allowBlank' => true
            ]
        );


        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_model_name_slide3',
            'fieldLabel' => 'Slide 3 - Model Name',
            'allowBlank' => true
        ]);

        ////Model Name
        $advancedSliderElement->createTextField([
            'name' => 'advanced_element_slider_model_name_slide_color3',
            'fieldLabel' => 'CSS Klasse Model Name',
            'supportText' => 'Change color classes MN-white, MN-purple, MN-orange',
            'allowBlank' => true
        ]);

        //first teaser
        $advancedSliderElement->createDisplayField([
            'name' => 'vi_arise_info_one',
            'fieldLabel' => 'Element:',
            'defaultValue' => 'Kategory Teaser 1',
            'allowBlank' => false
        ]);

        $advancedSliderElement->createMediaField([
            'name' => 'vi_arise_image',
            'fieldLabel' => 'Image',
            'valueField' => 'virtualPath',
            'allowBlank' => false
        ]);

        $advancedSliderElement->createComboBoxField([
            'fieldLabel' => 'Category',
            'name' =>  'vi_arise_button_link_element',
            'xtype' => 'emotion-components-fields-category-selection',
            'allowBlank' => false
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'vi_arise_headline',
            'fieldLabel' => 'Headline',
            'allowBlank' => false
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'vi_arise_subline',
            'fieldLabel' => 'Subline',
            'allowBlank' => false
        ]);

        //second teaser
        $advancedSliderElement->createDisplayField([
            'name' => 'vi_arise_info_two',
            'fieldLabel' => 'Element:',
            'defaultValue' => 'Kategory Teaser 2',
            'allowBlank' => false
        ]);

        $advancedSliderElement->createMediaField([
            'name' => 'vi_arise_image_second',
            'helpTitle' => 'first teaser',
            'fieldLabel' => 'Image',
            'valueField' => 'virtualPath',
            'allowBlank' => false
        ]);

        $advancedSliderElement->createComboBoxField([
            'fieldLabel' => 'Category',
            'name' =>  'vi_arise_button_link_element_second',
            'xtype' => 'emotion-components-fields-category-selection',
            'allowBlank' => false
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'vi_arise_headline_second',
            'fieldLabel' => 'Headline',
            'allowBlank' => false
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'vi_arise_subline_second',
            'fieldLabel' => 'Subline',
            'allowBlank' => false
        ]);

        //third teaser
        $advancedSliderElement->createDisplayField([
            'name' => 'vi_arise_info_three',
            'fieldLabel' => 'Element:',
            'defaultValue' => 'Kategory Teaser 3',
            'allowBlank' => true
        ]);
        $advancedSliderElement->createMediaField([
            'name' => 'vi_arise_image_three',
            'helpTitle' => 'first teaser',
            'fieldLabel' => 'Image',
            'valueField' => 'virtualPath',
            'allowBlank' => true
        ]);

        $advancedSliderElement->createComboBoxField([
            'fieldLabel' => 'Category',
            'name' =>  'vi_arise_button_link_element_three',
            'xtype' => 'emotion-components-fields-category-selection',
            'allowBlank' => true
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'vi_arise_headline_three',
            'fieldLabel' => 'Headline',
            'allowBlank' => true
        ]);

        $advancedSliderElement->createTextField([
            'name' => 'vi_arise_subline_three',
            'fieldLabel' => 'Subline',
            'allowBlank' => true
        ]);
    }
}
