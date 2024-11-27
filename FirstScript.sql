SELECT * FROM branches
SELECT * FROM accounts


INSERT INTO branches VALUES (100,'Σταδίου','Αθήνα',10000);
INSERT INTO branches VALUES (200,'Ακαδημίας','Αθήνα',20000);

INSERT INTO accounts VALUES ('A900',100,500);
INSERT INTO accounts VALUES ('A901',300,500);


DELETE FROM branches WHERE bcode=100