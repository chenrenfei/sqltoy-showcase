/*==============================================================*/
/* Table: SQLTOY_DICT_DETAIL                                    */
/*==============================================================*/
CREATE TABLE SQLTOY_DICT_DETAIL
(
   DICT_KEY             VARCHAR(50) NOT NULL  COMMENT '�ֵ�KEY',
   DICT_TYPE            VARCHAR(50) NOT NULL  COMMENT '�ֵ����ʹ���',
   DICT_NAME            VARCHAR(200) NOT NULL  COMMENT '�ֵ�ֵ',
   SHOW_INDEX           NUMERIC(8,0) NOT NULL DEFAULT 1  COMMENT '��ʾ˳��',
   UPDATE_BY            VARCHAR(22) NOT NULL  COMMENT '����޸���',
   UPDATE_TIME          DATETIME NOT NULL  COMMENT '����޸�ʱ��',
   STATUS               NUMERIC(1,0) NOT NULL DEFAULT 1  COMMENT '״̬',
   PRIMARY KEY (DICT_KEY, DICT_TYPE)
);

ALTER TABLE SQLTOY_DICT_DETAIL COMMENT '�ֵ���ϸ��';

/*==============================================================*/
/* Table: SQLTOY_DICT_TYPE                                      */
/*==============================================================*/
CREATE TABLE SQLTOY_DICT_TYPE
(
   DICT_TYPE            VARCHAR(50) NOT NULL  COMMENT '�ֵ����ʹ���',
   DICT_TYPE_NAME       VARCHAR(100) NOT NULL  COMMENT '�ֵ���������',
   COMMENTS             VARCHAR(500)  COMMENT '˵��',
   SHOW_INDEX           NUMERIC(8,0) NOT NULL DEFAULT 1  COMMENT '��ʾ˳��',
   CREATE_BY            VARCHAR(22) NOT NULL  COMMENT '������',
   CREATE_TIME          DATETIME NOT NULL  COMMENT '����ʱ��',
   UPDATE_BY            VARCHAR(22) NOT NULL  COMMENT '����޸���',
   UPDATE_TIME          DATETIME NOT NULL  COMMENT '����޸�ʱ��',
   STATUS               NUMERIC(1,0) NOT NULL DEFAULT 1  COMMENT '״̬',
   PRIMARY KEY (DICT_TYPE)
);

ALTER TABLE SQLTOY_DICT_TYPE COMMENT '�ֵ�����';

/*==============================================================*/
/* Table: SQLTOY_ORGAN_INFO                                     */
/*==============================================================*/
CREATE TABLE SQLTOY_ORGAN_INFO
(
   ORGAN_ID             VARCHAR(22) NOT NULL  COMMENT '����ID',
   ORGAN_NAME           VARCHAR(100) NOT NULL  COMMENT '��������',
   ORGAN_CODE           VARCHAR(20) NOT NULL  COMMENT '��������',
   COST_NO              VARCHAR(20)  COMMENT '�ɱ����Ĵ���',
   ORGAN_PID            VARCHAR(22) NOT NULL  COMMENT '������ID',
   NODE_ROUTE           VARCHAR(200)  COMMENT '�ڵ�·��',
   NODE_LEVEL           NUMERIC(1,0)  COMMENT '�ڵ�ȼ�',
   IS_LEAF              NUMERIC(1,0)  COMMENT '�Ƿ�Ҷ�ӽڵ�',
   SHOW_INDEX           NUMERIC(8,0) NOT NULL DEFAULT 1  COMMENT '��ʾ˳��',
   CREATE_BY            VARCHAR(22) NOT NULL  COMMENT '������',
   CREATE_TIME          DATETIME NOT NULL  COMMENT '����ʱ��',
   UPDATE_BY            VARCHAR(22) NOT NULL  COMMENT '����޸���',
   UPDATE_TIME          DATETIME NOT NULL  COMMENT '����޸�ʱ��',
   STATUS               NUMERIC(1,0) NOT NULL DEFAULT 1  COMMENT '״̬',
   PRIMARY KEY (ORGAN_ID)
);

ALTER TABLE SQLTOY_ORGAN_INFO COMMENT '������Ϣ��';

/*==============================================================*/
/* Index: IDX_ORGAN_CODE                                        */
/*==============================================================*/
CREATE UNIQUE INDEX IDX_ORGAN_CODE ON SQLTOY_ORGAN_INFO
(
   ORGAN_CODE
);

