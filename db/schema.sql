DROP TABLE IF EXISTS `user_role`;
DROP TABLE IF EXISTS `role_permission`;
DROP TABLE IF EXISTS `order_goods`;
DROP TABLE IF EXISTS `permission`;
DROP TABLE IF EXISTS `role`;
DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `order`;
DROP TABLE IF EXISTS `goods`;
DROP TABLE IF EXISTS `good_type`;

CREATE TABLE `permission`(
  pid CHAR(32) NOT NULL COMMENT 'id',
  name VARCHAR(32) NOT NULL COMMENT '权限名',
  PRIMARY KEY `pid`(`pid`)
) COMMENT '权限表';

CREATE TABLE `role`(
  rid CHAR(32) NOT NULL COMMENT 'id',
  name VARCHAR(32) NOT NULL COMMENT '角色名',
  create_at DATETIME NOT NULL COMMENT '创建时间',
  PRIMARY KEY `rid`(`rid`)
) COMMENT '角色表';

CREATE TABLE `role_permission`(
  rid CHAR(32) NOT NULL COMMENT '角色id',
  pid CHAR(32) NOT NULL COMMENT '权限id',
  KEY `rid`(`rid`),
  KEY `pid`(`pid`)
) COMMENT '角色权限关系表';

CREATE TABLE `user`(
  uid        CHAR(32)      NOT NULL  COMMENT 'id',
  username  VARCHAR(32)   NOT NULL  COMMENT '用户名',
  password  VARCHAR(20)   NOT NULL  COMMENT '密码',
  email     VARCHAR(32)   DEFAULT   NULL  COMMENT '邮箱',
  nickname  VARCHAR(40)   NOT NULL  COMMENT '昵称',
  gender    CHAR(8)       NOT NULL  COMMENT '性别',
  telephone CHAR(20)      DEFAULT NULL  COMMENT '电话',
  birthday  DATETIME      DEFAULT NULL  COMMENT '出生日期',
  avatar    VARCHAR(128)  DEFAULT NULL  COMMENT '头像url',
  create_at DATETIME  NOT NULL COMMENT '注册时间',
  last_login_at DATETIME NOT NULL COMMENT '上次登录时间',
  last_login_ip CHAR(40) DEFAULT NULL COMMENT '上次登录ip',
  status CHAR(10) NOT NULL COMMENT '状态',
  PRIMARY KEY `id`(`uid`)
) COMMENT '用户表';

CREATE TABLE `user_role`(
  uid        CHAR(32)      NOT NULL  COMMENT '用户id',
  rid CHAR(32) NOT NULL COMMENT '角色id',
  KEY `rid`(`rid`),
  KEY `uid`(`uid`)
) COMMENT '用户角色表';

CREATE TABLE `good_type`(
  gtid        CHAR(32)      NOT NULL   COMMENT 'id',
  name      VARCHAR(64)   NOT NULL   COMMENT '分类名称',
  parent_id CHAR(32) DEFAULT NULL  COMMENT '上级分类',
  PRIMARY KEY `gtid`(`gtid`),
  KEY `parent_id`(`parent_id`)
) COMMENT '商品分类表';

CREATE TABLE `goods`(
  gid        CHAR(32)      NOT NULL   COMMENT 'id',
  name      VARCHAR(32)   NOT NULL   COMMENT '商品名称',
  price DECIMAL(10,2) NOT NULL COMMENT '价格',
  discount FLOAT DEFAULT 1 COMMENT '折扣',
  status CHAR(10) NOT NULL COMMENT '商品状态',
  type CHAR(32) NOT NULL COMMENT '商品类型',
  KEY `type`(`type`),
  PRIMARY KEY `gid`(`gid`)
) COMMENT '商品表';

CREATE TABLE `order`(
  oid CHAR(32) NOT NULL COMMENT 'id',
  status VARCHAR(10) NOT NULL COMMENT '订单状态',
  identifier CHAR(18) NOT NULL COMMENT '订单编号',
  create_at DATETIME NOT NULL COMMENT '创建时间',
  pay_at DATETIME DEFAULT NULL COMMENT '支付时间',
  delever_at DATETIME DEFAULT NULL COMMENT '发货时间',
  total_price DECIMAL(10,2) NOT NULL COMMENT '总价',
  express_num CHAR(18) NULL COMMENT '快递单号',
  user_id CHAR(32) NOT NULL COMMENT '订单对应的用户id',
  PRIMARY KEY `oid`(`oid`),
  KEY `user_id`(`user_id`),
  KEY `identifier`(`identifier`)
) COMMENT '订单表';

CREATE TABLE `order_goods`(
  gid        CHAR(32)      NOT NULL   COMMENT '商品id',
  oid CHAR(32) NOT NULL COMMENT '订单id',
  KEY `gid`(`gid`),
  KEY `oid`(`oid`)
) COMMENT '订单商品关系表';



