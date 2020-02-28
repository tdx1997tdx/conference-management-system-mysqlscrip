-- auto-generated definition
create table message
(
  message_id    int auto_increment,
    primary key (message_id),
  message_topic varchar(30)                        null,
  message_body  varchar(100)                       null,
  send_time     datetime default CURRENT_TIMESTAMP null,
  sender_name   varchar(20) default "System"       null,
  receiver_name varchar(20)                        null
);

