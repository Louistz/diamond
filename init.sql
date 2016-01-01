CREATE TABLE `config_info` (
`id` bigint(64) NOT NULL AUTO_INCREMENT,
`data_id` varchar(255) NOT NULL DEFAULT '',
`group_id` varchar(128) NOT NULL DEFAULT '',
`content` longtext NOT NULL,
`md5` varchar(32) NOT NULL DEFAULT '',
`gmt_create` datetime NOT NULL DEFAULT '2010-05-05 00:00:00',
`gmt_modified` datetime NOT NULL DEFAULT '2010-05-05 00:00:00',
PRIMARY KEY (`id`),
UNIQUE KEY `uk_config_datagroup` (`data_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;