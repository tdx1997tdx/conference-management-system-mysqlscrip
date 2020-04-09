-- auto-generated definition
create table user_and_meeting
(
  user_id    int           not null,
  meeting_id int           not null,
  state      int default 2 null,
  primary key (user_id, meeting_id),
  constraint user_and_meeting_meeting_meeting_id_fk
    foreign key (meeting_id) references meeting (meeting_id)
      on update cascade on delete cascade,
  constraint user_and_meeting_user_user_id_fk
    foreign key (user_id) references user (user_id)
      on update cascade on delete cascade
);