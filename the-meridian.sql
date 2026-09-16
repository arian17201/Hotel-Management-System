
CREATE TABLE emp_login (
  empid int(100) NOT NULL,
  Emp_Email varchar(50) NOT NULL,
  Emp_Password varchar(50) NOT NULL
);

INSERT INTO emp_login (empid, Emp_Email, Emp_Password) VALUES
(1, 'Admin@gmail.com', '1234');


CREATE TABLE payment (
  id int(30) NOT NULL,
  Name varchar(30) NOT NULL,
  Email varchar(30) NOT NULL,
  RoomType varchar(30) NOT NULL,
  Bed varchar(30) NOT NULL,
  NoofRoom int(30) NOT NULL,
  cin date NOT NULL,
  cout date NOT NULL,
  noofdays int(30) NOT NULL,
  roomtotal double(8,2) NOT NULL,
  bedtotal double(8,2) NOT NULL,
  meal varchar(30) NOT NULL,
  mealtotal double(8,2) NOT NULL,
  finaltotal double(8,2) NOT NULL
);

INSERT INTO payment (id, Name, Email, RoomType, Bed, NoofRoom, cin, cout, noofdays, roomtotal, bedtotal, meal, mealtotal, finaltotal) VALUES
(41, 'A M Rohan', 'amrohan@gmail.com', 'Single Room', 'Single', 1, '2022-11-09', '2022-11-10', 1, 1000.00, 10.00, 'Room only', 0.00, 1010.00);



CREATE TABLE room (
  id int(30) NOT NULL,
  type varchar(50) NOT NULL,
  bedding varchar(50) NOT NULL
);


INSERT INTO room (id, type, bedding) VALUES
(4, 'Superior Room', 'Single'),
(6, 'Superior Room', 'Triple'),
(7, 'Superior Room', 'Quad'),
(8, 'Deluxe Room', 'Single'),
(9, 'Deluxe Room', 'Double'),
(10, 'Deluxe Room', 'Triple'),
(11, 'Guest House', 'Single'),
(12, 'Guest House', 'Double'),
(13, 'Guest House', 'Triple'),
(14, 'Guest House', 'Quad'),
(16, 'Superior Room', 'Double'),
(20, 'Single Room', 'Single'),
(22, 'Superior Room', 'Single'),
(23, 'Deluxe Room', 'Single'),
(24, 'Deluxe Room', 'Triple'),
(27, 'Guest House', 'Double'),
(30, 'Deluxe Room', 'Single');


CREATE TABLE roombook (
  id int(10) NOT NULL,
  Name varchar(50) NOT NULL,
  Email varchar(50) NOT NULL,
  Country varchar(30) NOT NULL,
  Phone varchar(30) NOT NULL,
  RoomType varchar(30) NOT NULL,
  Bed varchar(30) NOT NULL,
  Meal varchar(30) NOT NULL,
  NoofRoom varchar(30) NOT NULL,
  cin date NOT NULL,
  cout date NOT NULL,
  nodays int(50) NOT NULL,
  stat varchar(30) NOT NULL
);


INSERT INTO roombook (id, Name, Email, Country, Phone, RoomType, Bed, Meal, NoofRoom, cin, cout, nodays, stat) VALUES
(41, 'A M Rohan', 'amrohan@gmail.com', 'Bangladesh', '01324567890', 'Single Room', 'Single', 'Room only', '1', '2022-11-09', '2022-11-10', 1, 'Confirm');


CREATE TABLE signup (
  UserID int(100) NOT NULL,
  Username varchar(50) NOT NULL,
  Email varchar(50) NOT NULL,
  Password varchar(50) NOT NULL
);

INSERT INTO signup (UserID, Username, Email, Password) VALUES
(1, 'A M Rohan', 'amrohan@gmail.com', '123');


CREATE TABLE staff (
  id int(30) NOT NULL,
  name varchar(30) NOT NULL,
  work varchar(30) NOT NULL
);

INSERT INTO staff (id, name, work) VALUES
(1, 'A M Rohan', 'Manager'),
(3, 'riazul islam', 'Cook'),
(4, 'fahim', 'Cook'),
(5, 'adib', 'Helper'),
(6, 'tanim', 'Helper'),
(7, 'abrar', 'cleaner'),
(8, 'riad', 'weighter'),
(9, 'maria', 'weighter'),
(10, 'nikunjo', 'weighter'),
(11, 'rekha', 'Cook');

ALTER TABLE emp_login
  ADD PRIMARY KEY (empid);

ALTER TABLE payment
  ADD PRIMARY KEY (id);

ALTER TABLE room
  ADD PRIMARY KEY (id);

ALTER TABLE roombook
  ADD PRIMARY KEY (id);

ALTER TABLE signup
  ADD PRIMARY KEY (UserID);

ALTER TABLE staff
  ADD PRIMARY KEY (id);

ALTER TABLE emp_login
  MODIFY empid int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE room
  MODIFY id int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

ALTER TABLE roombook
  MODIFY id int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

ALTER TABLE signup
  MODIFY UserID int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
  
ALTER TABLE staff
  MODIFY id int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;
