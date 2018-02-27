CREATE TABLE user(
  id        CHAR(32)      NOT NULL  COMMENT 'id',
  username  VARCHAR(32)   NOT NULL  COMMENT '用户名',
  password  VARCHAR(20)   NOT NULL  COMMENT '密码',
  email     VARCHAR(32)   DEFAULT   NULL  COMMENT '邮箱',
  nickname  VARCHAR(40)   NOT NULL  COMMENT '昵称',
  gender    CHAR(8)       NOT NULL  COMMENT '性别',
  telephone CHAR(20)      DEFAULT NULL  COMMENT '电话',
  birthday  DATETIME      DEFAULT NULL  COMMENT '出生日期',
  avatar    VARCHAR(128)  DEFAULT NULL  COMMENT '头像url',
  create_at DATETIME NOT NULL DEFAULT now() COMMENT '注册时间',
  last_login_at DATETIME NOT NULL DEFAULT now() COMMENT '上次登录时间',
  last_login_ip DATETIME DEFAULT NULL COMMENT '上次登录ip',
  PRIMARY KEY `id`(`id`)
) COMMENT '用户表';

CREATE TABLE good_type(
  id        CHAR(32)      NOT NULL   COMMENT 'id',
  name      VARCHAR(64)   NOT NULL   COMMENT '分类名称',
  description VARCHAR(256) NOT NULL  COMMENT '分类描述',
  parent_id CHAR(32) DEFAULT NULL  COMMENT '上级分类',
  PRIMARY KEY `id`(`id`),
  KEY `parent_id`(`parent_id`)
) COMMENT '商品分类表';

CREATE TABLE goods(
  id        CHAR(32)      NOT NULL   COMMENT 'id',
  name      VARCHAR(64)   NOT NULL   COMMENT '商品名称',
  price DECIMAL(5,2) NOT NULL COMMENT '价格',
  discount FLOAT DEFAULT 1 COMMENT '折扣',
  state CHAR(8) NOT NULL COMMENT '商品状态',
  type CHAR(32) NOT NULL COMMENT '商品类型',
  KEY `type`(`type`),
  PRIMARY KEY `id`(`id`)
) COMMENT '商品表';

CREATE TABLE order();

CREATE TABLE role();

CREATE TABLE permission();