-- 테이블 생성 쿼리
create table producttbl (
	productname NVARCHAR(20) PRIMARY KEY,
    cost INT NOT NULL,
    makeDate date,
    company NVARCHAR(20),
    amount int NOT NULL 
);