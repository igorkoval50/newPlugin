// {namespace name="backend/emotion/swag_vimeo_element"}
//{block name="emotion_components/backend/vimeo_video"}
Ext.define('Shopware.apps.Emotion.view.components.VimeoVideo', {

    /**
     * Extend from the base class for the emotion components
     */
    extend: 'Shopware.apps.Emotion.view.components.Base',

    /**
     * Create the alias matching the xtype you defined in your `createEmotionComponent()` method.
     * The pattern is always 'widget.' + xtype
     */
    alias: 'widget.emotion-components-vimeo',

    /**
     * Contains the translations of each input field which was created with the EmotionComponentInstaller.
     * Use the name of the field as identifier
     */
    snippets: {
        'vimeo_interface_color': {
            'fieldLabel': '{s name=interfaceColorFieldLabel}{/s}',
            'supportText': '{s name=interfaceColorSupportText}{/s}'
        }
    },

    /**
     * The constructor method of each component.
     */
    initComponent: function () {
        var me = this;

        /**
         * Call the original method of the base class.
         */
        me.callParent(arguments);

        me.videoThumbnailField = me.getForm().findField('sss_button_link_element');
        me.videoThumbnailField.value = [];
    },

});

Ext.define('Shopware.apps.nnwebEmotionHover.store.HoverStyleStore', {
    extend : 'Ext.data.Store',
    fields : [{
        name : 'id',
        type : 'integer'
    }, {
        name : 'name',
        type : 'string'
    },
        {
            name : 'value',
            type : 'string'
        }],
    data : [{
        id : 1,
        name : "Zeus",
        value : "zeus"
    },{
        id : 2,
        name : "Hades",
        value : "hades"
    },{
        id : 3,
        name : "Poseidon",
        value : "poseidon"
    },{
        id : 4,
        name : "Demeter",
        value : "demeter"
    },{
        id : 5,
        name : "Hera",
        value : "hera"
    },{
        id : 6,
        name : "Hestia",
        value : "hestia"
    }]
});

Ext.define('Shopware.apps.Base.store.Category.test', {

    /**
     * Defines an alternate name for this class.
     */
    alternateClassName: 'Shopware.store.Category.test',

    /**
     * Define that this component is an extension of the Ext.data.Store
     */
    extend: 'Ext.data.Store',

    /**
     * Define unique store id to create the store by the store manager
     */
    storeId: 'base.Category.test',

    /**
     * Enable remote sorting
     */
    remoteSort: true,

    /**
     * Enable remote filtering
     */
    remoteFilter: true,

    /**
     * Define the used model for this store.
     *
     * @string
     */
    model: 'Shopware.apps.Base.model.Category',

    /**
     * Configure the data communication.
     *
     * @object
     */
    proxy: {
        type: 'ajax',

        /**
         * Configure the url mapping for the different
         * store operations based on.
         *
         * @object
         */
        url: '{url action=getCategories}',

        /**
         * Configure the data reader
         * @object
         */
        reader: {
            type: 'json',
            root: 'data',
            totalProperty: 'total'
        }
    },

    // Filtering root category and inactive categories
    filters: [{
        property: 'c.active',
        value: 1
    },{
        property: 'c.parentId',
        expression: '>=',
        value: 1
    }]
}).create();

//{/block}

