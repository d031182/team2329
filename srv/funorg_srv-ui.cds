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
    name      @title: 'Name';
    gender    @title: 'Gender';
    location  @title: 'Location';
    birthYear @title: 'Year of Birth';
}


annotate FunOrgService.ActivityGroup with {
    name        @title: 'Name';
    activity    @title: 'Activity';
    description @title: 'Description';
    owner_name  @title: 'Owner';
}
