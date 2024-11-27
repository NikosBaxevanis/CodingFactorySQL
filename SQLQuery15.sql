CREATE VIEW V1 AS
SELECT bname,city , assets
	FROM branches

SELECT * FROM V1

UPDATE V1
	SET assets=2222222 WHERE bname='Σταδίου'


SELECT * FROM branches

DROP VIEW V1