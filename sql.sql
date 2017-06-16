/*��Ʒ����*/
CREATE TABLE it_type (
  id        TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT
  COMMENT '����id',
  type_name VARCHAR(32) NOT NULL
  COMMENT '��Ʒ��������',
  INDEX (type_name)
)
  ENGINE = myisam
  CHARSET = utf8;


/*���Ա�*/
CREATE TABLE it_attribute (
  id              SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT
  COMMENT '����id',
  type_id         TINYINT UNSIGNED NOT NULL
  COMMENT '��Ʒ����id',
  attr_name       VARCHAR(32)      NOT NULL
  COMMENT '���Ե�����',
  attr_type       TINYINT          NOT NULL     DEFAULT 0
  COMMENT '���Ե�����0��ʾΨһ����1��ʾ��ѡ����',
  attr_input_type TINYINT          NOT NULL     DEFAULT 0
  COMMENT '���Ե�¼�뷽ʽ0��ʾ�ֹ�¼��1��ʾ�б�ѡ��',
  attr_value      VARCHAR(64)      NOT NULL     DEFAULT ''
  COMMENT '��ѡֵ�б�'
)
  ENGINE = myisam
  CHARSET = utf8;

/*��Ʒ���ࣨ��Ŀ��*/
CREATE TABLE it_category (
  id        SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT
  COMMENT '��Ŀ����id',
  cat_name  VARCHAR(32)       NOT NULL
  COMMENT '��Ŀ������',
  parent_id SMALLINT UNSIGNED NOT NULL    DEFAULT 0
  COMMENT '������Ŀid'
)
  ENGINE = myisam
  CHARSET = utf8;


/*��Ʒ��*/
CREATE TABLE it_goods (
  id           SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT
  COMMENT '��Ʒid',
  goods_name   VARCHAR(32)       NOT NULL
  COMMENT '��Ʒ����',
  goods_sn     VARCHAR(32)       NOT NULL
  COMMENT '��Ʒ����',
  cat_id       SMALLINT UNSIGNED NOT NULL
  COMMENT '��Ʒ������Ŀid',
  shop_price   DECIMAL(9, 2)     NOT NULL    DEFAULT 0
  COMMENT '��Ʒ�ı���۸�',
  market_price DECIMAL(9, 2)     NOT NULL    DEFAULT 0
  COMMENT '��Ʒ���г��۸�',
  goods_thumb  VARCHAR(80)       NOT NULL    DEFAULT ''
  COMMENT 'Сͼ·��',
  goods_img    VARCHAR(80)       NOT NULL    DEFAULT ''
  COMMENT '��ͼ·��',
  goods_ori    VARCHAR(80)       NOT NULL    DEFAULT ''
  COMMENT 'ԭͼ·��',
  is_new       TINYINT           NOT NULL    DEFAULT 0
  COMMENT '�Ƿ�����Ʒ  0��ʾ������Ʒ 1��ʾ��Ʒ',
  is_hot       TINYINT           NOT NULL    DEFAULT 0
  COMMENT '�Ƿ�������Ʒ0��ʾ��������Ʒ 1��ʾ������Ʒ',
  is_best      TINYINT           NOT NULL    DEFAULT 0
  COMMENT '�Ƿ��Ǿ�Ʒ 0��ʾ���Ǿ�Ʒ 1��ʾ�Ǿ�Ʒ',
  is_sale      TINYINT           NOT NULL    DEFAULT 0
  COMMENT '�Ƿ��ϼ�   0��ʾ�����ϼ� 1��ʾ�ϼ�',
  is_delete    TINYINT           NOT NULL    DEFAULT 0
  COMMENT '�Ƿ�ɾ�� 0��ʾ����ɾ�� 1��ʾɾ��',
  goods_type   TINYINT           NOT NULL    DEFAULT 0
  COMMENT '������Ʒ���͵�id',
  goods_desc   VARCHAR(256)      NOT NULL    DEFAULT ''
  COMMENT '��Ʒ����',
  goods_number SMALLINT          NOT NULL    DEFAULT 1

  COMMENT '��Ʒ���',
  goods_sales  SMALLINT          NOT NULL    DEFAULT 88
  COMMENT '��Ʒ����',
  add_time     INT               NOT NULL    DEFAULT 0
  COMMENT '���ʱ��',
  update_time  INT               NOT NULL    DEFAULT 0
  COMMENT '�޸�ʱ��'
)
  ENGINE = myisam
  CHARSET = utf8;

