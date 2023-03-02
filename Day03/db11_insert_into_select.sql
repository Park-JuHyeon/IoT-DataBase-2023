-- INSERT INTO SELECT
-- usertbl에서 앞의 네게 컬럼 값을 가져와서 전부
-- usertbl_bak에서 실행해라
INSERT INTO usertbl_bak (userID, name, birthYear, addr)
 SELECT userID, name, birthYear, addr FROM usertbl;