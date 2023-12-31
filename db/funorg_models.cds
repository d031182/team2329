namespace app.datamodels;

// using { Country } from '@sap/cds/common';
// type BusinessKey : String(10);
// type SDate : DateTime;
// type LText : String(1024); 

entity Activity {
    key ID          : Integer;
        name        : String(30);
        description : String(256);
        date        : Date;
        location    : String(30);
        category    : Association to Category on category.ID = category_ID;
        category_ID : type of Category : ID;
};

entity Category {
    key ID   : String(5);
        name : String(30);
}

entity User {
    key name      : String(30);
        gender    : String(1);
        birthYear : Integer;
        location  : String(30);
        interest  : Association to Category on interest.ID = interest_ID;
        interest_ID : type of Category:ID;
        members   : Composition of many Members
                        on members.user = $self; // to many association
};

entity ActivityGroup {
    key name        : String(30);
        activity    : Association to Activity;
        description : String(256);
        owner       : Association to User
                          on owner.name = owner_name; // to one association
        owner_name  : type of User : name;
        members     : Composition of many Members
                          on members.activityGroup = $self; // to many association
};


entity Members { // link table
    key activityGroup : Association to ActivityGroup;
    key user          : Association to User;
}
