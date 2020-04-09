-- auto-generated definition
create table message
(
  message_id    int auto_increment
    primary key,
  message_header      varchar(30)                           null,
  message_topic       varchar(30)                           not null,
  message_body        varchar(200)                          not null,
  reason              varchar(30)                           null,

  sender_id           int         default 1                 null,
  receiver_id         int                                   not null,

  send_time           datetime    default CURRENT_TIMESTAMP null,
  have_read           int         default 0                 not null,

  constraint sender_fk
      foreign key (sender_id) references user (user_id)
          on update cascade on delete cascade,
  constraint receiver_fk
      foreign key (receiver_id) references user (user_id)
          on update cascade on delete cascade
);
