namespace app.datamodels;

// using { Country } from '@sap/cds/common';
// type BusinessKey : String(10);
// type SDate : DateTime;
// type LText : String(1024);

entity Activity {
    key ID          : Integer;
        name        : String(30);
        description : String(256);
};

entity User {
    key name            : String(30);
        gender          : String(1);
        birthYear       : Integer;
        location        : String(30);        
        members         : Composition of many Members
                              on members.user = $self;  // to many association
};

entity ActivityGroup {
    key name        : String(30);
        activity    : Association to Activity;
        description : String(256);
        owner       : Association to User; // to one association
        members     : Composition of many Members
                          on members.activityGroup = $self; // to many association
};


entity Members { // link table
    key activityGroup : Association to ActivityGroup;
    key user          : Association to User;
}
