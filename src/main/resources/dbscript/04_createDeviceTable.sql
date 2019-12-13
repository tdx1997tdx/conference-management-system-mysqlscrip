-- auto-generated definition
create table device
(
  device_id   int auto_increment
    primary key,
  form_name   varchar(20)                        null,
  reason      varchar(20)                        null,
  room_id     int                                null,
  create_time datetime default CURRENT_TIMESTAMP not null,
  repair_time datetime default CURRENT_TIMESTAMP not null,
  state        int                                null,
  constraint room_fk
  foreign key (room_id) references room (room_id)
    on update cascade on delete cascade
);