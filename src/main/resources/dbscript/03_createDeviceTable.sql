-- auto-generated definition
create table device
(
  device_id   int auto_increment
    primary key,
  form_name   varchar(20)                        null,
  reason      varchar(20)                        null,
  room_name   varchar(20)                        null,
  create_time datetime default CURRENT_TIMESTAMP not null,
  repair_time datetime default CURRENT_TIMESTAMP not null,
  state int
);