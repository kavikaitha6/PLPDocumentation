-- AccountMaster Table
	-- Drop if such table already exists
	DROP TABLE AccountMaster;
	-- Create table 
	CREATE TABLE AccountMaster(
		Account_ID NUMBER(10),
		Account_Type VARCHAR2(25),
		Account_Balance NUMBER(15),
		Open_Date Date
	);

-- Customer Table
	-- Drop if such table already exists
	DROP TABLE Customer;
	-- Create table 
	CREATE TABLE Customer(
		Account_ID NUMBER(10),
		customer_name VARCHAR2(50),
		Email VARCHAR2(60),
		Address VARCHAR2(100),
		Pancard VARCHAR2(15),
		User_Id VARCHAR2(15)
	);

-- Transactions Table
	-- Drop if such table already exists
	DROP TABLE Transactions;
	-- Create table 
	CREATE TABLE Transactions(
		Transaction_ID NUMBER,
		Tran_description VARCHAR2(100),
		Date_of_Transaction DATE,
		Transaction_Type VARCHAR2(1),
		Tran_Amount NUMBER(15),
		Account_No NUMBER(10)
	);

	
-- UserTable Table
	-- Drop if such table already exists
	DROP TABLE UserTable;
	-- Create table 
	CREATE TABLE UserTable(
		Account_ID NUMBER,
		user_id NUMBER,
		login_password VARCHAR2(15),
		secret_question VARCHAR2(50),
		Transaction_password VARCHAR2(15),
		lock_status VARCHAR2(1)
	);
	
-- Fund_Transfer Table
	-- Drop if such table already exists
	DROP TABLE Fund_Transfer;
	-- Create table 
	CREATE TABLE Fund_Transfer(
		FundTransfer_ID NUMBER,
		Account_ID NUMBER(10),
		Payee_Account_ID NUMBER(10), 
		Date_Of_Transfer DATE, 
		Transfer_Amount NUMBER(15)
	);

-- PayeeTable Table
	-- Drop if such table already exists
	DROP TABLE PayeeTable;
	-- Create table 
	CREATE TABLE PayeeTable(
		Account_Id NUMBER,
		Payee_Account_Id NUMBER, 
		NickName VARCHAR2(40)
	);	


-- Constraints (Primary and key are to be added)
-- Add them after this line.


--Insert Statements

INSERT INTO USERTABLE VALUES(0,'vish9415','vishpass','What is your favourite color?','Black','nope');
INSERT INTO USERTABLE VALUES(0,'vaib02','vaib136169','Your first school was in which city?','Jaipur','nope');
INSERT INTO USERTABLE VALUES(0,'kkeelu','kavikeelu','Your first school was in which city?','Vizag','nope');
INSERT INTO USERTABLE VALUES(0,'habhat','harshit0214','Your first school was in which city?','Jammu','nope');


INSERT INTO CUSTOMER VALUES(10012001, 'Vishesh Kushwah','vish9415@gmail.com','Keshav PG Talwade,Pune','BBASD1234Y');
INSERT INTO CUSTOMER VALUES(10012011, 'Vaibhav Bansal','vaib02@gmail.com','Om Sai PG Talwade,Pune','AZHHD5534Y');
INSERT INTO CUSTOMER VALUES(10012021, 'Kavitha Keelu','kkeelu15@gmail.com','Laxmi PG Talwade,Pune','MMGTR9996P');
INSERT INTO CUSTOMER VALUES(10012031, 'Harshit Bhat','habhat11@gmail.com','Vimaan Nagar,Pune','CCDER4147B');


ISNERT INTO ACCOUNTMASTER VALUES(10012001,'Savings',10000,'05-NOV-2017');
ISNERT INTO ACCOUNTMASTER VALUES(10012011,'Savings',10000,'05-NOV-2017');
ISNERT INTO ACCOUNTMASTER VALUES(10012021,'Current',10000,'07-NOV-2017');
ISNERT INTO ACCOUNTMASTER VALUES(10012031,'Current',10000,'13-NOV-2017');


INSERT INTO TRANSACTIONS VALUES(50014002,'Tution Fees','06-NOV-2017','Send',1500,10012001);
INSERT INTO TRANSACTIONS VALUES(50014052,'Pizza Party','08-NOV-2017','Received',800,10012011);
INSERT INTO TRANSACTIONS VALUES(50014102,'Cab Fare','10-NOV-2017','Send',400,10012021);
INSERT INTO TRANSACTIONS VALUES(50014152,'Shopping','13-NOV-2017','Send',4500,10012031);


INSERT INTO FUND_TRANSFER VALUES(22221111,10012001,10012011,'08-NOV-2017',100);
INSERT INTO FUND_TRANSFER VALUES(22221131,10012011,10012031,'10-NOV-2017',1000);
INSERT INTO FUND_TRANSFER VALUES(22221151,10012001,10012021,'09-NOV-2017',650);
INSERT INTO FUND_TRANSFER VALUES(22221171,10012021,10012011,'11-NOV-2017',250);


INSERT INTO PAYEETABLE VALUES(10012001,10012031,'harshit');
INSERT INTO PAYEETABLE VALUES(10012031,10012021,'kavitha');
INSERT INTO PAYEETABLE VALUES(10012031,10012011,'vaib');
INSERT INTO PAYEETABLE VALUES(10012001,10012021,'kavikeelu');

