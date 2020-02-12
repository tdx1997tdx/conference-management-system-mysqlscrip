insert into user(username,password,role,email,name,phone,gender,state) values
("tdx","dexuan97",1,"798637048@qq.com","唐德轩",18126449698,"男",1),
("tom",123,1,"23435458@qq.com","堂堂",18126449698,"男",0),
("zwm",123,1,"23435458@qq.com","赵韦铭",1223323221,"男",2),
("zxs",123,2,"23435458@qq.com","搜索",1223323221,"男",2),
("zdm",123,1,"asdas@qq.com","hhh",1223323221,"男",2);

insert into room(room_name,province,city,block,building,floor,room_number,room_volume,mark,country) values
("会议室01","广东省","深圳市","南山区","南方科技大学","荔园",206,4,"快来玩4","中国"),
("会议室02","广东省","深圳市","南山区","南方科技大学","荔园",204,4,"快来玩3","中国"),
("会议室03","广东省","深圳市","南山区","南方科技大学","荔园",205,4,"快来玩5","中国"),
("会议室04","广东省","深圳市","南山区","南方科技大学","荔园",201,4,"快来玩88","中国");

insert into meeting(meeting_name,room_id,host_id,recorder_id,topic,meeting_state) values
("会议01",1,1,2,"南方科技大学会议",1);

insert into user_and_meeting(user_id,meeting_id) values
(1,1),
(2,1),
(3,1),
(4,1);