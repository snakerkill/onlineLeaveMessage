create table if not exists message (
		message_id int(11) unsigned not null auto_increment primary key comment '留言id',
		message_content text  comment '留言内容',
		user_id int(11) not null comment '用户id',
		message_time datetime comment '创建时间',
		answer_id int(11) not null default -1 comment '回复信息id,没有回复时为-1',
		index user_id (user_id)
		);
