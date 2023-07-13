using app.datamodels from '../db/funorg_models';
service FunOrgService {

 entity Activity
    as projection on datamodels.Activity;

 entity User
    as projection on  datamodels.ActivityGroup;
}