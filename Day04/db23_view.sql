CREATE VIEW uv_usertbl
AS
	SELECT u.userID
         , u.name
         , u.birthYear
         , u.addr
      FROM usertbl AS u;

SELECT *
  FROM uv_usertbl;
  
INSERT INTO uv_usertbl VALUES
	('KKK', '케케케', 1988, '제주');
    
SELECT * FROM uv_potentialuser;

INSERT INTO uv_potentialuser VALUES
('TTT', '티티티', 1990, '서울', '010', '89898989', 190, '2023-03-03');


