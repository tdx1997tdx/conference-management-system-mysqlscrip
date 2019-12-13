-- auto-generated definition
create table room_and_device
(
  room_id    int not null,
  device_id int not null,
  state int,
  primary key (room_id, device_id),
  constraint room_fk
    foreign key (room_id) references room (room_id)
      on update cascade on delete cascade,
  constraint device_fk
    foreign key (device_id) references device (device_id)
      on update cascade on delete cascade
);