-- auto-generated definition
create table room
(
  room_id     int auto_increment
    primary key,
  room_name   varchar(20)                        null,

  province    varchar(10)                        null,
  city        varchar(10)                        null,
  block       varchar(20)                        null,
  building    varchar(20)                        null,
  floor       varchar(20)                        null,
  room_number int                                null,
  room_volume int                                null,
  mark        varchar(100)                       null,
  create_time datetime default CURRENT_TIMESTAMP null,
  modify_time datetime default CURRENT_TIMESTAMP null,
  country     varchar(10)                        null
);

