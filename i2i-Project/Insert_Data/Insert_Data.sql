INSERT INTO USER_INFO (USER_ID,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,PASS_WORD,BIRTHDATE,TC_NO)
    VALUES (SEQ_USER_ID.NEXTVAL,'YUNUS',      'ARSLAN',    '5514429999','yunusarslan11@gmail.com',      'Yunus12345' , '06/04/1995',  '11111111111');
INSERT INTO USER_INFO (USER_ID,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,PASS_WORD,BIRTHDATE,TC_NO)
    VALUES (SEQ_USER_ID.NEXTVAL,'TOLGA',      'CATALPINAR','5552239999','tcatal99@hotmail.com',         'Tolga12345', '06/04/1995',   '22222222222');
INSERT INTO USER_INFO (USER_ID,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,PASS_WORD,BIRTHDATE,TC_NO)
    VALUES (SEQ_USER_ID.NEXTVAL,'AYSEGUL',    'KARAHANCER','5511919999','aysegulkarahancer@gmail.com',  'Aysegul12345', '06/04/1995', '33333333333');
INSERT INTO USER_INFO (USER_ID,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,PASS_WORD,BIRTHDATE,TC_NO)
    VALUES (SEQ_USER_ID.NEXTVAL,'GIZEMNUR',   'TASKIN',    '5533709999','gizemnurtaskin@gmail.com',     'Gizem12345', '06/04/1995',   '44444444444');
INSERT INTO USER_INFO (USER_ID,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,PASS_WORD,BIRTHDATE,TC_NO)
    VALUES (SEQ_USER_ID.NEXTVAL,'MELIH SINAN','DOGRUL',    '5399679999','dogrulms@gmail.com',           'Melih12345', '06/04/1995','55555555555');
INSERT INTO USER_INFO (USER_ID,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,PASS_WORD,BIRTHDATE,TC_NO)
    VALUES (SEQ_USER_ID.NEXTVAL,'SERVET',     'TARTAR',    '5349729999','servettartar@gmail.com',       'Servet12345', '06/04/1995',  '66666666666');
INSERT INTO USER_INFO (USER_ID,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,PASS_WORD,BIRTHDATE,TC_NO)
    VALUES (SEQ_USER_ID.NEXTVAL,'EREN',       'YALCIN',    '5380689999','yalcineren97@gmail.com',       'Eren12345', '06/04/1995',    '77777777777');
INSERT INTO USER_INFO (USER_ID,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,PASS_WORD,BIRTHDATE,TC_NO)
    VALUES (SEQ_USER_ID.NEXTVAL,'OZGE NUR',   'KOC',       '5077189999','ozge.nur1997@hotmail.com',     'Ozgenur12345', '06/04/1995', '88888888888');
INSERT INTO USER_INFO (USER_ID,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,PASS_WORD,BIRTHDATE,TC_NO)
    VALUES (SEQ_USER_ID.NEXTVAL,'UMIT',       'ATILGAN',   '5316259999','umitatlgn@gmail.com',          'Umit12345', '06/04/1995',    '99999999999');
INSERT INTO USER_INFO (USER_ID,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,PASS_WORD,BIRTHDATE,TC_NO)
    VALUES (SEQ_USER_ID.NEXTVAL,'BEYTULLAH',  'ATIK',      '5315509999','atikbeytullah@gmail.com',      'Beytullah12345', '06/04/1995','12121212121');
INSERT INTO USER_INFO (USER_ID,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,PASS_WORD,BIRTHDATE,TC_NO)
    VALUES (SEQ_USER_ID.NEXTVAL,'DAVUT',      'KURT',      '5377399999','davut.wolf@gmail.com',         'Davut12345', '06/04/1995',   '13131313131');
INSERT INTO USER_INFO (USER_ID,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,PASS_WORD,BIRTHDATE,TC_NO)
    VALUES (SEQ_USER_ID.NEXTVAL,'OGUZHAN',    'SAHIN',     '5317719999','oguuzhansahiin@gmail.com',     'Oguzhan12345', '06/04/1995', '14141414141');
INSERT INTO USER_INFO (USER_ID,FIRST_NAME,LAST_NAME,PHONE_NUMBER,EMAIL,PASS_WORD,BIRTHDATE,TC_NO)
    VALUES (SEQ_USER_ID.NEXTVAL,'TUNAHAN',    'TOK',       '5412989999','tunahantok60@gmail.com',       'Tunahan12345', '06/04/1995', '15151515151');
    
    
                        
INSERT INTO PACK_DEF (PACKAGE_ID,PACKAGE_NAME,DATA_GB,VOICE,SMS)
    VALUES (SEQ_PACKAGE_ID.NEXTVAL,'SOCIAL ECO',       4,  500,    200);
