-- auto-generated definition
create table message
(
  message_id    int auto_increment,
  user_id       int                                not null,
  message_topic varchar(30)                        null,
  message_body  varchar(100)                       null,
  reciever_time datetime default CURRENT_TIMESTAMP null,
  send_man      varchar(5)                         null,
  state         int                                null,
  constraint message_message_id_uindex
    unique (message_id)
);

alter table message
  add primary key (message_id);

