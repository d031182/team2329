using FunOrgService as service from '../../srv/funorg_srv';

annotate service.ActivityGroup with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Value : activity_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Value : owner_name,
        },
    ]
);
