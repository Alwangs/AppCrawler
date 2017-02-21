/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/2/16 14:16:25                           */
/*==============================================================*/


drop table if exists Category;

drop table if exists Market;

drop table if exists Permission;

drop table if exists ThirdParty_Lib;

/*==============================================================*/
/* Table: Category                                              */
/*==============================================================*/
create table Category
(
   ID                   smallint not null,
   Name                 varchar(15),
   Description          varchar(100),
   primary key (ID)
);

alter table Category comment '���Ӱ�ȫ���ݲ�ͬ�г����ϵķ��࣬����ı���Լ�����';

/*==============================================================*/
/* Table: Market                                                */
/*==============================================================*/
create table Market
(
   ID                   int not null comment '�г�ID',
   Name                 varchar(20) not null comment '�г���������',
   Info                 varchar(500) comment '�������г��ı�������ʷ����ģ',
   AppNum               bigint comment '���ݿ��д洢�ĸ��г���Ӧ����Ŀ',
   Security             float comment '�Ը��г����ۺ�����',
   primary key (ID)
);

alter table Market comment '�ñ�洢ÿ���г��Ļ�����Ϣ�������г�Ϊ�������';

/*==============================================================*/
/* Table: Permission                                            */
/*==============================================================*/
create table Permission
(
   ID                   bigint not null comment 'Ȩ��ID',
   Name                 varchar(30) not null comment 'Ȩ��ȫ��',
   Abb                  varchar(10) comment 'Ȩ�޵���д',
   ZhDescription        varchar(100) comment 'Ȩ�޵���������',
   ProtectLevel         smallint comment 'Ȩ�޵ı����ȼ���0Normal��1Danger��2Signature��3��',
   fre                  float comment 'Ȩ��������Ӧ���е�ʹ��Ƶ��',
   creator              varchar(15) comment '�ƶ���Ȩ�޵Ļ������ٷ�ΪAndroid',
   primary key (ID)
);

alter table Permission comment 'Ȩ����Ϣ��һ��Ȩ�޶�Ӧһ����Ŀ�����ǵ�Ȩ�޵������Ϣ��';

/*==============================================================*/
/* Table: ThirdParty_Lib                                        */
/*==============================================================*/
create table ThirdParty_Lib
(
   ID                   int not null comment '����������Ŀ��ΨһID',
   Name                 varchar(20) comment '�������������',
   LibPackage           varchar(50) comment '��İ���',
   Type                 varchar(20) comment '����������',
   UsedTime             int comment '�ÿ��ڱ�ͳ�Ƶ�Ӧ�õ���ʹ�õĴ���',
   primary key (ID)
);

alter table ThirdParty_Lib comment '�����������Ϣ��';

/*©���Ҳ��Ǻܶ���������ûд~*/