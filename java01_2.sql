SELECT*FROM board;

DELETE FROM board
WHERE account IS NULL;

COMMIT;
ALTER TABLE board ADD account VARCHAR(100);

UPDATE member
SET auth = 'ADMIN'
WHERE account='admin';

COMMIT;
SELECT *FROM board;
SELECT *FROM member;


SELECT*FROM board2;

ALTER TABLE board2 ADD account VARCHAR(100);
COMMIT;

SELECT *FROM member2;
UPDATE member2
SET auth = 'ADMIN'
WHERE account='admin';

COMMIT;

