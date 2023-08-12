using FunOrgService from './funorg_srv';

annotate FunOrgService.Activity with {
    ID          @(
        UI.Hidden,
        Common: {Text: description}
    );
    name        @title: 'Name';
    description @title: 'Description';
}


annotate FunOrgService.User with {
    name        @title: 'Name';
    gender      @title: 'Gender';
    location    @title: 'Location';
    interest_ID @title: 'Interest';
    birthYear   @title: 'Year of Birth';
    members     @title: 'Members';
}


annotate FunOrgService.User with @(UI: {
    HeaderInfo      : {
        TypeName      : 'User',
        TypeNamePlural: 'Users',
        Title         : {
            $Type: 'UI.DataField',
            Value: name
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: interest_ID
        }
    },
    // SelectionFields : [interest_ID],
    LineItem        : [
        {Value: name},
        {Value: location},
        {Value: gender},
        {Value: birthYear},
        {Value: interest_ID},        
    // {Value: miti_ID},
    // {
    //     Value      : prio,
    //     Criticality: criticality
    // },
    // {
    //     Value      : impact,
    //     Criticality: criticality
    // }
    ],
    Facets          : [{
        $Type : 'UI.ReferenceFacet',
        Label : 'Properties',
        Target: '@UI.FieldGroup#Main'
    }],
    FieldGroup #Main: {Data: [
        {Value: location},
        {Value: gender},
        {Value: birthYear},
        {Value: interest_ID},
    // {Value: name,
    //                             // Criticality: criticality
    //         },
    // {
    //     Value      : impact,
    //     Criticality: criticality
    // }
    ]}
}, ) {

};

annotate FunOrgService.User with {
    interest @(Common: {
        //show text, not id for mitigation in the context of risks
        Text           : interest.name,
        TextArrangement: #TextOnly,
        ValueList      : {
            Label         : 'Interest',
            CollectionPath: 'Category',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: interest_ID,
                    ValueListProperty: 'interest_ID'
                },
                // {
                //     $Type            : 'Common.ValueListParameterDisplayOnly',
                //     ValueListProperty: 'user_name'
                // }
            ]
        }
    });
}

annotate FunOrgService.ActivityGroup with {
    name        @title: 'Name';
    activity    @title: 'Activity';
    description @title: 'Description';
    owner_name  @title: 'Owner';
}