INSERT INTO PACK_DEF (PACKAGE_ID,PACKAGE_NAME,DATA_GB,VOICE,SMS)
    VALUES (SEQ_PACKAGE_ID.NEXTVAL,'SOCIAL PLUS',      6,  750,    500);
INSERT INTO PACK_DEF (PACKAGE_ID,PACKAGE_NAME,DATA_GB,VOICE,SMS)
    VALUES (SEQ_PACKAGE_ID.NEXTVAL,'INTERN SPECIAL',   10, 1000,   1000);
INSERT INTO PACK_DEF (PACKAGE_ID,PACKAGE_NAME,DATA_GB,VOICE,SMS)
    VALUES (SEQ_PACKAGE_ID.NEXTVAL,'YOUNG15',          15, 1500,   1500);
INSERT INTO PACK_DEF (PACKAGE_ID, PACKAGE_NAME, DATA_GB, VOICE, SMS)
    VALUES (SEQ_PACKAGE_ID.NEXTVAL, 'DEFAULT',          1, 100,     100);
    
    
    
INSERT INTO USER_PKG_BALANCE (USER_ID,PACKAGE_ID,BILL_PERIOD,DATA_GB_BAL,VOICE_BAL,SMS_BAL,PHONE_NUMBER)
    VALUES (1,  10, 1, 1,  100,    100 ,  '5514429999');
INSERT INTO USER_PKG_BALANCE (USER_ID,PACKAGE_ID,BILL_PERIOD,DATA_GB_BAL,VOICE_BAL,SMS_BAL,PHONE_NUMBER)
    VALUES (2,  6, 12, 4,  500,    200 ,  '5552239999');
INSERT INTO USER_PKG_BALANCE (USER_ID,PACKAGE_ID,BILL_PERIOD,DATA_GB_BAL,VOICE_BAL,SMS_BAL,PHONE_NUMBER)
    VALUES (3,  8, 1,  10, 1000,   1000 , '5511919999');
INSERT INTO USER_PKG_BALANCE (USER_ID,PACKAGE_ID,BILL_PERIOD,DATA_GB_BAL,VOICE_BAL,SMS_BAL,PHONE_NUMBER)
    VALUES (4,  6, 12, 4,  500,    200 ,  '5533709999');
INSERT INTO USER_PKG_BALANCE (USER_ID,PACKAGE_ID,BILL_PERIOD,DATA_GB_BAL,VOICE_BAL,SMS_BAL,PHONE_NUMBER)
    VALUES (5,  9, 12, 15, 1500,   1500 , '5399679999');
INSERT INTO USER_PKG_BALANCE (USER_ID,PACKAGE_ID,BILL_PERIOD,DATA_GB_BAL,VOICE_BAL,SMS_BAL,PHONE_NUMBER)
    VALUES (6,  9, 12, 15, 1500,   1500 , '5349729999');
INSERT INTO USER_PKG_BALANCE (USER_ID,PACKAGE_ID,BILL_PERIOD,DATA_GB_BAL,VOICE_BAL,SMS_BAL,PHONE_NUMBER)
    VALUES (7,  6, 10, 4,  500,    200 ,  '5380689999');
INSERT INTO USER_PKG_BALANCE (USER_ID,PACKAGE_ID,BILL_PERIOD,DATA_GB_BAL,VOICE_BAL,SMS_BAL,PHONE_NUMBER)
    VALUES (8,  8, 7,  10, 1000,   1000 , '5077189999');
INSERT INTO USER_PKG_BALANCE (USER_ID,PACKAGE_ID,BILL_PERIOD,DATA_GB_BAL,VOICE_BAL,SMS_BAL,PHONE_NUMBER)
    VALUES (9,  7, 1,  6,  750,    500 ,  '5316259999');
INSERT INTO USER_PKG_BALANCE (USER_ID,PACKAGE_ID,BILL_PERIOD,DATA_GB_BAL,VOICE_BAL,SMS_BAL,PHONE_NUMBER)
    VALUES (10, 9, 12, 15, 1500,   1500 , '5315509999');
INSERT INTO USER_PKG_BALANCE (USER_ID,PACKAGE_ID,BILL_PERIOD,DATA_GB_BAL,VOICE_BAL,SMS_BAL,PHONE_NUMBER)
    VALUES (11, 7, 12, 6,  750,    500 ,  '5377399999');
INSERT INTO USER_PKG_BALANCE (USER_ID,PACKAGE_ID,BILL_PERIOD,DATA_GB_BAL,VOICE_BAL,SMS_BAL,PHONE_NUMBER)
    VALUES (12, 8, 1,  10, 1000,   1000 , '5317719999');
