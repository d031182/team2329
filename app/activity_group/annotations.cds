using FunOrgService as service from '../../srv/funorg_srv';

annotate FunOrgService.ActivityGroup with {
    name        @title: 'Name';
    description @title: 'Description';
    owner_name  @title: 'Owner';
    activity    @title: 'Activity';
}


annotate FunOrgService.ActivityGroup with @(UI: {
    HeaderInfo: {
        TypeName      : 'Activity Group',
        TypeNamePlural: 'Activity Groups',
        Title         : {
            $Type: 'UI.DataField',
            Value: name
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: description
        }
    },
    Facets    : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Activity',
            Target: 'activity/@UI.FieldGroup#GeneratedGroup1'
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Members',
            Target: 'members/@UI.LineItem'
        }
    ],
}, ) {

};

annotate service.ActivityGroup with @(UI.LineItem: [
    {
        $Type: 'UI.DataField',
        Value: name,
    },
    {
        $Type: 'UI.DataField',
        Value: activity_ID,
    },
    {
        $Type: 'UI.DataField',
        Value: description,
    },
    {
        $Type: 'UI.DataField',
        Value: owner_name,
    },
]);
