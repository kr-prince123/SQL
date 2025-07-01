-- ------------------------------------------------------------------------
-- --------------------------TRIGGER---------------------------------------
-- ------------------------------------------------------------------------

-- ------------------------------------------------------------------------
-- A trigger in MySQL Workbench is a database object that's associated 
-- with a table and is activated when a certain action is 
-- performed on the table.
-- ------------------------------------------------------------------------

 -- Triggers can be used to: 
-- -- ------------------------------------------------------------------------
-- Apply restrictions to tables when adding, updating, or removing rows
-- Maintain referential integrity Record activities performed on a table


-- Here are some types of triggers in MySQL: 
-- -- -------------------------------------------------------------------------
-- Before Insert: Activated before data is inserted into a table
-- After Insert: Activated after data is inserted into a table
-- Before Update: Activated before data is updated in a table


-- -- --------------------------------------------------------------------------
-- In simple Trigger
-- -- --------------------------------------------------------------------------
-- SQL triggers are stored procedures that automatically execute in response
--  to certain events in a specific table or view in a database.
-- -- --------------------------------------------------------------------------
USE PRINCE;
CREATE TABLE EXP(ID INT,SALARY INT);

CREATE TRIGGER XYZ
		BEFORE INSERT ON 
        EXP FOR EACH ROW
        SET NEW.SALARY = NEW.SALARY-@A;
        
        
-- Note: The OLD keyword refers to the existing values before the update, 
-- and the NEW keyword refers to the new values after the update.
        
        
SHOW TRIGGERS;
# SETTING THE VALUE HOW MUCH WE HAVE TO DETECT WITH THE SALARY
SET @A = 200;

INSERT INTO EXP
VALUES(200,500);


SELECT * FROM EXP;















        
-- ----------------------
# REGEXP IN MYSQL
-- -----------------------
