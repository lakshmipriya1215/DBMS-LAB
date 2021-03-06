DROP DATABASE IF EXISTS `19wh1a1264`;
CREATE SCHEMA 19wh1a1264;
USE 19wh1a1264;
CREATE TABLE bus(bus_no INT , bus_type VARCHAR(20) , source VARCHAR(30) , destination VARCHAR(30) );
INSERT INTO bus VALUES(4590 , 'PRIVATE' , 'Mahabubabad' , 'Warangal');
INSERT INTO bus VALUES(5409 , 'PUBLIC' , 'Adilabad' , 'Hyderabad');
INSERT INTO bus VALUES(4095 , 'PUBLIC' , 'Khammam' , 'Mahaboobnagar');
INSERT INTO bus VALUES(9054 , 'PRIVATE' , 'Karimnagar' , 'Bhadrachalam');
SELECT * FROM bus ;
DELETE FROM bus b WHERE b.bus_no = 5409;
SELECT * FROM bus ;
CREATE TABLE Passanger(name VARCHAR(20) ,age INT ,  source VARCHAR(30) , destination VARCHAR(30) );
INSERT INTO Passanger VALUES('Priya' ,19, 'Hyderabad' , 'Thorrur' );
INSERT INTO Passanger VALUES('Jyothsna' ,89, 'Hyderabad' , 'Bhadrachalam' );
INSERT INTO Passanger VALUES('Tejaswini' ,30, 'Hyderabad' , 'Warangal' );
INSERT INTO Passanger VALUES('Sonika' ,68, 'Hyderabad' , 'Mahaboobnagar' );
SELECT * FROM Passanger ;
DELETE FROM Passanger P WHERE P.name = 'priya';
SELECT * FROM Passanger ;
CREATE TABLE Ticket(ticket_type VARCHAR(20) ,ticket_no INT , amount INT , source VARCHAR(30) , destination VARCHAR(30) );
INSERT INTO Ticket VALUES('FULL' , 405 , 200 , 'Hyderabad' , 'Thorrur' );
INSERT INTO Ticket VALUES('HALF' , 406 , 50, 'Warangal' , 'Thorrur' );
INSERT INTO Ticket VALUES('FULL' , 407 , 100, 'Warangal' , 'Thorrur' );
INSERT INTO Ticket VALUES('HALF' , 408 , 100, 'Hyderabad' , 'Thorrur' );
SELECT * FROM Ticket ;
DELETE FROM Ticket t WHERE ticket_no = 405;
SELECT * FROM Ticket ;
CREATE TABLE Reservation(type VARCHAR(20) , seat_no INT ,  source VARCHAR(30) , destination VARCHAR(30) );
INSERT INTO Reservation VALUES('Offline' , 05 , 'Warangal' , 'Thorrur' );
INSERT INTO Reservation VALUES('Online' , 10 , 'Warangal' , 'Mahabubabad' );
INSERT INTO Reservation VALUES('Offline' , 15 , 'Warangal' , 'Hyderabad' );
SELECT * FROM Reservation ;
DELETE FROM Reservation R WHERE R.destination = 'Thorrur';
SELECT * FROM Reservation ;
CREATE TABLE Cancellation(bus_no INT , ticket_no INT , seat_no INT , name VARCHAR(20)); 
INSERT INTO Cancellation VALUES(4590 , 405, 05 , 'priya'); 
INSERT INTO Cancellation VALUES(5490 , 408, 32 , 'sai');
INSERT INTO Cancellation VALUES(4507 , 580, 21 , 'rani');
SELECT * FROM Cancellation ;
DELETE FROM Cancellation C WHERE C.name = 'sai';
SELECT * FROM Cancellation ;
