-- 변수 사용
USE sqldb;

SET @myVar1 = 5;
SELECT @myVar1;
SET @myVar2 = '이름 ==> ';

SELECT @myVar2, name
  FROM usertbl
  WHERE height > 170;
  
SELECT name, height + @myVar1
  FROM usertbl;
  
-- 형변환
SELECT CAST(birthYear AS CHAR(4)) FROM usertbl;
SELECT CONVERT(birthYear,CHAR(4)) FROM usertbl;

-- 암시적 형변환
SELECT 200 + 300;

SELECT CONCAT('Hello' , 'world'); -- CONCAT 은 문자열 합치기

SELECT '200' + '300';  -- My SQL에서는 '200300'으로 출력

SELECT 0 = 1;   -- 0은 거짓 1은 참

/* 내장함수 리스트 */
-- 흐름함수

SELECT IF(100 > 200, '참', '거짓');

SELECT IFNULL(NULL, '널입니다.');

-- NULL은 계산이 오류(결과도 NULL)
SELECT IFNULL(NULL, 0) + 100 ;

-- NULLIF는 많이 사용안됨.
SELECT NULLIF(100, 107);

-- 쿼리 작성시 많이 사용
SELECT name
	 , birthYear
     , CASE addr 
       WHEN '서울' THEN '수도권'
       WHEN '경기' THEN '수도권'
       WHEN '부산' THEN '광역권'
       ELSE '지역권' END AS '권역'
  FROM usertbl;
  
  -- 문자열함수
  SELECT ASCII('A'), CHAR(65), ASCII('A');
  SELECT ASCII('안'), CHAR(236); -- 한글을 사용하면 안됨
  
-- CHAR_LENGTH(글자길이), LENGTH(byte)
SELECT CHAR_LENGTH('ABC'), LENGTH('ABC');
-- UTF-8
SELECT CHAR_LENGTH('가나다'), LENGTH('가나다');   -- 한글이 한글자당 3BYTE

SELECT REPLACE('Hello World','Hello', 'BYEbye');
-- DB는 인덱스를 1부터 시작
SELECT INSTR('안녕하세요 여러분', '여');

-- LEFT, RIGHT
SELECT LEFT('ABCDEFGHIJKLMN',3) , RIGHT('ABCDEFGHIJKLMN',3);

-- UPPER , LOWER
SELECT UPPER('hello World'), LOWER('Hello World');

-- LTRIM, RTRIM, TRIM
SELECT LTRIM('     Hello World!      ') AS 'ltrim'
	 , RTRIM('     Hello World!      ') AS 'rtrim'
     , TRIM('     Hello World!      ') AS 'trim';
    
-- substring
SELECT SUBSTRING('대한민국만세', 5, 2);

-- 수학함수
SELECT ABS(-10);

-- 올림, 내림, 반올림
SELECT CEILING(4.3), FLOOR(4.9), ROUND(4.4);

SELECT MOD(157, 10);

-- RANDOM
SELECT RAND(), FLOOR(1 + (RAND() * (6)));    -- 주사위놀이

-- 날짜 및 시간함수
SELECT NOW();   -- 현재시간
SELECT ADDDATE('2023-03-02', INTERVAL 10 DAY);

SELECT YEAR(NOW());
SELECT MONTH(NOW());
SELECT DATE(NOW());
SELECT TIME(NOW());
SELECT DAYOFWEEK(NOW());    -- 1(일) ~ 7(토)
SELECT LAST_DAY('2023-02-01');   -- 해당 달의 마지막 날을 알려줌

-- 시스템 함수
SELECT USER();

SELECT DATABASE();

-- ROW_COUNT()
USE sqldb;
UPDATE buytbl SET price = price * 2;
SELECT ROW_COUNT();

SELECT VERSION();








