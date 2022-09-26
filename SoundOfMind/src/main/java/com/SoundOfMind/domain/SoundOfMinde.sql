## 유저정보
CREATE TABLE MEMBER_INFO(
NAME VARCHAR(30) NOT NULL,
ID VARCHAR(30) PRIMARY KEY,
PW VARCHAR(30) NOT NULL,
GRADE int NOT NULL,
CONSTRAINT M_F_G01 FOREIGN KEY MEMBER_INFO(GRADE) REFERENCES M_GRADE(GRADE)
);

CREATE TABLE STOREGE(
S_INDEX INT AUTO_INCREMENT PRIMARY KEY,
DATE DATE NOT NULL,
ID VARCHAR(30) NOT NULL,
TEXT VARCHAR(3000) NOT NULL,
EMOTION VARCHAR(10) NOT NULL
);

CREATE TABLE M_GRADE(
GRADE int PRIMARY KEY,
STOREGEMAX int NOT NULL
);


## 유저 정보 삽입
INSERT INTO MEMBER_INFO VALUES ('김수민','1234','1234',1);

## GRADE 등급
INSERT INTO M_GRADE VALUES (1,50);
INSERT INTO M_GRADE VALUES (2,200);
INSERT INTO M_GRADE VALUES (3,500);
INSERT INTO M_GRADE VALUES (4,800);
INSERT INTO M_GRADE VALUES (5,2000);

## STOREGE

INSERT INTO STOREGE(DATE,ID,TEXT,EMOTION) VALUES (now(),'1234','안녕하세요','중립');
INSERT INTO STOREGE(DATE,ID,TEXT,EMOTION) VALUES (now(),'1234','안녕하세요','분노');
INSERT INTO STOREGE(DATE,ID,TEXT,EMOTION) VALUES ('2022-09-27','1234','안녕하세요','분노');


DELETE FROM STOREGE WHERE ID ='김수민';

## STOREGE 확인
SELECT @rownum:=@rownum+1 as rownum, S.*
FROM (SELECT * FROM STOREGE WHERE ID='1234' AND (@rownum :=0)=0 ORDER BY DATE DESC) S