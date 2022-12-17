using CatalogService as service from '../../srv/cat-service';

//annotate service1.RootEntities with @odata.draft.enabled; //Search-Term: #Draft

annotate service1.RootEntities with @(
    //Disables the delete option dependent of the fields value
    Capabilities.DeleteRestrictions : {Deletable : true, //Search-Term: #DynamicCRUD
    },
    Capabilities.UpdateRestrictions : {Updatable : true, //UpdateRestrictions are ignored in determining if the edit button is visible or not, but it still affects wheather the fields are editable or not
    },
    Capabilities.InsertRestrictions : {Insertable : true, //UpdateRestrictions are ignored in determining if the edit button is visible or not, but it still affects wheather the fields are editable or not
    },

);

annotate service.RootEntities with @(UI.LineItem : [
    {
        $Type : 'UI.DataField',
        Label : 'Name',
        Value : name,
    },
    {
        $Type : 'UI.DataField',
        Label : 'description',
        Value : description,
    },
    {
        $Type : 'UI.DataField',
        Label : 'imageUrl',
        Value : imageUrl,
    },
    {
        $Type : 'UI.DataField',
        Label : 'stringProperty',
        Value : stringProperty,
    },
    {
        $Type : 'UI.DataField',
        Label : 'integerValue',
        Value : integerValue,
    },
]);


annotate service.RootEntities with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'imageUrl',
                Value : imageUrl,
            },
            {
                $Type : 'UI.DataField',
                Label : 'stringProperty',
                Value : stringProperty,
            },
            {
                $Type : 'UI.DataField',
                Label : 'integerValue',
                Value : integerValue,
            },
            {
                $Type : 'UI.DataField',
                Label : 'forecastValue',
                Value : forecastValue,
            },
            {
                $Type : 'UI.DataField',
                Label : 'targetValue',
                Value : targetValue,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dimensions',
                Value : dimensions,
            },
            {
                $Type : 'UI.DataField',
                Label : 'starsValue',
                Value : starsValue,
            },
        ],
    },
    UI.Facets                      : [{
        $Type  : 'UI.ReferenceFacet',
        ID     : 'GeneratedFacet1',
        Label  : 'General Information',
        Target : '@UI.FieldGroup#GeneratedGroup1',
    },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'child1...n',
            ID : 'child1n',
            Target : 'childEntities1/@UI.LineItem#child1n',
        }, ]
);


/**
 * UI.LineItem
 */

annotate service.ChildEntities1 with @(
    UI.LineItem #child1n : [
            {
        $Type : 'UI.DataField',
        Value : field,
        Label: 'Test Field'
    },
    {
        $Type : 'UI.DataField',
        Value : fieldWithPerCent,
    }
    ],
);


/**
    UI.PresentationVariant
 */
annotate service.ChildEntities1 with @(
    UI.PresentationVariant #child1n : {
        SortOrder       : [
            {
                Property    : field,
                Descending  : false,
            },
        ],
        Visualizations  : ['@UI.LineItem'],
    },
);
