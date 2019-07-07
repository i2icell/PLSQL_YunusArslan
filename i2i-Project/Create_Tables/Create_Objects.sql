CREATE TABLE USER_INFO (USER_ID         NUMBER          NOT NULL  PRIMARY KEY,   
                        FIRST_NAME      VARCHAR2(50)    NOT NULL, 
                        LAST_NAME       VARCHAR2(50)    NOT NULL, 
                        PHONE_NUMBER    VARCHAR2(10)    NOT NULL,
                        EMAIL           VARCHAR2(100)   NOT NULL, 
                        PASS_WORD       VARCHAR2(50)    NOT NULL,
                        BIRTHDATE       DATE            NOT NULL,
                        TC_NO           VARCHAR2(11)    NOT NULL,
                        CONSTRAINT USER_INFO_UNIQUE UNIQUE (PHONE_NUMBER));
                        
                    
           
                        
CREATE TABLE PACK_DEF  (PACKAGE_ID      NUMBER PRIMARY KEY NOT NULL,
                        PACKAGE_NAME    VARCHAR2(100),
                        DATA_GB         NUMBER,
                        VOICE           NUMBER,
                        SMS             NUMBER);
                        
                        
CREATE TABLE USER_PKG_BALANCE (USER_ID      NUMBER,
                               PACKAGE_ID   NUMBER,
                               BILL_PERIOD  NUMBER,
                               DATA_GB_BAL  NUMBER,
                               VOICE_BAL    NUMBER,
                               SMS_BAL      NUMBER,
                               PHONE_NUMBER VARCHAR2(10));
                               
ALTER TABLE USER_PKG_BALANCE
ADD CONSTRAINT USER_PKG_BALANCE_FK1 FOREIGN KEY
(
  USER_ID 
)
REFERENCES USER_INFO
(
  USER_ID 
)
ENABLE;
     
ALTER TABLE USER_PKG_BALANCE
ADD CONSTRAINT USER_PKG_BALANCE_FK2 FOREIGN KEY
(
  PACKAGE_ID 
)
REFERENCES PACK_DEF
(
  PACKAGE_ID 
)
ENABLE;
                          
                               
CREATE TABLE SUBSCRIPTION (USER_ID      NUMBER PRIMARY KEY,
                          PACKAGE_ID    NUMBER,
                          SDATE         DATE,
                          EDATE         DATE);
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
                          
