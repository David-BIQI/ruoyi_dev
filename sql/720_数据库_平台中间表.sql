drop table if exists sys_platform_paymentmethods;

drop table if exists sys_platform_prohibitioncountry;

drop table if exists sys_platform_securityquestion;

drop table if exists sys_platformtype_prohibicountry;

/*==============================================================*/
/* Table: sys_platform_paymentmethods                           */
/*==============================================================*/
create table sys_platform_paymentmethods
(
   id                   int not null auto_increment comment '编号',
   platform_id          varchar(256) not null comment '平台类型的编号',
   payment_id           int not null comment '支付方式编号',
   status               int(1) not null default 0 comment '状态',
   create_time          datetime default CURRENT_TIMESTAMP comment '创建时间',
   create_by            varchar(64) default ' ' comment '创建者',
   update_time          datetime default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '更新时间',
   update_by            varchar(64) default ' ' comment '更新者',
   remark               varchar(256) default ' ' comment '备注',
   primary key (id)
);

alter table sys_platform_paymentmethods comment '平台支付方式_中间表';

/*==============================================================*/
/* Table: sys_platform_prohibitioncountry                       */
/*==============================================================*/
create table sys_platform_prohibitioncountry
(
   id                   int not null auto_increment comment '编号',
   platform_id          varchar(256) not null comment '平台类型的编号',
   country_id           int not null comment '国家的编号',
   status               int(1) not null default 0 comment '状态',
   create_time          datetime default CURRENT_TIMESTAMP comment '创建时间',
   create_by            varchar(64) default ' ' comment '创建者',
   update_time          datetime default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '更新时间',
   update_by            varchar(64) default ' ' comment '更新者',
   remark               varchar(256) default ' ' comment '备注',
   primary key (id)
);

alter table sys_platform_prohibitioncountry comment '平台禁止国家_中间表';

/*==============================================================*/
/* Table: sys_platform_securityquestion                         */
/*==============================================================*/
create table sys_platform_securityquestion
(
   id                   int not null auto_increment comment '编号',
   platform_id          varchar(256) not null comment '平台类型的编号',
   question             varchar(512) not null comment '问题',
   answer               varchar(256) not null comment '答案',
   status               int(1) not null default 0 comment '状态',
   create_time          datetime default CURRENT_TIMESTAMP comment '创建时间',
   create_by            varchar(64) default ' ' comment '创建者',
   update_time          datetime default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '更新时间',
   update_by            varchar(64) default ' ' comment '更新者',
   remark               varchar(256) default ' ' comment '备注',
   primary key (id)
);

alter table sys_platform_securityquestion comment '平台安全问题';

/*==============================================================*/
/* Table: sys_platformtype_prohibicountry                       */
/*==============================================================*/
create table sys_platformtype_prohibicountry
(
   id                   int not null auto_increment comment '编号',
   platform_type_id     varchar(256) not null comment '平台类型的编号',
   country_id           int not null comment '国家编号',
   status               int(1) not null default 0 comment '状态',
   create_time          datetime default CURRENT_TIMESTAMP comment '创建时间',
   create_by            varchar(64) default ' ' comment '创建者',
   update_time          datetime default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP comment '更新时间',
   update_by            varchar(64) default ' ' comment '更新者',
   remark               varchar(256) default ' ' comment '备注',
   primary key (id)
);

alter table sys_platformtype_prohibicountry comment '平台类型禁止的国家_中间表';
