SELECT  lastname , firstname
	FROM customers , borrowers
	WHERE customers.cid = borrowers.cid



SELECT  lastname , firstname
	FROM customers , depositors
	WHERE customers.cid = depositors.cid
	/*order by lastname*/

	UNION

SELECT  lastname , firstname
	FROM customers , borrowers
	WHERE customers.cid = borrowers.cid
	/*order by lastname*/



SELECT  lastname , firstname
	FROM customers , depositors
	WHERE customers.cid = depositors.cid
	/*order by lastname*/

	except

SELECT  lastname , firstname
	FROM customers , borrowers
	WHERE customers.cid = borrowers.cid


SELECT   distinct lastname , firstname
	FROM customers , depositors , borrowers
	WHERE customers.cid = depositors.cid and customers.cid = borrowers.cid


SELECT distinct lastname , firstname
	FROM customers , depositors
	WHERE customers.cid = depositors.cid and customers.cid in (select cid from borrowers)

SELECT distinct lastname , firstname
	FROM customers , depositors
	WHERE customers.cid = depositors.cid and customers.cid not in (select cid from borrowers)