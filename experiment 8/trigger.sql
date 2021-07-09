CREATE TABLE Passanger(
passangerID INT NOT NULL AUTO_INCREMENT,
FName VARCHAR(20),
LName VARCHAR(20),
Address VARCHAR(30),
City VARCHAR(15),
ticket_cost INT,
PRIMARY KEY(passangerID)
);
CREATE TRIGGER calculate
before INSERT 
ON Passanger
FOR EACH ROW
SET new.ticket_cost = 1000 ;

INSERT INTO Passanger Values(10, "aa", "bb", "dd" ,"dd", 100);
INSERT INTO Passanger Values(1, "aa", "bb", "dd" ,"dd", 100);

select * from Passanger;