INSERT INTO USER_PKG_BALANCE (USER_ID,PACKAGE_ID,BILL_PERIOD,DATA_GB_BAL,VOICE_BAL,SMS_BAL,PHONE_NUMBER)
    VALUES (13, 7, 24, 6,  750,    500 ,  '5412989999');



INSERT INTO SUBSCRIPTION (USER_ID,PACKAGE_ID,SDATE,EDATE)
    VALUES (1, 2, '25/06/2019', '25/06/2020');
INSERT INTO SUBSCRIPTION (USER_ID,PACKAGE_ID,SDATE,EDATE)
    VALUES (2, 1, '20/05/2019', '20/05/2020');
INSERT INTO SUBSCRIPTION (USER_ID,PACKAGE_ID,SDATE,EDATE)
    VALUES (3, 3, '05/06/2019', '05/07/2019');
INSERT INTO SUBSCRIPTION (USER_ID,PACKAGE_ID,SDATE,EDATE)
    VALUES (4, 1, '15/04/2019', '15/04/2020');
INSERT INTO SUBSCRIPTION (USER_ID,PACKAGE_ID,SDATE,EDATE)
    VALUES (5, 4, '21/06/2019', '21/06/2020');
INSERT INTO SUBSCRIPTION (USER_ID,PACKAGE_ID,SDATE,EDATE)
    VALUES (6, 4, '25/09/2019', '25/09/2020');
INSERT INTO SUBSCRIPTION (USER_ID,PACKAGE_ID,SDATE,EDATE)
    VALUES (7, 1, '25/10/2018', '25/08/2019');
INSERT INTO SUBSCRIPTION (USER_ID,PACKAGE_ID,SDATE,EDATE)
    VALUES (8, 3, '25/06/2019', '25/01/2020');
INSERT INTO SUBSCRIPTION (USER_ID,PACKAGE_ID,SDATE,EDATE)
    VALUES (9, 2, '25/06/2019', '25/07/2020');
INSERT INTO SUBSCRIPTION (USER_ID,PACKAGE_ID,SDATE,EDATE)
    VALUES (10,4, '25/06/2019', '25/06/2020');
INSERT INTO SUBSCRIPTION (USER_ID,PACKAGE_ID,SDATE,EDATE)
    VALUES (11, 2, '25/11/2018', '25/11/2019');
INSERT INTO SUBSCRIPTION (USER_ID,PACKAGE_ID,SDATE,EDATE)
    VALUES (12, 3, '25/06/2019', '25/07/2020');
INSERT INTO SUBSCRIPTION (USER_ID,PACKAGE_ID,SDATE,EDATE)
    VALUES (13, 2, '01/01/2019', '01/01/2021');



INSERT INTO REMAIN_BALANCE (PHONE_NUMBER,GB_REM,MINUTE_REM,SMS_REM)
    VALUES ('5514429999', 1, 100, 100);
INSERT INTO REMAIN_BALANCE (PHONE_NUMBER,GB_REM,MINUTE_REM,SMS_REM)
    VALUES ('5552239999', 4, 500, 200);
INSERT INTO REMAIN_BALANCE (PHONE_NUMBER,GB_REM,MINUTE_REM,SMS_REM)
    VALUES ('5511919999', 10, 1000, 1000);
INSERT INTO REMAIN_BALANCE (PHONE_NUMBER,GB_REM,MINUTE_REM,SMS_REM)
    VALUES ('5533709999', 4, 500, 200);
INSERT INTO REMAIN_BALANCE (PHONE_NUMBER,GB_REM,MINUTE_REM,SMS_REM)
    VALUES ('5399679999', 15, 1500, 1500);
INSERT INTO REMAIN_BALANCE (PHONE_NUMBER,GB_REM,MINUTE_REM,SMS_REM)
    VALUES ('5349729999', 15, 1500, 1500);
INSERT INTO REMAIN_BALANCE (PHONE_NUMBER,GB_REM,MINUTE_REM,SMS_REM)
    VALUES ('5380689999', 4, 500, 200);
INSERT INTO REMAIN_BALANCE (PHONE_NUMBER,GB_REM,MINUTE_REM,SMS_REM)
    VALUES ('5077189999', 10, 1000, 1000);
INSERT INTO REMAIN_BALANCE (PHONE_NUMBER,GB_REM,MINUTE_REM,SMS_REM)
    VALUES ('5316259999', 6, 750, 500);
INSERT INTO REMAIN_BALANCE (PHONE_NUMBER,GB_REM,MINUTE_REM,SMS_REM)
    VALUES ('5315509999', 15, 1500, 1500);
INSERT INTO REMAIN_BALANCE (PHONE_NUMBER,GB_REM,MINUTE_REM,SMS_REM)
    VALUES ('5377399999', 6, 750, 500);
