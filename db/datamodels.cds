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
    name : String(30);
    gender: String(1);
    birthYear: String(4);
    location : String (30);        
};

entity ActivityGroup {
        // key INTHeader : association to Interactions_Header;
    key ID          : Integer;
        name        : String(30);
        description : String(256);
};
