using FunOrgService as service from '../../srv/funorg_srv';

annotate service.User with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Label: 'Name',
        Value: name,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Year of Birth',
        Value: birthYear,
    },

    {
        $Type: 'UI.DataField',
        Label: 'Gender',
        Value: gender,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Location',
        Value: location,
    },
    {
        $Type: 'UI.DataField',
        Label: 'Interests',
        Value: interest_ID,
    },
]);


annotate service.User with @(
    UI.FieldGroup #GeneratedGroup1: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Name',
                Value: name,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Year of Birth',
                Value: birthYear,
            },

            {
                $Type: 'UI.DataField',
                Label: 'Gender',
                Value: gender,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Location',
                Value: location,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Interests',
                Value: interest_ID,
            },
        ],
    },
    UI.Facets                     : [
        {
            $Type : 'UI.ReferenceFacet',
            // ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Memberships',
            Target: 'members/@UI.LineItem'
        }
    //     ,{
    //     $Type : 'UI.ReferenceFacet',
    //     ID    : 'GeneratedFacet1',
    //     Label : 'General Information',
    //     Target: '@UI.FieldGroup#GeneratedGroup1',
    // },
    ]
);
