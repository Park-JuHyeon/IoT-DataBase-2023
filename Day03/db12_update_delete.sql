-- UPDATE & TRANSACTION
START TRANSACTION;

-- 경고! UPDATE 구문에는 WHERE절 빼면 안됨!!
UPDATE usertbl_bak
   SET mobile1 = '010'
     , mobile2 = '66667788'
     , addr = '부산'
 WHERE userID = 'PJH';
   
COMMIT;
ROLLBACK;

-- DELETE
-- WHERE절이 빠지면 큰일남! 항상 더블체크 필수!
DELETE FROM usertbl
 WHERE userID = 'HGS';

