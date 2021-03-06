-- auto-generated definition
create table user
(
  user_id      int auto_increment
    primary key,
  username     varchar(20)                        not null,
  password     varchar(20)                        not null,
  role         int                                not null,
  name         varchar(20)                        null,

  email        varchar(30)                        null,
  organization varchar(20)                        null,
  department   varchar(20)                        null,
  position     varchar(10)                        null,
  phone        varchar(15)                        null,
  gender       char                               null,
  create_time  datetime default CURRENT_TIMESTAMP not null,
  modify_time  datetime default CURRENT_TIMESTAMP not null,
  constraint user_username_uindex
    unique (username)
);

