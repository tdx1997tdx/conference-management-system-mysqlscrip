-- auto-generated definition
create table form
(
  form_id   int auto_increment
    primary key,
  form_name     varchar(20)                        null,
  device_id     int                                not null,
  device_name   varchar(20)                        not null,
  room_id       int                                not null,
  repair_man    varchar(20)                        null,
  service_man   varchar(20)                        null,
  verify_man    varchar(20)                        null,
  reason        varchar(20)                        null,
  service_time  datetime default CURRENT_TIMESTAMP not null,
  repair_time   datetime default CURRENT_TIMESTAMP not null,
  finish_time   datetime default CURRENT_TIMESTAMP not null,
  measure       varchar(20)                        null,
  constraint form_room_fk
      foreign key (room_id) references room (room_id)
          on update cascade on delete cascade,
  constraint form_device_fk
      foreign key (device_id) references device (device_id)
          on update cascade on delete cascade
);