/*==============================================================*/
/* Table: SQLTOY_STAFF_INFO                                     */
/*==============================================================*/
CREATE TABLE SQLTOY_STAFF_INFO
(
   STAFF_ID             VARCHAR(22) NOT NULL  COMMENT 'Ա��ID',
   STAFF_CODE           VARCHAR(22) NOT NULL  COMMENT '����',
   STAFF_NAME           VARCHAR(30) NOT NULL  COMMENT '����',
   ORGAN_ID             VARCHAR(22) NOT NULL  COMMENT '����',
   SEX_TYPE             CHAR(1) NOT NULL  COMMENT '�Ա�',
   BIRTHDAY             DATETIME  COMMENT '��������',
   ENTRY_DATE           DATETIME NOT NULL  COMMENT '��ְ����',
   TERM_DATE            DATETIME  COMMENT '��ְ����',
   PHOTO                LONGBLOB  COMMENT '��Ƭ',
   COUNTRY              VARCHAR(10)  COMMENT '����',
   CENSUS_REGISTER      VARCHAR(150)  COMMENT '����',
   ADDRESS              VARCHAR(250)  COMMENT '��ͥ��ַ',
   EMAIL                VARCHAR(100)  COMMENT '����',
   TEL_NO               VARCHAR(20)  COMMENT '�ƶ��绰',
   POST                 VARCHAR(20)  COMMENT '��λ',
   POST_GRADE           VARCHAR(20)  COMMENT 'ְλ����',
   CREATE_BY            VARCHAR(22) NOT NULL  COMMENT '������',
   CREATE_TIME          DATETIME NOT NULL  COMMENT '����ʱ��',
   UPDATE_BY            VARCHAR(22) NOT NULL  COMMENT '����޸���',
   UPDATE_TIME          DATETIME NOT NULL  COMMENT '����޸�ʱ��',
   STATUS               NUMERIC(1,0) NOT NULL DEFAULT 1  COMMENT '״̬',
   PRIMARY KEY (STAFF_ID)
);

ALTER TABLE SQLTOY_STAFF_INFO COMMENT 'Ա����Ϣ��';

/*==============================================================*/
/* Index: IDX_STAFF_CODE                                        */
/*==============================================================*/
CREATE UNIQUE INDEX IDX_STAFF_CODE ON SQLTOY_STAFF_INFO
(
   STAFF_CODE
);

ALTER TABLE SQLTOY_DICT_DETAIL ADD CONSTRAINT FK_DICT_TYPE_REF_ITEM FOREIGN KEY (DICT_TYPE)
      REFERENCES SQLTOY_DICT_TYPE (DICT_TYPE) ON DELETE RESTRICT ON UPDATE RESTRICT;
	  
INSERT INTO sqltoy.sqltoy_dict_type (DICT_TYPE,DICT_TYPE_NAME,COMMENTS,SHOW_INDEX,CREATE_BY,CREATE_TIME,UPDATE_BY,UPDATE_TIME,STATUS) VALUES 
('COMPANY_TYPE','��ҵ����','��ҵ����',1,'S0001','2019-08-01 16:47:01','S0001','2019-08-01 16:47:01',1)
,('DEVICE_TYPE','�豸����','�豸����',1,'S0001','2019-08-01 16:47:01','S0001','2019-08-01 16:47:01',1)
,('ORDER_STATUS','����״̬','����״̬',3,'S0001','2019-08-01 16:47:01','S0001','2019-08-01 16:47:01',1)
,('POST_LEVEL','��λ����','��λ����',5,'S0001','2019-08-01 16:47:01','S0001','2019-08-01 16:47:01',1)
,('POST_TYPE','��λ���','��λ���',4,'S0001','2019-08-01 16:47:01','S0001','2019-08-01 16:47:01',1)
,('PURCHASE_SALE_TYPE','�ɹ����۷���','�ɹ����۷���',2,'S0001','2019-08-01 16:47:01','S0001','2019-08-01 16:47:01',1)
,('SEX_TYPE','�Ա�','�Ա�',6,'S0001','2019-08-01 16:47:01','S0001','2019-08-01 16:47:01',1)
,('TRANS_CHANNEL','��������','��������',7,'S0001','2019-08-01 16:47:01','S0001','2019-08-01 16:47:01',1)
,('TRANS_CODE','���״����','���״����',8,'S0001','2019-08-01 16:47:01','S0001','2019-08-01 16:47:01',1)
,('TRANS_TYPE','��������','��������',8,'S0001','2019-08-01 16:47:01','S0001','2019-08-01 16:47:01',1)
;


