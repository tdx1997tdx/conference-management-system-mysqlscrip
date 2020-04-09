-- auto-generated definition
create table device
(
  device_id   int auto_increment
    primary key,
  device_name varchar(20)   not null,
  room_id     int           not null,

  brand       varchar(20)   null,
  device_type varchar(20)   null,
  repair_time int default 0 null,
  state       int default 0 null,
  constraint device_device_name_uindex
    unique (device_name),
  constraint room_fk
    foreign key (room_id) references room (room_id)
      on update cascade on delete cascade
);