CREATE TABLE branches
	(bcode int PRIMARY KEY,
	bname varchar(30) NOT NULL,
	city varchar(30) NOT NULL,
	assets numeric(18,0) NOT NULL
	);

CREATE TABLE accounts
	(accno varchar(10),
		bcode int NOT NULL,
		balance numeric(18,0),
		PRIMARY KEY (accno),
		CONSTRAINT fk_account FOREIGN KEY (bcode) REFERENCES branches (bcode) ON DELETE CASCADE 
	);

CREATE TABLE customers
	(cid int NOT NULL,
	firstname varchar(30),
	lastname varchar(30) NOT NULL,
	city varchar(30) NOT NULL,
	PRIMARY KEY (cid)
	);


CREATE TABLE depositors 
	(cid int NOT NULL,
	accno varchar(10) NOT NULL,
	PRIMARY KEY (cid , accno),
	CONSTRAINT fk_cid FOREIGN KEY (cid) REFERENCES customers (cid),
	CONSTRAINT fk_accno FOREIGN KEY (accno) REFERENCES accounts (accno)
	);
