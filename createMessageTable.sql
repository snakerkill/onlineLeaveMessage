create table if not exists message (
		message_id int(11) unsigned not null auto_increment primary key comment '留言id',
		message_content text  comment '留言内容',
		user_id int(11) not null comment '用户id',
		message_time datetime comment '创建时间',
		is_answer bool not null default 0 comment '是否是回复信息',
		index user_id (user_id)
		);
