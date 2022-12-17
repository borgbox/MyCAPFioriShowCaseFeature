namespace my.feature.showcase;

using {
  cuid,
  managed
} from '@sap/cds/common';


entity RootEntities : cuid, managed {
  name           : String;
  description    : String;
  imageUrl       : String;
  stringProperty : String;
  integerValue   : Integer;
  forecastValue  : Integer;
  targetValue    : Integer default 30;
  dimensions     : Integer;
  starsValue     : Decimal;
  childEntities1 : Composition of many ChildEntities1
                     on childEntities1.parent = $self;
}

entity ChildEntities1 : cuid {
  parent           : Association to one RootEntities;
  field            : String;
  fieldWithPerCent : Decimal(5, 2);
  booleanProperty  : Boolean default false;
  grandChildren    : Composition of many GrandChildEntities
                       on grandChildren.parent = $self;
}


entity GrandChildEntities : cuid {
  parent : Association to one ChildEntities1;
  field  : String;
}