/*����*/
CREATE TABLE it_goods_album (
  id          SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT
  COMMENT '����id',
  goods_id    SMALLINT UNSIGNED NOT NULL
  COMMENT '��Ʒid',
  album_ori   VARCHAR(80)       NOT NULL    DEFAULT ''
  COMMENT '��Ʒ���ԭʼ��ַ',
  album_thumb VARCHAR(80)       NOT NULL    DEFAULT ''
  COMMENT '��Ʒ�������ͼ��ַ'
)
  ENGINE = myisam
  CHARSET = utf8;

/*��Ʒ�����м��*/
CREATE TABLE it_goods_attr (
  id         SMALLINT UNSIGNED PRIMARY KEY  AUTO_INCREMENT
  COMMENT '����id',
  goods_id   SMALLINT UNSIGNED NOT NULL
  COMMENT '��Ʒid',
  attr_id    SMALLINT UNSIGNED NOT NULL
  COMMENT '��Ʒ����id',
  attr_value VARCHAR(64)       NOT NULL     DEFAULT ''
  COMMENT '���Կ�ѡֵ�б�'

)
  ENGINE = myisam
  CHARSET = utf8;


/*Ȩ�ޱ�*/
CREATE TABLE it_privilege (
  id              SMALLINT UNSIGNED PRIMARY KEY                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       AUTO_INCREMENT
  COMMENT 'Ȩ������id',
  priv_name       VARCHAR(32)       NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   DEFAULT ''
  COMMENT 'Ȩ����',
  parent_id       SMALLINT UNSIGNED NOT NULL    DEFAULT 0
  COMMENT '����Ȩ��id',
  module_name     VARCHAR(32)       NOT NULL   DEFAULT ''
  COMMENT '��Ȩ�޶�Ӧ��ģ������',
  controller_name VARCHAR(32)       NOT NULL    DEFAULT ''
  COMMENT '��Ȩ�޶�Ӧ�Ŀ�����',
  action_name     VARCHAR(32)       NOT NULL  DEFAULT ''
  COMMENT '��Ȩ�޶�Ӧ�ķ�������'
)
  ENGINE = myisam
  CHARSET = utf8;

/*��ɫ��*/
CREATE TABLE it_role (
  id        SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT
  COMMENT '����id',
  role_name VARCHAR(32) NOT NULL
  COMMENT '��ɫ����'
)
  ENGINE = myisam
  CHARSET = utf8
  COMMENT '��ɫ��';

/*��ɫ��Ȩ���м��*/
CREATE TABLE it_role_privilege (
  id      SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT '����id',
  role_id SMALLINT UNSIGNED NOT NULL
  COMMENT '��ɫid',
  priv_id SMALLINT UNSIGNED NOT NULL
  COMMENT 'Ȩ��id'
)
  ENGINE = myisam
  CHARSET = utf8
  COMMENT '��ɫ��Ȩ���м��';

/*����Ա��*/
CREATE TABLE it_admin (
  id         SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT
  COMMENT '����Աid',
  admin_name VARCHAR(32) NOT NULL
  COMMENT '����Ա����',
  password   CHAR(32)    NOT NULL
  COMMENT '����Ա����',
  salt       VARCHAR(6)  NOT NULL
  COMMENT '������Կ'
)
  ENGINE = myisam
  CHARSET utf8
  COMMENT '����Ա��';

/*��ɫ�����Ա�м��*/
CREATE TABLE it_admin_role (
  id       SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT '����id',
  admin_id SMALLINT UNSIGNED NOT NULL
  COMMENT '����Աid',
  role_id  SMALLINT UNSIGNED NOT NULL
  COMMENT '��ɫid'
)
  ENGINE = myisam
  CHARSET = utf8
  COMMENT '��ɫ�����Ա�м��';

/* ���ﳵ��*/
CREATE TABLE it_cart (
  id            SMALLINT UNSIGNED          AUTO_INCREMENT PRIMARY KEY
  COMMENT '����id',
  goods_id      SMALLINT UNSIGNED NOT NULL
  COMMENT '��Ʒid',
  goods_attr_id VARCHAR(32)       NOT NULL DEFAULT ''
  COMMENT '��Ʒ������Ϣ,it_goods_attr ��id������û����Ÿ���',
  goods_count   SMALLINT UNSIGNED NOT NULL
  COMMENT '��������',
  admin_id      INT               NOT NULL
  COMMENT '��¼�û�id'
)
  ENGINE = myisam
  CHARSET = utf8
  COMMENT '���ﳵ��';

