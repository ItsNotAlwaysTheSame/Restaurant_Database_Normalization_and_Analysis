

-- Inserts INTO table RESTAURANT 
INSERT INTO RESTAURANT  VALUES ('123', 'Bob Jones', 'Paul Smith', 'Mary Doe', 'NE', 'Northeast', 50);
INSERT INTO RESTAURANT  VALUES ('124', 'Bill Barker', 'James Pierce', 'Bob Jones', 'NE', 'Northeast', 200);
INSERT INTO RESTAURANT  VALUES ('125', 'Mary Doe', NULL, NULL, 'SW', 'Southwest',175);
INSERT INTO RESTAURANT  VALUES ('126', 'Mary Doe', 'Mike Myers', NULL, 'SW','Southwest',100);
INSERT INTO RESTAURANT  VALUES ('454', 'Mary Doe', 'Mike Myers', NULL, 'NE','Northeast',145);
INSERT INTO RESTAURANT  VALUES ('326', 'Mary Doe', 'Mike Myers', NULL, 'SW','Southwest',322);
INSERT INTO RESTAURANT  VALUES ('789', 'Mary Doe', 'Mike Myers', NULL, 'NE','Northeast',678);



-- Inserts INTO table Dessert 
INSERT INTO DESSERT  VALUES ('AB','Scary Sundae', 'Lots of licorice, bats, and hot fudge over broomshaped cookies', 'Holiday Cookie', 'Spooky Hot Chocolate', 'Hot fudge',2.95);
INSERT INTO DESSERT  VALUES ('BC','Banana Split', 'Three large scoops of ice cream with two fresh bananas and an unbelievable number of toppings, including hot fudge and strawberry', ' Frozen Fruit', NULL, 'Hot fudge', 4.95);
INSERT INTO DESSERT  VALUES ('EE','Summer Refresher', 'Lots of different types of fruits, all put INTO a blender', ' Seasonal Fruit',NULL, 'Cherries', 1.95);

/*Inserts INTO table Booth */
INSERT INTO BOOTH VALUES ('BOOTH_AB', '123','Y', 4, 'T', 'Table');
INSERT INTO BOOTH  VALUES ('BOOTH_BC', '123', 'Y', 6, 'E', 'Bench');
INSERT INTO BOOTH  VALUES ('BOOTH_AD', '125', 'N', 2, 'T', 'Table');
INSERT INTO BOOTH VALUES ('BOOTH_AE', '124','Y', 8, 'T', 'Table');


-- Inserts INTO table OFFER 

INSERT INTO OFFER  VALUES ('AB', '1999-10-1 - 1999-10-31','454');

INSERT INTO OFFER VALUES ('BC','1996-1-1 - 2002-12-31','789');

INSERT INTO OFFER VALUES ('EE','2001-6-1 - 2001-9-1','789');



-- Inserts INTO table BILL 

INSERT INTO BILL (BILL_ID, BOOTHCODE, DESSERT_CODE, RESTAURANT_ID, BILL_DATE_AND_TIME, BILL_AMOUNT, GRATUITY_AMOUNT) VALUES 
('20', 'BOOTH_AB', 'AB', '454','1999-10-12 20:34:59', 320, 20);

INSERT INTO BILL VALUES ('29', 'BOOTH_AB', 'AB','454','1999-10-12 12:34:00', 330, 30);

INSERT INTO BILL VALUES ('27', 'BOOTH_AE', 'EE','789','2000-10-21 15:30:12', 400.50, 0.50);

INSERT INTO BILL VALUES ('77', 'BOOTH_AD', 'BC','789','2000-10-15 20:15:19', 1500.99, 80);

INSERT INTO BILL VALUES ('9', 'BOOTH_BC', 'AB','454','1999-10-10 22:25:09', 310.50, 10.50);


SELECT *FROM Dessert;
SELECT * FROM Bill; -- INTO outfile 'C:\\Downloads\\Bill.txt';  /*Security remark ==Don't create outfile as root  */
SELECT *FROM Offer;
SELECT *FROM Booth;
SELECT *FROM RESTAURANT;

