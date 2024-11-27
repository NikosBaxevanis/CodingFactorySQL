CREATE VIEW totalLoaAndDepositsPerBranch AS
	SELECT bname , SUM(loans.amount) AS TOTALLOANS,
					SUM(accounts.balance) AS TOTALDEPOSITS
				FROM branches LEFT JOIN loans on branches.bcode=loans.bcode
								LEFT JOIN accounts on branches.bcode=accounts.bcode
				GROUP BY bname

SELECT * from totalLoaAndDepositsPerBranch
	WHERE TOTALLOANS > TOTALDEPOSITS