1.
START TRANSACTION;
set @account= 1000103;
set @deposite=1000;
set @balance = (SELECT balance FROM accounts WHERE account_no=@account);
UPDATE accounts SET balance = @deposite + @balance WHERE account_no=@account;
COMMIT;

2.
START TRANSACTION;
set @account=1000103;
set @withdraw=500;
set @balance = (SELECT balance FROM accounts WHERE account_no=@account);
UPDATE accounts SET balance = @withdraw - @balance WHERE account_no=@account;
COMMIT;

3.
START TRANSACTION;
set @account=1000103;
set @withdraw=200;
set @balance = (SELECT balance FROM accounts WHERE account_no=@account);
UPDATE accounts SET balance = @withdraw - @balance WHERE account_no=@account;
SAVEPOINT save_point_1;
set @account= 1000104;
set @deposite=@withdraw;
set @balance = (SELECT balance FROM accounts WHERE account_no=@account);
UPDATE accounts SET balance = @deposite + @balance WHERE account_no=@account;
COMMIT;



