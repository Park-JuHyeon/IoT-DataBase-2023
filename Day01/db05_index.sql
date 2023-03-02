-- employess DB의 employess 테이블에서 데이터 10만개 가져오기!
CREATE TABLE indexTBL (
	first_name VARCHAR(14),
    last_name VARCHAR(16),
    hire_date date
);

-- employees.employees 에서 데이터 10만개
INSERT INTO indexTBL
	SELECT first_name, last_name, hire_date
		FROM employees.employees
	 LIMIT 300000;

-- 조회
SELECT * FROM indextbl 
 WHERE first_name = 'Mary';
 
-- indexTBL에 first_name에 인덱스 생성
CREATE INDEX idx_indexTBL_firstname 
	ON indexTBL(first_name);