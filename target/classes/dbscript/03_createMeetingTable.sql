create table meeting
(
  meeting_id   int auto_increment
    primary key,
  meeting_name varchar(20)                        not null,
  start_time   datetime default CURRENT_TIMESTAMP not null,
  end_time     datetime default CURRENT_TIMESTAMP not null,
  hostId       int                        null,
  recorderId   int                        null,
  CONSTRAINT `host_fk` FOREIGN KEY(hostId) REFERENCES user(user_id),
  CONSTRAINT `record_fk` FOREIGN KEY(recorderId) REFERENCES user(user_id),
  topic        varchar(50)                        null,
  meeting_abstract varchar(100)                       null,
  remark       varchar(100)                       null,
  meeting_state int                                null,
  meeting_room_id       int                        null
);