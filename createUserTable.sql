create table if not exists user_information (
		user_id int(11) unsigned not null auto_increment primary key comment '用户id',
		username varchar(20) not null comment '用户名',
		password varchar(20) not null comment '密码',
		leave_authority bool not null default 0 comment '留言权限',
		view_authority bool not null default 0 comment '查看权限',
		user_type bool not null default 0 comment '0普通 1管理 2超级 -1冻结',
		create_time int(11) comment '创建时间',
		phone int(11) comment '手机号',
		index username (username),
		index phone (phone),
		);
