-- auto Generated on 2017-03-01 15:18:08 
-- DROP TABLE IF EXISTS my_user; 
CREATE TABLE my_user(
    id NUMBER(12) NOT NULL,
    cookie VARCHAR2(50) DEFAULT '' NOT NULL,
    type NUMBER(12) DEFAULT -1 NOT NULL,
    user_name VARCHAR2(50) DEFAULT '' NOT NULL,
    password VARCHAR2(50) DEFAULT '' NOT NULL,
    age NUMBER(12) DEFAULT -1 NOT NULL,
    remaining_amount NUMBER(13,4) DEFAULT -1 NOT NULL,
    add_time DATE DEFAULT SYSDATE NOT NULL,
    serial_id NUMBER(24) DEFAULT -1 NOT NULL,
    global_id NUMBER(24) DEFAULT -1 NOT NULL,
    update_time DATE DEFAULT SYSDATE NOT NULL,
    CONSTRAINT my_user_pk PRIMARY KEY (id));
create sequence my_user_seq start with 1 increment by 1 nomaxvalue;
create trigger my_user_trigger
before insert on my_user
for each row
   begin
     select my_user_seq.nextval into :new.id from dual;
   end;
