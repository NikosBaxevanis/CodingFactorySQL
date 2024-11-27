SELECT  customers.cid , lastname   , firstname , accounts.accno  , balance
	FROM customers  inner join  depositors on customers.cid = depositors.cid
	join accounts on depositors.accno=accounts.accno
	order by lastname

SELECT  C.cid , lastname   , firstname , A.accno  , balance
	FROM customers C inner join  depositors D on C.cid = D.cid
	join accounts A on D.accno=A.accno
	order by lastname

SELECT  C.cid , lastname   , firstname , A.accno  , balance
	FROM customers C ,  depositors D , accounts A
	WHERE C.cid=D.cid and
	D.accno=A.accno
	order by lastname
	

SELECT  C.cid , lastname   , firstname , A.accno  , balance , bname
	FROM customers C ,  depositors D , accounts A , branches B
	WHERE C.cid=D.cid and
	D.accno=A.accno and
	A.bcode=B.bcode
	order by lastname