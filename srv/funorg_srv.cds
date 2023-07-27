using app.datamodels from '../db/funorg_models';

//@path: 'service/funorg'
service FunOrgService {
    entity Activity      as projection on datamodels.Activity;
    entity User          as projection on datamodels.User;
    entity ActivityGroup as projection on datamodels.ActivityGroup;
    entity Members       as projection on datamodels.Members;
}
