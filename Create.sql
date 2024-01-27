
DROP TABLE IF EXISTS OFFER CASCADE;
DROP TABLE IF EXISTS BILL CASCADE;
DROP TABLE IF EXISTS BOOTH CASCADE;
DROP TABLE IF EXISTS RESTAURANT CASCADE;
DROP TABLE IF EXISTS DESSERT CASCADE;

Create database labb3;
use labb3;

CREATE TABLE BOOTH  (
   BOOTHCODE            VARCHAR(10)                    NOT NULL,
   RESTAURANT_ID        VARCHAR(30)                    NOT NULL,
   SMOKE_SECTION_INDICATOR CHAR(1),
   BOOTH_CAPACITY        TINYINT,
   BOOTHTYP_CODE           CHAR(1),
   BOOTHTYP_TEXT          VARCHAR(100)
);

CREATE TABLE BILL (
   BILL_ID             VARCHAR(10)         NOT NULL,
   BOOTHCODE               VARCHAR(10)     NOT NULL,
   DESSERT_CODE          VARCHAR(10)       NOT NULL,
   RESTAURANT_ID        VARCHAR(30)        NOT NULL,
   BILL_DATE_AND_TIME  DATETIME,
   BILL_AMOUNT         FLOAT,
   GRATUITY_AMOUNT     FLOAT
);

CREATE TABLE DESSERT  (
   DESSERT_CODE          VARCHAR(10)       NOT NULL,
   DESSERT_NAME         VARCHAR(25),
   DESSERT_DESCR  VARCHAR(150),
   DESSERT_CATEGORY_NAME VARCHAR(50),
   DRINK_NAME           VARCHAR(25),
   TOPPNING_NAME        VARCHAR(20),
   DESSERT_PRICE_AMOUNT   FLOAT
);


CREATE TABLE OFFER  (
   DESSERT_CODE          VARCHAR(10)          NOT NULL,
   DESSERT_OFFERED_DATE_RANGE VARCHAR(40)     NOT NULL,
   RESTAURANT_ID        VARCHAR(30)           NOT NULL
);


CREATE TABLE RESTAURANT  (
   RESTAURANT_ID        VARCHAR(30) NOT NULL,
   OWNER1_NAME VARCHAR(30),
   OWNER2_NAME VARCHAR(30),
   OWNER3_NAME VARCHAR(30),
   REGION_CODE VARCHAR(10),
   REGION_NAME VARCHAR(30),
   MAX_CAPACITY SMALLINT
);

-- Creating PRIMARY KEY constraints 

ALTER TABLE BOOTH
   ADD CONSTRAINT PK_BOOTH PRIMARY KEY (BOOTHCODE);

ALTER TABLE BILL
   ADD CONSTRAINT PK_BILL PRIMARY KEY (BILL_ID);


ALTER TABLE DESSERT
   ADD CONSTRAINT PK_DESSERT PRIMARY KEY (DESSERT_CODE);

ALTER TABLE OFFER
   ADD CONSTRAINT PK_OFFER PRIMARY KEY (DESSERT_CODE, DESSERT_OFFERED_DATE_RANGE, RESTAURANT_ID);

ALTER TABLE RESTAURANT
   ADD CONSTRAINT PK_RESTAURANT PRIMARY KEY (RESTAURANT_ID);
 
 
   
-- Creating FOREIGN KEY constraints 

ALTER TABLE BILL
   ADD CONSTRAINT FK_BILL_CONTAIN_DESSERT FOREIGN KEY (DESSERT_CODE)
      REFERENCES DESSERT (DESSERT_CODE);

ALTER TABLE BILL
   ADD CONSTRAINT FK_CHECK_GENERATES_BOOTH FOREIGN KEY (BOOTHCODE)
      REFERENCES BOOTH (BOOTHCODE);

ALTER TABLE BILL
   ADD CONSTRAINT FK_CHECK_PROCESS_RESTAURA FOREIGN KEY (RESTAURANT_ID)
      REFERENCES RESTAURANT (RESTAURANT_ID);

ALTER TABLE OFFER
   ADD CONSTRAINT FK_OFFER_DESSERT FOREIGN KEY (DESSERT_CODE)
      REFERENCES DESSERT (DESSERT_CODE);

ALTER TABLE OFFER
   ADD CONSTRAINT FK_OFFER_RESTAURA FOREIGN KEY (RESTAURANT_ID)
      REFERENCES RESTAURANT (RESTAURANT_ID);



