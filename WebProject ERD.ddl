-- 생성자 Oracle SQL Developer Data Modeler 18.1.0.082.1041
--   위치:        2020-07-13 16:11:10 KST
--   사이트:      Oracle Database 11g
--   유형:      Oracle Database 11g

CREATE TABLE webaccount (
    account_num         NUMBER(3) NOT NULL,
    account_id          VARCHAR2(20) NOT NULL,
    account_password    VARCHAR2(20) NOT NULL,
    account_name        VARCHAR2(20) NOT NULL,
    account_email       VARCHAR2(20) NOT NULL,
    account_img         VARCHAR2(300 BYTE),
    account_phone_num   VARCHAR2(15),
    account_flag        NUMBER(5) NOT NULL
)
LOGGING;

drop table "COMMENT";

ALTER TABLE webaccount ADD CONSTRAINT account_pk PRIMARY KEY ( account_num );

ALTER TABLE webaccount ADD CONSTRAINT account_email_un UNIQUE ( account_email );

ALTER TABLE webaccount ADD CONSTRAINT account_id_un UNIQUE ( account_id );

ALTER TABLE webaccount ADD CONSTRAINT account_name_un UNIQUE ( account_name );

ALTER TABLE webaccount ADD CONSTRAINT account_phone_num_un UNIQUE ( account_phone_num );

CREATE TABLE webcomment(
    comment_seq     NUMBER(3) NOT NULL,
    post_num        NUMBER(5) NOT NULL,
    comment_ref     NUMBER(3) NOT NULL,
    comment_step    NUMBER(3) NOT NULL,
    comment_level   NUMBER(1) NOT NULL,
    account_name    VARCHAR2(20) NOT NULL
)
LOGGING;

ALTER TABLE webcomment ADD CONSTRAINT comment_pk PRIMARY KEY ( comment_seq );

CREATE TABLE follow (
    follow_seq    NUMBER(3) NOT NULL,
    account_num   NUMBER(3) NOT NULL,
    follow_id     VARCHAR2(20) NOT NULL
)
LOGGING;

ALTER TABLE follow ADD CONSTRAINT follow_pk PRIMARY KEY ( follow_seq );

CREATE TABLE post (
    post_num       NUMBER(5) NOT NULL,
    account_name   VARCHAR2(20) NOT NULL,
    post_content   VARCHAR2(500),
    post_img       VARCHAR2(300 BYTE) NOT NULL,
    post_like      NUMBER(5) NOT NULL,
    post_sysdate   DATE,
    post_flag      NUMBER(5) NOT NULL
)
LOGGING;

ALTER TABLE post ADD CONSTRAINT post_pk PRIMARY KEY ( post_num );

ALTER TABLE webcomment
    ADD CONSTRAINT comment_account_fk FOREIGN KEY ( account_name )
        REFERENCES webaccount ( account_name )
    NOT DEFERRABLE;

ALTER TABLE webcomment
    ADD CONSTRAINT comment_post_num_fk FOREIGN KEY ( post_num )
        REFERENCES post ( post_num )
    NOT DEFERRABLE;

ALTER TABLE follow
    ADD CONSTRAINT follow_account_num_fk FOREIGN KEY ( account_num )
        REFERENCES webaccount ( account_num )
    NOT DEFERRABLE;

ALTER TABLE post
    ADD CONSTRAINT post_account_name_fk FOREIGN KEY ( account_name )
        REFERENCES webaccount ( account_name )
    NOT DEFERRABLE;

create sequence webaccount_account_num_seq
    start with 1
    increment by 1
    nocache
    nocycle;
    
create sequence webcomment_comment_seq_seq
    start with 1
    increment by 1
    nocache
    nocycle;
    
create sequence post_post_num_seq
    start with 1
    increment by 1
    nocache
    nocycle;
    
create sequence follow_follow_seq_seq
    start with 1
    increment by 1
    nocache
    nocycle;

-- Oracle SQL Developer Data Modeler 요약 보고서: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                             12
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
