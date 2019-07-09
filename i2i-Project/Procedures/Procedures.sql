CREATE OR REPLACE PROCEDURE CHECK_USER( PIS_PHONE IN VARCHAR2, 
                                        PIS_PASS IN VARCHAR2, 
                                        CHECKER OUT NUMBER) IS
V_COUNT NUMBER :=0;
BEGIN
    SELECT COUNT(*)INTO V_COUNT FROM USER_INFO WHERE PASS_WORD=MD5_HASH(PIS_PASS) AND PHONE_NUMBER=PIS_PHONE;
    IF (V_COUNT=0) THEN
    CHECKER:=0;
    DBMS_OUTPUT.PUT_LINE(V_COUNT);
    ELSE
    DBMS_OUTPUT.PUT_LINE(V_COUNT);
    CHECKER:=1;
    END IF;
END CHECK_USER;
/


CREATE OR REPLACE PROCEDURE GET_BALANCES(   PIS_PHONE IN VARCHAR2, 
                                            REMAIN_GB OUT NUMBER, 
                                            REMAIN_MIN OUT NUMBER, 
                                            REMAIN_SMS OUT NUMBER) IS
FIRSTNAME   VARCHAR2(50);
CHECKER     NUMBER ;
RANDOM_NUMBER NUMBER(5);
WARN_GB     NUMBER(5,2);
WARN_MIN    NUMBER;
WARN_SMS    NUMBER;
BEGIN
    SELECT COUNT(*)INTO CHECKER FROM USER_INFO WHERE PHONE_NUMBER=PIS_PHONE;
    IF CHECKER=1 THEN
    SELECT GB_REM, MINUTE_REM, SMS_REM INTO REMAIN_GB, REMAIN_MIN, REMAIN_SMS
    FROM REMAIN_BALANCE WHERE PHONE_NUMBER=PIS_PHONE;
    SELECT FIRST_NAME INTO FIRSTNAME FROM USER_INFO WHERE PHONE_NUMBER=PIS_PHONE;
    
    IF REMAIN_GB>0 AND REMAIN_MIN>0 AND REMAIN_SMS>0
    THEN SELECT ROUND(DBMS_RANDOM.VALUE(1,10)) RANDOM INTO RANDOM_NUMBER FROM DUAL;
            DBMS_OUTPUT.PUT_LINE('Merhaba ' || FIRSTNAME || ',');
            DBMS_OUTPUT.PUT_LINE('Kalan GB: ' ||  REMAIN_GB);
            DBMS_OUTPUT.PUT_LINE('Kalan Dakika: ' || REMAIN_MIN);
            DBMS_OUTPUT.PUT_LINE('Kalan Sms: ' || REMAIN_SMS);
            
            REMAIN_GB   :=  REMAIN_GB-RANDOM_NUMBER/50;
            REMAIN_MIN  :=  REMAIN_MIN-2*RANDOM_NUMBER+1;
            REMAIN_SMS  :=  REMAIN_SMS-RANDOM_NUMBER-4;
            UPDATE REMAIN_BALANCE SET   GB_REM=REMAIN_GB,
                                        MINUTE_REM=REMAIN_MIN,
                                        SMS_REM=REMAIN_SMS 
                                  WHERE PHONE_NUMBER=PIS_PHONE;
                                  
            SELECT DATA_GB_BAL, VOICE_BAL, SMS_BAL INTO WARN_GB,WARN_MIN,WARN_SMS
            FROM USER_PKG_BALANCE WHERE PHONE_NUMBER=PIS_PHONE;
            
            IF REMAIN_GB<WARN_GB/5
            THEN DBMS_OUTPUT.PUT_LINE('Internetinizin %80inini kullandınız.');
            END IF;
            IF REMAIN_MIN<WARN_MIN/5
            THEN DBMS_OUTPUT.PUT_LINE('Dakikanızın %80inini kullandınız.');
            END IF;
            IF REMAIN_SMS<WARN_SMS/5
            THEN DBMS_OUTPUT.PUT_LINE('Smslerinizin %80inini kullandınız.');
            END IF;
            COMMIT;
            
    ELSE    SELECT DATA_GB_BAL,VOICE_BAL,SMS_BAL INTO REMAIN_GB, REMAIN_MIN, REMAIN_SMS
            FROM USER_PKG_BALANCE WHERE PHONE_NUMBER=PIS_PHONE;
            UPDATE REMAIN_BALANCE SET   GB_REM=REMAIN_GB,
                                        MINUTE_REM=REMAIN_MIN,
                                        SMS_REM=REMAIN_SMS 
                                  WHERE PHONE_NUMBER=PIS_PHONE;
            DBMS_OUTPUT.PUT_LINE('Merhaba ' || FIRSTNAME || ',');
            DBMS_OUTPUT.PUT_LINE('Paketin yenilendi.');
            DBMS_OUTPUT.PUT_LINE('Kalan GB: ' ||  REMAIN_GB);
            DBMS_OUTPUT.PUT_LINE('Kalan Dakika: ' || REMAIN_MIN);
            DBMS_OUTPUT.PUT_LINE('Kalan Sms: ' || REMAIN_SMS);
            COMMIT;
    END IF;
    ELSE 
    REMAIN_GB:=0;
    REMAIN_MIN:=0;
    REMAIN_SMS:=0;
    DBMS_OUTPUT.PUT_LINE('Yanlış Numara!');
    END IF;
    
