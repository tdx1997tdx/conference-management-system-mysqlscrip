-- auto-generated definition
create table device
(
  device_id   int auto_increment
    primary key,

  device_name   varchar(20)                     not null,
  brand         varchar(20)                     null,
  type          varchar(20)                     null,
  repair_times  int                             null,
  room_id       int                             not null,
  mttr          time                            null ,
  mtbf          time                            null ,

  constraint room_fk
  foreign key (room_id) references room (room_id)
    on update cascade on delete cascade
);