/*����������Ϣ��*/
CREATE TABLE it_order_info (
  id                 INT UNSIGNED                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           AUTO_INCREMENT PRIMARY KEY
  COMMENT '����id',
  order_sn    VARCHAR(32)        NOT NULL
  COMMENT '�������',
  order_amout DECIMAL(10, 2) NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                DEFAULT 0
  COMMENT '�����ܵĽ��',
  pay_status  TINYINT        NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                DEFAULT 0
  COMMENT '0��ʾδ֧��1��ʾ��֧��',
  admin_id    SMALLINT UNSIGNED NOT NULL
  COMMENT '�û�id',
  consignee_name VARCHAR(32)    NOT NULL
  COMMENT '�ջ�������',
  consignee_address VARCHAR(255) NOT NULL
  COMMENT '�ջ��˵�ַ',
  consignee_mobile  CHAR(11)     NOT NULL
  COMMENT '�ջ����ֻ���',
  shipping_type     VARCHAR(32)  NOT NULL
  COMMENT '���ͷ�ʽ',
  pay_type          VARCHAR(32)  NOT NULL
  COMMENT '֧����ʽ',
  order_created_time INT         NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   DEFAULT 0
  COMMENT '��������ʱ��',
  order_update_time  INT         NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   DEFAULT 0
  COMMENT '�����޸�ʱ��'
)
  ENGINE = myisam
  CHARSET = utf8
  COMMENT '����������Ϣ��';

/*������Ʒ�м��*/
CREATE TABLE it_order_goods (
  id            INT UNSIGNED         AUTO_INCREMENT PRIMARY KEY
  COMMENT '����id',
  order_id INT UNSIGNED     NOT NULL
  COMMENT '����id',
  goods_id INT UNSIGNED NOT NULL
  COMMENT '��Ʒid',
  goods_name VARCHAR(32) NOT NULL
  COMMENT '��Ʒ����',
  shop_price DECIMAL(9, 2) NOT NULL
  COMMENT '��Ʒ����',
  goods_attr_id VARCHAR(32) NOT NULL DEFAULT ''
  COMMENT '��Ʒ����',
  goods_count   TINYINT     NOT NULL DEFAULT 0
  COMMENT '��Ʒ��������'

)
  ENGINE = myisam
  CHARSET = utf8
  COMMENT '������Ʒ�м��';

/*�ջ��˱�*/
CREATE TABLE it_address (
  id                INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT '����id',
  admin_id INT                   NOT NULL
  COMMENT '�û�id',
  consignee_name VARCHAR(32) NOT NULL
  COMMENT '�ջ�������',
  consignee_address VARCHAR(255) NOT NULL
  COMMENT '�ջ��˵�ַ',
  consignee_mobile  CHAR(11)     NOT NULL
  COMMENT '�ջ����ֻ���'
)
  ENGINE myisam
  CHARSET utf8
  COMMENT '�ջ��˱�';

/*�û���*/
CREATE TABLE it_user (
  id                INT UNSIGNED PRIMARY KEY                                                                                                                                                                                                                                                                                                                                     AUTO_INCREMENT
  COMMENT '����id',
  user_name         VARCHAR(32)             NOT NULL
  COMMENT '�û���',
  user_pwd          CHAR(32)    NOT NULL
  COMMENT '�û�����',
  user_email        VARCHAR(40) NOT NULL
  COMMENT '�û�����',
  user_qq           VARCHAR(20) NOT NULL                                                                                                                                                                                                                                                                                                                                         DEFAULT ''
  COMMENT '�û�qq',
  user_phone        CHAR(32)    NOT NULL                                                                                                                                                                                                                                                                                                                                         DEFAULT ''
  COMMENT '�û��ֻ�����',
  user_status       TINYINT     NOT NULL                                                                                                                                                                                                                                                                                                                                         DEFAULT 1
  COMMENT '�û�״̬��1�û�����0�û�����',
  user_created_time INT         NOT NULL                                                                                                                                                                                                                                                                                                                                         DEFAULT 0
  COMMENT '�û�����ʱ��',
  user_money        DECIMAL(9, 2) DEFAULT 0 NOT NULL
  COMMENT '�û��˻����'
)
  ENGINE myisam
  CHARSET utf8
  COMMENT 'ǰ̨�û���';

/*������棩*/
CREATE TABLE it_product(
  id int UNSIGNED PRIMARY KEY AUTO_INCREMENT COMMENT '����id',
  goods_id int UNSIGNED NOT NULL COMMENT '��Ʒid',
  goods_attr_id VARCHAR(32) NOT NULL COMMENT '������Ϣ',
  goods_number int NOT NULL DEFAULT 0 COMMENT '���'
)ENGINE myisam CHARSET utf8 COMMENT '��Ʒ����棩';

