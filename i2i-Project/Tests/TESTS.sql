SET SERVEROUTPUT ON;
--CHANGE PASSWORD TEST;
DECLARE
PIS_PHONE       USER_INFO.PHONE_NUMBER%TYPE     := '5514429999';
PIS_TC_NUMBER   USER_INFO.TC_NO%TYPE            := '11111111111';
PIS_NEW_PASS    USER_INFO.PASS_WORD%TYPE        := 'Yunus12345';
CHECKER NUMBER;
BEGIN
    CHANGE_PASSWORD(PIS_PHONE, PIS_TC_NUMBER, PIS_NEW_PASS, CHECKER);
END;
/


--CHECK USER TEST;
DECLARE
CHECKER NUMBER;
PIS_PHONE   USER_INFO.PHONE_NUMBER%TYPE   :='5123456789';
PIS_PASS    USER_INFO.PASS_WORD%TYPE      :='Mammamia07';
BEGIN
    CHECK_USER(PIS_PHONE, PIS_PASS, CHECKER);
END;
/

--CREATE USER TEST;
DECLARE
PIS_F_NAME       USER_INFO.FIRST_NAME%TYPE      :='YUNUS';
PIS_L_NAME       USER_INFO.LAST_NAME%TYPE       :='deneme'; 
PIS_P_NUMBER     USER_INFO.PHONE_NUMBER%TYPE    :='5123456789';
PIS_E_MAIL       USER_INFO.EMAIL%TYPE           :='mail@mail.com'; 
PIS_P_WORD       USER_INFO.PASS_WORD%TYPE       :='Mammamia07';
PIS_B_DAY        USER_INFO.BIRTHDATE%TYPE       :='05-01-1999';
PIS_TC_NUMBER    USER_INFO.TC_NO%TYPE           :='12131415160';
CHECKER         NUMBER;
BEGIN
    CREATE_USER(PIS_F_NAME, PIS_L_NAME, PIS_P_NUMBER, PIS_E_MAIL, PIS_P_WORD, PIS_B_DAY, PIS_TC_NUMBER, CHECKER);
END;
/

--GET BALANCES TEST;
DECLARE
PIS_PHONE   USER_PKG_BALANCE.PHONE_NUMBER%TYPE    := '5555552321';
REMAIN_GB   USER_PKG_BALANCE.DATA_GB_BAL%TYPE;
REMAIN_MIN  USER_PKG_BALANCE.VOICE_BAL%TYPE;
REMAIN_SMS  USER_PKG_BALANCE.SMS_BAL%TYPE;
BEGIN
    GET_BALANCES(PIS_PHONE, REMAIN_GB, REMAIN_MIN, REMAIN_SMS);
END;
/

--BUY NEW PACKAGE TEST;
DECLARE
PIS_PHONE       USER_PKG_BALANCE.PHONE_NUMBER%TYPE    := '5514429999';
PIS_PACKAGE_ID  PACK_DEF.PACKAGE_ID%TYPE              := 10;
PIS_PERIOD      USER_PKG_BALANCE.BILL_PERIOD%TYPE     := 100;
CHECKER         NUMBER;
BEGIN
    BUY_NEW_PACKAGE(PIS_PHONE,PIS_PACKAGE_ID,PIS_PERIOD,CHECKER);
END;
/

--LIST PACKAGES TEST;
DECLARE
POS_PACKAGES SYS_REFCURSOR;
BEGIN
    LIST_PACKAGES(POS_PACKAGES);
END;
/

--SHOW PROFILE TEST;
DECLARE
PIS_PHONE   USER_INFO.PHONE_NUMBER%TYPE :='5371119999';
FNAME       USER_INFO.FIRST_NAME%TYPE;
LNAME       USER_INFO.LAST_NAME%TYPE;
E_MAIL      USER_INFO.EMAIL%TYPE;
PACK_NAME   PACK_DEF.PACKAGE_NAME%TYPE;
GB_FULL     PACK_DEF.DATA_GB%TYPE;
MIN_FULL    PACK_DEF.VOICE%TYPE;
SMS_FULL    PACK_DEF.SMS%TYPE;
BEGIN
    SHOW_PROFILE(PIS_PHONE,FNAME,LNAME,E_MAIL,PACK_NAME,GB_FULL,MIN_FULL,SMS_FULL);
END;
/