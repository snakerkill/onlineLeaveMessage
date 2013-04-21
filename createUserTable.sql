drop table user_information;
create table if not exists user_information (
		user_id int(11) unsigned not null auto_increment primary key comment '用户id',
		username varchar(20) not null comment '用户名',
		password varchar(20) not null comment '密码',
		leave_authority bool not null default 0 comment '留言权限',
		view_authority bool not null default 0 comment '查看权限',
		manage_authority bool not null default 0 comment '管理员权限',
		superuser bool not null default 0 comment '超级用户标志',
		create_time datetime comment '创建时间',
		index username (username)
		);
insert into user_information(username,password,leave_authority,view_authority,manage_authority,superuser,create_time) values('superuser','test1314',1,1,1,1,now());
