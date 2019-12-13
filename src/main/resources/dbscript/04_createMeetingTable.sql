create table meeting
(
  meeting_id   int auto_increment
    primary key,
  meeting_name varchar(20)                        not null,
  meeting_room_id       int                        null,
  start_time   datetime default CURRENT_TIMESTAMP not null,
  end_time     datetime default CURRENT_TIMESTAMP not null,
  host_id       int                        null,
  recorder_id   int                        null,
  topic        varchar(50)                        null,
  meeting_abstract varchar(100)                       null,
  remark       varchar(100)                       null,
  meeting_state int                                null,
  constraint meeting_room_fk
  foreign key (meeting_room_id) references room(room_id)
    on update cascade on delete cascade,
  constraint host_fk
  foreign key (host_id) references user(user_id)
    on update cascade on delete cascade,
  constraint record_fk
  foreign key (recorder_id) references user(user_id)
    on update cascade on delete cascade
);