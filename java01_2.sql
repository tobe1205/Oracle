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
