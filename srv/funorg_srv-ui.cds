using FunOrgService from './funorg_srv';

// annotate FunOrgService.Activity with {
//     name        @title: 'Name';
//     description @title: 'Description';
//     date        @title: 'Date';
//     location    @title: 'Location';
//     category    @title: 'Category';
// }


// annotate FunOrgService.User with {
//     name        @title: 'Name';
//     gender      @title: 'Gender';
//     location    @title: 'Location';
//     interest_ID @title: 'Interest';
//     birthYear   @title: 'Year of Birth';
//     members     @title: 'Members';
// }


// annotate FunOrgService.User with @(UI: {
//     Identification  : [{Value: name}],
//     HeaderInfo      : {
//         TypeName      : 'User',
//         TypeNamePlural: 'Users',
//         Title         : {
//             $Type: 'UI.DataField',
//             Value: name
//         },
//         Description   : {
//             $Type: 'UI.DataField',
//             Value: interest_ID
//         }
//     },
//     // SelectionFields : [interest_ID],
//     LineItem        : [
//         {Value: name},
//         {Value: location},
//         {Value: gender},
//         {Value: birthYear},
//         {Value: interest_ID},
//     // {Value: miti_ID},
//     // {
//     //     Value      : prio,
//     //     Criticality: criticality
//     // },
//     // {
//     //     Value      : impact,
//     //     Criticality: criticality
//     // }
//     ],
//     Facets          : [{
//         $Type : 'UI.ReferenceFacet',
//         Label : 'Memberships',
//         Target: 'members/@UI.LineItem'
//     // Target: '@UI.FieldGroup#Main'
//     },
//     // {
//     //     $Type : 'UI.ReferenceFacet',
//     //     Label : 'Ownerships',
//     //     Target: 'activityGroup'
//     // },
//     ],
//     FieldGroup #Main: {Data: [
//         {Value: location},
//         {Value: gender},
//         {Value: birthYear},
//         {Value: interest_ID},
//     ]}
// }, ) {

// };

// annotate FunOrgService.User with {
//     interest @(Common: {
//         //show text, not id for mitigation in the context of risks
//         Text           : interest.name,
//         TextArrangement: #TextOnly,
//         ValueList      : {
//             Label         : 'Interest',
//             CollectionPath: 'Category',
//             Parameters    : [{
//                 $Type            : 'Common.ValueListParameterInOut',
//                 LocalDataProperty: interest_ID,
//                 ValueListProperty: 'interest_ID'
//             },
//             // {
//             //     $Type            : 'Common.ValueListParameterDisplayOnly',
//             //     ValueListProperty: 'user_name'
//             // }
//             ]
//         }
//     });
// }

// annotate FunOrgService.ActivityGroup with {
//     name        @title: 'Name';
//     description @title: 'Description';
//     owner_name  @title: 'Owner';
//     activity    @title: 'Activity';
// }

// annotate FunOrgService.ActivityGroup with @(UI: {
//     HeaderInfo: {
//         TypeName      : 'Activity Group',
//         TypeNamePlural: 'Activity Groups',
//         Title         : {
//             $Type: 'UI.DataField',
//             Value: name
//         },
//         Description   : {
//             $Type: 'UI.DataField',
//             Value: description
//         }
//     },
//     Facets    : [{
//         $Type : 'UI.ReferenceFacet',
//         Label : 'Members',
//         Target: 'members/@UI.LineItem'
//     }],
// }, ) {

// };


annotate FunOrgService.Members with {
    user          @title: 'User';
    activityGroup @title: 'Activity Group';
}


annotate FunOrgService.Members with @(
    Common.SemanticKey: [
        user_name,
        activityGroup_name
    ],
    UI                : {
                         // HeaderInfo: {
                         //     TypeName      : '{i18n>Membership}',
                         //     TypeNamePlural: '{i18n>Memberships}',
                         //     Title         : {Value: activityGroup_name},
                         // },
                        LineItem: [
        {Value: user_name},
        {Value: activityGroup_name},
    ],
    // Facets          : [{
    //     $Type : 'UI.ReferenceFacet',
    //     // Label : 'Properties',
    //     // Target: 'activityGroup/@UI.HeaderInfo'
    //     Target: 'activityGroup/members/@UI.LineItem'
    // }],
    }
) {};
