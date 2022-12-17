using my.feature.showcase as persistence from '../db/data-model';

service CatalogService  @(path : '/srv'){
    @odata.draft.enabled
    entity RootEntities   as select from persistence.RootEntities;
    entity ChildEntities1 as projection on persistence.ChildEntities1;
}
