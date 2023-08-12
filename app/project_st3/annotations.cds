using FunOrgService as service from '../../srv/funorg_srv';

annotate service.User with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Value : gender,
        },
        {
            $Type : 'UI.DataField',
            Value : birthYear,
        },
        {
            $Type : 'UI.DataField',
            Value : location,
        },
    ]
);
annotate service.User with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : gender,
            },
            {
                $Type : 'UI.DataField',
                Value : birthYear,
            },
            {
                $Type : 'UI.DataField',
                Value : location,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