END GET_BALANCES;
/


CREATE OR REPLACE PROCEDURE CREATE_USER (PIS_F_NAME    IN  VARCHAR2, 
                                        PIS_L_NAME     IN  VARCHAR2, 
                                        PIS_P_NUMBER   IN  VARCHAR2,
                                        PIS_E_MAIL     IN  VARCHAR2, 
                                        PIS_P_WORD     IN  VARCHAR2,
                                        PIS_B_DAY      IN  VARCHAR2,
                                        PIS_TC_NUMBER  IN  VARCHAR2,
                                        CHECKER        OUT NUMBER) IS
CHECK_AGE NUMBER:=0;
CHECK_PHONE_TC NUMBER:=1;
BEGIN
    IF MONTHS_BETWEEN(SYSDATE,TO_DATE(PIS_B_DAY,'DD/MM/YYYY'))>144 THEN CHECK_AGE:=1;
    END IF;
    
    IF CHECK_AGE=1 THEN SELECT COUNT(*)INTO CHECK_PHONE_TC FROM USER_INFO
    WHERE PHONE_NUMBER=PIS_P_NUMBER OR LENGTH(PIS_P_NUMBER)<>10 OR TC_NO=PIS_TC_NUMBER OR LENGTH(PIS_TC_NUMBER)<>11;
    END IF;
    
    IF CHECK_PHONE_TC=0 THEN 
    DBMS_OUTPUT.PUT_LINE('WE CAN ADD!');
    INSERT INTO USER_INFO
    VALUES (SEQ_USER_ID.NEXTVAL,
            UPPER(PIS_F_NAME),
            UPPER(PIS_L_NAME),
            PIS_P_NUMBER,
            PIS_E_MAIL,
            MD5_HASH(PIS_P_WORD),
            TO_DATE(PIS_B_DAY,'DD/MM/YYYY'),
            PIS_TC_NUMBER);
    DBMS_OUTPUT.PUT_LINE('ADDED!');
    INSERT INTO USER_PKG_BALANCE
    VALUES (SEQ_USER_ID.NEXTVAL-1,10,1,1,100,100,PIS_P_NUMBER);
    DBMS_OUTPUT.PUT_LINE('DEFAULT PACKAGE');
    INSERT INTO REMAIN_BALANCE
    VALUES (PIS_P_NUMBER,1,100,100);
    CHECKER:=1;
    COMMIT;
    ELSE CHECKER:=0;
    DBMS_OUTPUT.PUT_LINE('CANNOT BE ADDED! ' || CHECKER);
    COMMIT;
    END IF;
    
END CREATE_USER;
/


CREATE OR REPLACE PROCEDURE CHANGE_PASSWORD(PIS_PHONE       IN VARCHAR2, 
                                            PIS_TC_NUMBER   IN VARCHAR2, 
                                            PIS_NEW_PASS    IN VARCHAR2, 
                                            CHECKER         OUT NUMBER) IS
CHECK_TC_PHONE NUMBER;
BEGIN
    SELECT COUNT(*)INTO CHECK_TC_PHONE FROM USER_INFO
    WHERE PHONE_NUMBER=PIS_PHONE AND TC_NO=PIS_TC_NUMBER AND PASS_WORD<>MD5_HASH(PIS_NEW_PASS);
    
    IF CHECK_TC_PHONE=1 THEN 
    UPDATE USER_INFO SET PASS_WORD=MD5_HASH(PIS_NEW_PASS) WHERE (PHONE_NUMBER=PIS_PHONE AND TC_NO=PIS_TC_NUMBER);
    COMMIT;
    CHECKER:=1;
    DBMS_OUTPUT.PUT_LINE('Password is changed!');
    ELSE CHECKER:=0;
    DBMS_OUTPUT.PUT_LINE('Password cannot be changed!');
    END IF;
END CHANGE_PASSWORD;
/



CREATE OR REPLACE PROCEDURE BUY_NEW_PACKAGE(PIS_PHONE           IN VARCHAR2, 
                                            PIS_PACKAGE_ID      IN NUMBER,
                                            PIS_PERIOD          IN NUMBER,
                                            CHECKER             OUT NUMBER) IS
REMAIN_GB   NUMBER;
REMAIN_MIN  NUMBER;
REMAIN_SMS  NUMBER;
BEGIN
    SELECT DATA_GB,VOICE,SMS INTO REMAIN_GB, REMAIN_MIN, REMAIN_SMS FROM PACK_DEF WHERE PACKAGE_ID=PIS_PACKAGE_ID;
    UPDATE USER_PKG_BALANCE SET PACKAGE_ID=PIS_PACKAGE_ID,
                                DATA_GB_BAL=REMAIN_GB,
                                VOICE_BAL=REMAIN_MIN,
                                SMS_BAL=REMAIN_SMS,
                                BILL_PERIOD=PIS_PERIOD
                            WHERE PHONE_NUMBER=PIS_PHONE;
    UPDATE REMAIN_BALANCE   SET GB_REM=REMAIN_GB,
                                MINUTE_REM=REMAIN_MIN,
                                SMS_REM=REMAIN_SMS
                            WHERE PHONE_NUMBER=PIS_PHONE;
    CHECKER:=1;
    DBMS_OUTPUT.PUT_LINE(CHECKER);
    COMMIT;
END;
/