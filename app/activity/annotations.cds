using FunOrgService as service from '../../srv/funorg_srv';

annotate service.Activity with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Label: 'ID',
        Value: ID,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Name',
        Value: name,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Description',
        Value: description,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Date',
        Value: date,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Location',
        Value: location,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Category',
        Value: category_ID,
    },
]);

annotate service.Activity with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'ID',
                Value: ID,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Name',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Description',
                Value: description,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Date',
                Value: date,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Location',
                Value: location,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Category',
                Value: category_ID,
            },
        ],
    },
    UI.Facets                     : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);

annotate service.Activity with @(UI.HeaderInfo: {
    Title         : {
        $Type: 'UI.DataField',
        Value: name,
    },
    TypeName      : '',
    TypeNamePlural: '',
});