INSERT INTO sqltoy.sqltoy_dict_detail (DICT_KEY,DICT_TYPE,DICT_NAME,SHOW_INDEX,UPDATE_BY,UPDATE_TIME,STATUS) VALUES 
('0','ORDER_STATUS','����',1,'S0001','2019-08-01 16:47:01',1)
,('012001','TRANS_CODE','���ǿ�����',5,'S0001','2019-08-01 16:47:01',1)
,('012401','TRANS_CODE','��ǿ�����',6,'S0001','2019-08-01 16:47:01',1)
,('1','COMPANY_TYPE','�ɷ���',1,'S0001','2019-08-01 16:47:01',1)
,('1','ORDER_STATUS','�༭',2,'S0001','2019-08-01 16:47:01',1)
,('2','COMPANY_TYPE','������ҵ',2,'S0001','2019-08-01 16:47:01',1)
,('2','ORDER_STATUS','�����',3,'S0001','2019-08-01 16:47:01',1)
,('3','ORDER_STATUS','����Ч',4,'S0001','2019-08-01 16:47:01',1)
,('D','TRANS_TYPE','΢�Ž���',2,'S0001','2019-08-01 16:47:01',1)
,('F','POST_TYPE','ְ�ܸ�',3,'S0001','2019-08-01 16:47:01',1)
;
INSERT INTO sqltoy.sqltoy_dict_detail (DICT_KEY,DICT_TYPE,DICT_NAME,SHOW_INDEX,UPDATE_BY,UPDATE_TIME,STATUS) VALUES 
('F','SEX_TYPE','Ů',1,'S0001','2019-08-01 16:47:01',1)
,('JD','TRANS_CHANNEL','����',1,'S0001','2019-08-01 16:47:01',1)
,('L1','POST_LEVEL','L1',1,'S0001','2019-08-01 16:47:01',1)
,('L10','POST_LEVEL','L10',10,'S0001','2019-08-01 16:47:01',1)
,('L2','POST_LEVEL','L2',2,'S0001','2019-08-01 16:47:01',1)
,('L3','POST_LEVEL','L3',3,'S0001','2019-08-01 16:47:01',1)
,('L4','POST_LEVEL','L4',4,'S0001','2019-08-01 16:47:01',1)
,('L5','POST_LEVEL','L5',5,'S0001','2019-08-01 16:47:01',1)
,('L6','POST_LEVEL','L6',6,'S0001','2019-08-01 16:47:01',1)
,('L7','POST_LEVEL','L7',7,'S0001','2019-08-01 16:47:01',1)
;
INSERT INTO sqltoy.sqltoy_dict_detail (DICT_KEY,DICT_TYPE,DICT_NAME,SHOW_INDEX,UPDATE_BY,UPDATE_TIME,STATUS) VALUES 
('L8','POST_LEVEL','L8',8,'S0001','2019-08-01 16:47:01',1)
,('L9','POST_LEVEL','L9',9,'S0001','2019-08-01 16:47:01',1)
,('M','POST_TYPE','�����',1,'S0001','2019-08-01 16:47:01',1)
,('M','SEX_TYPE','��',2,'S0001','2019-08-01 16:47:01',1)
,('N','TRANS_TYPE','��ͨ����',1,'S0001','2019-08-01 16:47:01',1)
,('NET','DEVICE_TYPE','�����豸',2,'S0001','2019-08-01 16:47:01',1)
,('O','POST_TYPE','����',4,'S0001','2019-08-01 16:47:01',1)
,('OFFICE','DEVICE_TYPE','�칫��Ʒ',3,'S0001','2019-08-01 16:47:01',1)
,('OT','DEVICE_TYPE','����',5,'S0001','2019-08-01 16:47:01',1)
,('PC','DEVICE_TYPE','���˵���',1,'S0001','2019-08-01 16:47:01',1)
;
INSERT INTO sqltoy.sqltoy_dict_detail (DICT_KEY,DICT_TYPE,DICT_NAME,SHOW_INDEX,UPDATE_BY,UPDATE_TIME,STATUS) VALUES 
('PO','PURCHASE_SALE_TYPE','�ɹ�',1,'S0001','2019-08-01 16:47:01',1)
,('SHOP','TRANS_CHANNEL','�����ŵ�',3,'S0001','2019-08-01 16:47:01',1)
,('SO','PURCHASE_SALE_TYPE','����',2,'S0001','2019-08-01 16:47:01',1)
,('SOFTWARE','DEVICE_TYPE','���',4,'S0001','2019-08-01 16:47:01',1)
,('T','POST_TYPE','������',2,'S0001','2019-08-01 16:47:01',1)
,('T001','TRANS_CODE','�µ�',1,'S0001','2019-08-01 16:47:01',1)
,('T002','TRANS_CODE','����',2,'S0001','2019-08-01 16:47:01',1)
,('T003','TRANS_CODE','����',3,'S0001','2019-08-01 16:47:01',1)
,('T004','TRANS_CODE','������ѯ',4,'S0001','2019-08-01 16:47:01',1)
,('TIANMAO','TRANS_CHANNEL','��è',2,'S0001','2019-08-01 16:47:01',1)
;
