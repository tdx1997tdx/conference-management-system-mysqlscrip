-- auto-generated definition
create table message
(
  message_id    int auto_increment,
    primary key (message_id),
  message_topic varchar(30)                        null,
  message_body  varchar(100)                       null,
  sendTime      datetime default CURRENT_TIMESTAMP null,
  sender        varchar(20)                        null,
  receiver      varchar(20)                        null
);

