create table meeting
(
  meeting_id   int auto_increment
    primary key,
  meeting_name varchar(20)                        not null,
  start_time   datetime default CURRENT_TIMESTAMP not null,
  end_time     datetime default CURRENT_TIMESTAMP not null,
  host         varchar(10)                        null,
  recorder     varchar(10)                        null,

  topic        varchar(50)                        null,
  abstract     varchar(100)                       null,


  mark         varchar(100)                       null,
  meeting_state varchar(10)                        null
);