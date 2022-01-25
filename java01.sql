-- 테이블 생성 (회원정보 : 아이디, 비밀번호, 이름, 성별, 나이)
CREATE TABLE tbl_member (
     account VARCHAR2(20) PRIMARY KEY
     , password VARCHAR2(200) NOT NULL
     , username VARCHAR2(50) NOT NULL
     , gender CHAR(2)
     , age NUMBER(3)
);



SELECT systimestamp FROM dual;

-- 데이터 삽입 (INSERT문)
INSERT INTO tbl_member 
    (account, password, username, gender, age) 
VALUES 
    ('abc1234', 'vvv1234!!', '김철수', 'M', 30);


INSERT INTO tbl_member 
    (account, password, username, gender, age) 
VALUES 
    ('def1234', 'qqq332!!', '박영희', 'F', 35);


INSERT INTO tbl_member 
    (account, password, username, gender) 
VALUES 
    ('ghi1234', 'qqq332!!', '고길동', 'F');


INSERT INTO tbl_member 
    
VALUES 
    ('zzz1234', 'gfdgf344!!', '김영희', 'F', 22);


-- 데이터 수정 (UPDATE) 
UPDATE tbl_member 
SET gender = 'M', age = 45
WHERE account = 'ghi1234';


UPDATE tbl_member 
SET password='0000000'
WHERE account = 'abc1234';


-- 데이터 삭제 (DELETE)
DELETE FROM tbl_member 
WHERE account = 'abc1234';

-- 데이터 조회 (SELECT)
SELECT account, username, age 
FROM tbl_member;

SELECT age, gender, username
FROM tbl_member;

SELECT * 
FROM tbl_member;

SELECT * 
FROM tbl_member
WHERE gender='F';

SELECT account, username, age 
FROM tbl_member 
WHERE age >= 30;

SELECT * 
FROM tbl_member 
WHERE username LIKE '%영%';

SELECT * 
FROM tbl_member 
WHERE username LIKE '%영%'
        AND age >= 30;


DELETE FROM tbl_member
WHERE account = 'zzz1234';

SELECT * FROM tbl_member;



--성적관리 프로그램
CREATE TABLE score(
    stu_num NUMBER(10)PRIMARY KEY,
    stu_name VARCHAR(50) NOT NULL,
    kor NUMBER(3) NOT NULL,
    eng NUMBER(3) NOT NULL,
    math NUMBER(3) NOT NULL,
    total NUMBER(3),
    averade NUMBER(5,2),
    grage CHAR(1)
);

--순차적인 번호를 만드는 방법
CREATE SEQUENCE seq_score;

ALTER TABLE score RENAME COLUMN grage TO grade;

SELECT*FROM score;

CREATE SEQUENCE seq_board;

CREATE TABLE board (
    board_no NUMBER(10),
    writer VARCHAR2(20) NOT NULL,
    title VARCHAR2(200) NOT NULL,
    content VARCHAR2(2000),
    view_cnt NUMBER(10) DEFAULT 0,
    reg_date DATE DEFAULT SYSDATE,
    CONSTRAINT pk_board PRIMARY KEY (board_no)
);

SELECT*FROM board;

UPDATE board
SET view_cnt = view_cnt+1
WHERE board_no = 6;



COMMIT;


-- 회원 관리 테이블
CREATE TABLE member (
    account VARCHAR2(50),
    password VARCHAR2(150) NOT NULL,
    name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) NOT NULL UNIQUE,
    auth VARCHAR2(20) DEFAULT 'COMMON',
    reg_date DATE DEFAULT SYSDATE,
    CONSTRAINT pk_member PRIMARY KEY (account)
);

SELECT * FROM member;

SELECT COUNT(*) FROM board;






