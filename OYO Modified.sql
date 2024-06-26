Create database OYO;
Use OYO;

-- Create tables
CREATE TABLE Hotel (
    HID INT PRIMARY KEY,
    Hname VARCHAR(50) not null,
    Rating FLOAT,
    Address VARCHAR(50) not null ,
    No_of_Rooms INT ,
    Contact_Number VARCHAR(20) not null
);

CREATE TABLE Room (
    Room_no INT,
    RID INT not null,
    Room_Type VARCHAR(20) not null,
    Price INT not null,
    Description VARCHAR(50),
    FOREIGN KEY (RID) REFERENCES Hotel(HID)
);

CREATE TABLE Customer (
    CID INT PRIMARY KEY,
    Cname VARCHAR(50) ,
    username varchar(50) not null ,
    password varchar(70) not null,
    contact varchar(20) not null,
    Address VARCHAR(50),
    Registration_Date DATE not null
);

CREATE TABLE Booking (
    BID INT PRIMARY KEY,
    HID INT not null,
    CID INT not null,
    Price_Per_hour INT not null,
    RID INT not null,
    Check_Out DATE,
    Check_In DATE,
    FOREIGN KEY (HID) REFERENCES Hotel(HID),
    FOREIGN KEY (CID) REFERENCES Customer(CID)
);

CREATE TABLE Payment (
    PID INT PRIMARY KEY,
    CID INT  not null,
    Payment_Mode VARCHAR(20) not null,
    Amount INT,
    Status VARCHAR(20) not null,
    Date DATE,
    BID INT not null,
    FOREIGN KEY (CID) REFERENCES Customer(CID),
    FOREIGN KEY (BID) REFERENCES Booking(BID)
);

-- Insert into Hotel
INSERT INTO Hotel (HID, Hname, Rating, Address, No_of_Rooms, Contact_Number)
VALUES
    (101, 'Hotel Leela', 4.5, 'Mumbai', 100, '022-12345678'),
    (102, 'Hotel Taj', 4.8, 'Delhi', 150, '011-98765432'),
    (103, 'Hotel Oberoi', 4.9, 'Bangalore', 120, '080-11122233'),
    (104, 'Hotel Hyatt', 4.7, 'Hyderabad', 110, '040-33344444'),
    (105, 'Hotel Marriott', 4.6, 'Chennai', 130, '044-55566666'),
    (106, 'Hotel Marriott', 4.6, 'Mumbai', 130, '044-55566644'),
    (107, 'Hotel Taj', 4.6, 'Chennai', 130, '066-55566666'),
    (108, 'Hotel Taj', 4.6, 'Hyderabad', 130, '044-55569999'),
    (109, 'Hotel Leela', 4.6, 'Chennai', 130, '044-55888899'),
    (110, 'Hotel Leela', 4.6, 'Hyderabad', 130, '044-55555566'),
    (111, 'Hotel Oberoi', 4.6, 'Hyderabad', 130, '044-55334446'),
    (112, 'Hotel Marriott', 4.6, 'Chennai', 130, '044-00066666'),
    (113, 'Hotel Taj', 4.6, 'Mumbai', 130, '044-55599999'),
    (114, 'Hotel Taj', 4.6, 'Gurugram', 130, '044-55566888'),
    (115, 'Hotel Oberoi', 4.6, 'Chennai', 130, '044-55566000'),
    (116, 'Hotel Leela', 4.6, 'Delhi', 130, '044-55566777'),
    (117, 'Hotel Sangwan', 4.6, 'Chennai', 130, '044-55567766'),
    (118, 'Hotel Maria', 4.6, 'Chennai', 130, '044-55500066'),
    (119, 'Hotel Maria', 4.6, 'Delhi', 130, '044-55511116'),
    (120, 'Hotel leela', 4.6, 'Banglore', 130, '055-55566666'),
    (121, 'Hotel Vivanta', 4.6, 'Banglore', 430, '044-57776666'),
    (122, 'Hotel Vivanta', 4.6, 'Chennai', 120, '044-66566666'),   
    (123, 'Hotel raj', 4.6, 'Chennai', 120, '044-55577766'),
    (124, 'Hotel raj', 4.6, 'Banglore', 110, '044-55566446'),
    (125, 'Hotel leela', 4.6, 'Chennai', 140, '044-55566444');

-- Insert into Room
INSERT INTO Room (Room_no, RID, Room_Type, Price, Description)
VALUES
    ('101', 101, 'Single', 2000, 'Non-AC'),
    ('102', 101, 'Double', 3000, 'AC'),
    ('103', 101, 'Deluxe', 5000, 'Spacious room with city view'),
    ('105', 101, 'Suite', 8000, 'Luxurious suite with living area and Jacuzzi'),
    ('106', 101, 'Single', 2500, 'Basic room with AC'),
    ('107', 101, 'Double', 3500, 'Double bed with AC and city view'),
    ('109', 101, 'Single', 2200, 'Non-AC room with garden view'),
    ('104', 102, 'Suite', 7800, 'Luxury suite with panoramic view'),
    ('105', 102, 'Single', 2300, 'Standard single room with garden view'),
    ('106', 102, 'Deluxe', 5300, 'Deluxe room with modern amenities'),
    ('107', 102, 'Double', 3400, 'Spacious room with AC and mountain view'),
    ('109', 102, 'Single', 2200, 'Non-AC room with courtyard view'),
    ('110', 102, 'Double', 3100, 'Double room with cityscape'),
    ('101', 103, 'Single', 2150, 'Cozy room with AC'),
    ('102', 103, 'Double', 3250, 'Double bed with garden view'),
    ('104', 103, 'Deluxe', 5700, 'Deluxe room with balcony'),
    ('101', 104, 'Single', 2200, 'Non-AC room with city view'),
    ('103', 104, 'Double', 3400, 'Double bed with mountain view'),
    ('105', 104, 'Deluxe', 5800, 'Deluxe room with sea view'),
    ('110', 104, 'Suite', 8500, 'Luxurious suite with panoramic view'),
    ('112', 104, 'Single', 2400, 'Standard single room with garden view'),
    ('101', 105, 'Single', 2250, 'Cozy room with AC and courtyard view'),
    ('102', 105, 'Double', 3500, 'Spacious room with cityscape'),
    ('104', 105, 'Deluxe', 5900, 'Deluxe room with pool access'),
    ('102', 106, 'Double', 3600, 'Double bed with mountain view'),
    ('103', 106, 'Deluxe', 6000, 'Deluxe room with sea view'),
    ('105', 106, 'Suite', 9200, 'Luxury suite with cityscape'),
    ('107', 106, 'Single', 2500, 'Standard single room with garden view'),
    ('101', 107, 'Single', 2350, 'Basic room with AC and city view'),
    ('104', 107, 'Double', 3700, 'Double bed with sea view'),
    ('105', 107, 'Deluxe', 6200, 'Deluxe room with balcony'),
    ('110', 107, 'Suite', 8900, 'Executive suite with living area and mountain view'),
    ('112', 107, 'Single', 2550, 'Economy single room with essential amenities'),
    ('101', 108, 'Single', 2400, 'Non-AC room with garden view'),
    ('102', 108, 'Double', 3800, 'Double bed with courtyard view'),
    ('107', 108, 'Single', 2600, 'Standard single room with AC'),
    ('101', 109, 'Single', 2450, 'Cozy room with AC and garden view'),
    ('103', 109, 'Double', 3900, 'Spacious room with cityscape'),
    ('105', 109, 'Deluxe', 6500, 'Deluxe room with pool access'),
    ('106', 109, 'Suite', 9800, 'Executive suite with living area and sea view'),
    ('112', 109, 'Single', 2650, 'Economy single room with essential amenities'),
    ('101', 110, 'Single', 2500, 'Compact room with AC'),
    ('102', 110, 'Double', 4000, 'Double bed with mountain view'),
    ('104', 110, 'Deluxe', 6800, 'Deluxe room with cityscape'),
    ('110', 111, 'Suite', 9100, 'Executive suite with living area and mountain view'),
    ('112', 111, 'Single', 2750, 'Economy single room with essential amenities'),
    ('101', 112, 'Single', 2600, 'Non-AC room with garden view'),
    ('102', 112, 'Double', 4200, 'Double bed with courtyard view'),
    ('104', 112, 'Deluxe', 7100, 'Deluxe room with cityscape');

    
    
-- Insert into Customer
INSERT INTO Customer 
VALUES
	(1, 'Saurav', '123', 'Saurav299405', '9876543210', 'Mumbai', '2022-01-01'),
	(2, 'Uttam', '124', 'Uttam299405', '1112223333', 'Delhi', '2022-02-01'),
	(3, 'Hardik', '125', 'Hardik299405', '3334445555', 'Bangalore', '2022-03-01'),
	(4, 'Japjot', '126', 'Japjot299405', '4445556666', 'Hyderabad', '2022-04-01'),
	(5, 'Vansh', '127', 'Vansh299405', '5556667777', 'Chennai', '2022-05-01'),
	(6, 'Tarun', '128', 'Tarun299405', '6667778888', 'Mumbai', '2022-06-01'),
	(7, 'Rashmi', '129', 'Rashmi299405', '7778889999', 'Delhi', '2022-07-01'),
	(8, 'Sashaki', '130', 'Sashaki299405', '8889990000', 'Bangalore', '2022-08-01'),
	(9, 'Raj', '131', 'Raj299405', '9990001111', 'Hyderabad', '2022-09-01'),
	(10, 'Rahul', '132', 'Rahul299405', '0001112222', 'Chennai', '2022-10-01'),
	(11, 'Tanisha', '133', 'Tanisha299405', '7700001111', 'Hyderabad', '2022-08-05'),
	(12, 'Rohan', '134', 'Rohan299405', '7690001111', 'Delhi', '2022-09-08'),
	(13, 'Ashima', '135', 'Ashima299405', '7658423222', 'Rohtak', '2022-09-11'),
	(14, 'Ananya', '136', 'Ananya299405', '6759992341', 'Gurugram', '2022-09-02'),
	(15, 'Kareena', '137', 'Kareena299405', '8980001111', 'Hyderabad', '2022-07-11'),
	(16, 'Rashi', '138', 'Rashi299405', '8666645641', 'Indore', '2023-05-02'),
	(17, 'Anshuman', '139', 'Anshuman299405', '9999901111', 'Ranchi', '2023-04-03'),
	(18, 'Praygraj', '140', 'Praygraj299405', '9990011111', 'delhi', '2024-01-02'),
	(19, 'Rishi', '141', 'Rishi299405', '9990002211', 'Manali', '2023-06-11'),
	(20, 'Bunty', '142', 'Bunty299405', '9994444441', 'Jaipur', '2023-06-23'),
	(21, 'Sanju', '143', 'Sanju299405', '9966780011', 'Jaipur', '2023-06-26'),
	(22, 'Isha', '144', 'Isha299405', '9567771111', 'Hyderabad', '2023-06-15'),
	(23, 'Ishika', '145', 'Ishika299405', '9450001111', 'Hyderabad', '2023-07-09'),
	(24, 'Sorabh', '146', 'Sorabh299405', '9990001441', 'Indore', '2022-09-09'),
	(25, 'Ananjay', '147', 'Ananjay299405', '9990001133', 'Hyderabad', '2022-08-21'),
	(26, 'Ashwini', '148', 'Ashwini299405', '9990001122', 'Mumbai', '2023-09-22'),
	(27, 'Sahil', '149', 'Sahil299405', '9990001112', 'Mumbai', '2022-09-01'),
    (28, 'Vineeta','150', 'Vineeta299405','9234567811', 'Delhi', '2023-11-11'),
    (29, 'Priya','151','Priya299405', '9990001111', 'Hyderabad', '2022-09-29'),
    (30, 'Priyanka', '152','Priyanka299405','9990456781', 'Mumbai', '2023-02-28'),
    (31, 'Priyanshu','153', 'Priyanshu299405','9990987651', 'Chandigarh', '2023-07-30'),
    (32, 'Armaan', '154','Armaan299405','9456701111', 'Chandigrah', '2023-09-26'),
    (33, 'Dhruv','155', 'Dhruv299405','9990321411', 'Gurugram', '2022-09-01'),
    (34, 'Ashutosh','156', 'Ashutosh299405','9990056781', 'Chennai', '2023-04-04'),
    (35, 'Akhil','157','Akhil299405', '9334987957', 'Delhi', '2022-09-01'),
    (36, 'Anushka','158','Anushka299405', '9596857223', 'Indore', '2023-03-22'),
    (37, 'Kunal', '159','Kunal299405','4683629400', 'Hyderabad', '2022-09-01'),
    (38, 'Mahdav', '160','Madhav299405','94567231', 'Delhi', '2023-11-23'),
    (39, 'Piyansh','162','Piyansh299405', '944489000', 'Hyderabad', '2023-12-01'),
    (40, 'Vishal','163', 'Vishal299405','9934567890', 'Chennai', '2022-09-01'),
    (41, 'Rohan', '164','Roshan299405','912321324', 'Hyderabad', '2022-09-01'),
    (42, 'Sumit', '165','Sumit299405','823412312', 'Hyderabad', '2022-09-01'),
    (43, 'Rakul','166', 'Rakul299405','789564444', 'Hyderabad', '2022-09-01'),
    (44, 'Ajay', '167','Ajay299405','9443356704', 'Mumbai', '2022-09-01'),
    (45, 'Riya', '168','Riya299405','9922100012', 'Hyderabad', '2022-09-01'),
    (46, 'Tannu','169','Tannu299405', '8779097807', 'Delhi', '2022-08-01'),
    (47, 'Aruhi','170','Aruhi299405', '9456757576', 'Chennai', '2022-09-01'),
    (48, 'Chavi', '171','Chavi299405','9996557511', 'Gurugram', '2022-05-01'),
    (49, 'Shreya','172','Shreya299405', '9940001111', 'Delhi', '2022-09-05'),
    (50, 'Aruhi','173','Aruhi299405', '9996001671', 'Hyderabad', '2022-09-07');

-- Insert into Booking
INSERT INTO Booking (BID, HID, CID, Price_Per_hour, RID, Check_Out, Check_In)
VALUES
    (1001, 101, 1, 100, 101, '2022-01-15', '2022-01-10'),
    (1002, 103, 2, 120, 103, '2022-02-15', '2022-02-10'),
    (1003, 105, 3, 110, 105, '2022-03-15', '2022-03-10'),
    (1004, 107, 4, 130, 107, '2022-04-10', '2022-04-10'),
    (1005, 109, 5, 140, 109, '2022-05-11', '2022-05-10'),
    (1006, 101, 6, 100, 101, '2022-06-15', '2022-06-14'),
    (1007, 103, 7, 120, 103, '2022-07-15', '2022-07-11'),
    (1008, 105, 8, 110, 105, '2022-08-15', '2022-08-14'),
    (1009, 107, 9, 130, 107, '2022-09-15', '2022-09-14'),
    (1010, 109,10, 140, 109, '2022-10-15', '2022-10-13'),
    (1011, 101, 11, 150, 101, '2022-10-15', '2022-10-12'),
    (1012, 102, 12, 140, 102, '2022-10-15', '2022-10-12'),
    (1013, 103, 13, 50, 103, '2022-10-15', '2022-10-10'),
    (1014, 102, 14, 60, 102, '2022-10-15', '2022-10-10'),
    (1015, 105, 15, 40, 105, '2022-10-15', '2022-10-10'),
    (1016, 109, 16, 70, 109, '2022-10-15', '2022-10-10'),
    (1017, 105, 17, 40, 105, '2022-10-15', '2022-10-10'),
    (1018, 109, 18, 190, 109, '2022-10-15', '2022-10-10'),
    (1019, 109, 19, 90, 109, '2022-10-15', '2022-10-10'),
    (1020, 103, 20, 100, 103, '2022-10-15', '2022-10-10'),
    (1021, 107, 21, 120, 107, '2022-10-15', '2022-10-10'),
    (1022, 109, 22, 110, 109, '2023-10-15', '2023-11-14'),
    (1023, 111, 23, 120, 111, '2022-10-15', '2022-10-10'),
    (1024, 112, 24, 110, 112, '2022-10-15', '2022-10-10'),
    (1025, 101, 25, 100, 101, '2023-10-15', '2023-10-10'),
    (1026, 106, 26, 90, 106, '2022-10-15', '2022-10-10'),
    (1027, 108, 27, 60, 108, '2022-11-15', '2022-11-10'),
    (1028, 112, 28, 140, 112, '2023-10-15', '2023-10-10'),
    (1029, 112, 29, 120, 112, '2022-12-15', '2022-10-10'),
    (1030, 115, 30, 140, 115, '2022-10-15', '2022-10-10'),
    (1031, 113, 31, 140, 113, '2022-10-15', '2022-10-10'),
    (1032, 120, 32, 130, 120, '2022-10-15', '2022-10-10'),
    (1033, 119, 33, 140, 119, '2022-10-17', '2022-10-16'),
    (1034, 104, 34, 160, 104, '2022-10-15', '2022-10-10'),
    (1035, 105, 35, 110, 105, '2022-09-19', '2022-09-17'),
    (1036, 101, 36, 110, 101, '2022-10-20', '2022-10-18'),
    (1037, 107, 37, 100, 107, '2022-12-15', '2022-12-15'),
    (1038, 109, 38, 90, 109, '2022-10-15', '2022-10-10'),
    (1039, 101, 39, 180, 101, '2022-10-15', '2022-10-10'),
    (1040, 116, 40, 140, 116, '2022-10-15', '2022-10-10'),
    (1041, 105, 41, 200, 105, '2022-07-15', '2022-07-10'),
    (1042, 122, 42, 90, 122, '2022-10-25', '2022-10-22'),
    (1043, 109, 43, 160, 109, '2022-10-15', '2022-10-10'),
    (1044, 122, 44, 180, 122, '2022-01-15', '2022-01-16'),
    (1045, 105, 45, 140, 105, '2022-10-20', '2022-10-17'),
    (1046, 123, 46, 120, 123, '2022-01-15', '2022-01-15'),
    (1047, 106, 47, 110, 106, '2022-10-19', '2022-10-18'),
    (1048, 102, 48, 100, 102, '2022-10-21', '2022-10-19'),
    (1049, 106, 49, 190, 106, '2022-10-19', '2022-10-19'),
    (1050, 101, 50, 100, 101, '2022-10-15', '2022-10-14');
    

-- Insert into Payment
INSERT INTO Payment (PID, CID, Payment_Mode, Amount, Status, Date, BID)
VALUES
    (2001, 1, 'Credit Card', 3000, 'Paid', '2022-01-10', 1001),
    (2002, 2, 'Debit Card', 3600, 'Paid', '2022-02-10', 1002),
    (2003, 3, 'Cash', 4400, 'Paid', '2022-03-10', 1003),
    (2004, 4, 'Net Banking', 3900, 'Paid', '2022-04-10', 1004),
    (2005, 5, 'Credit Card', 5600, 'Paid', '2022-05-10', 1005),
    (2006, 6, 'Debit Card', 2000, 'Paid', '2022-06-14', 1006),
    (2007, 7, 'Credit Card', 2400, 'Paid', '2022-07-11', 1007),
    (2008, 8, 'Cash', 3300, 'Paid', '2022-08-14', 1008),
    (2009, 9, 'Net Banking', 3900, 'Paid', '2022-09-14', 1009),
    (2010, 10, 'Credit Card', 5600, 'Paid', '2022-10-13', 1010),
    (2011, 11, 'Debit Card', 4500, 'Paid', '2022-10-12', 1011),
    (2012, 12, 'Credit Card', 4200, 'Paid', '2022-10-12', 1012),
    (2013, 13, 'Cash', 2500, 'Paid', '2022-10-10', 1013),
    (2014, 14, 'Net Banking', 3000, 'Paid', '2022-10-10', 1014),
    (2015, 15, 'Credit Card', 1600, 'Paid', '2022-10-10', 1015),
    (2016, 16, 'Debit Card', 4900, 'Paid', '2022-10-10', 1016),
    (2017, 17, 'Cash', 3000, 'Paid', '2022-10-10', 1017),
    (2018, 18, 'Net Banking', 5700, 'Paid', '2022-10-10', 1018),
    (2019, 19, 'Credit Card', 3400, 'Paid', '2022-10-10', 1019),
    (2020, 20, 'Debit Card', 2800, 'Paid', '2022-10-10', 1020),
    (2021, 21, 'Credit Card', 3600, 'Paid', '2022-10-10', 1021),
    (2022, 22, 'Cash', 4200, 'Paid', '2023-11-14', 1022),
    (2023, 23, 'Net Banking', 2900, 'Paid', '2022-10-10', 1023),
    (2024, 24, 'Credit Card', 3300, 'Paid', '2022-10-10', 1024),
    (2025, 25, 'Debit Card', 2000, 'Paid', '2023-10-10', 1025),
    (2026, 26, 'Credit Card', 1800, 'Paid', '2022-10-10', 1026),
    (2027, 27, 'Cash', 3600, 'Paid', '2022-11-10', 1027),
    (2028, 28, 'Net Banking', 4200, 'Paid', '2023-10-10', 1028),
    (2029, 29, 'Credit Card', 2500, 'Paid', '2022-12-15', 1029),
    (2030, 30, 'Debit Card', 5600, 'Paid', '2022-10-10', 1030),
    (2031, 31, 'Credit Card', 3400, 'Paid', '2022-10-10', 1031),
    (2032, 32, 'Net Banking', 3900, 'Paid', '2022-10-10', 1032),
    (2033, 33, 'Credit Card', 4200, 'Paid', '2022-10-16', 1033),
    (2034, 34, 'Cash', 4800, 'Paid', '2022-10-10', 1034),
    (2035, 35, 'Net Banking', 3300, 'Paid', '2022-09-17', 1035),
    (2036, 36, 'Credit Card', 2000, 'Paid', '2022-10-18', 1036),
    (2037, 37, 'Debit Card', 3000, 'Paid', '2022-12-15', 1037),
    (2038, 38, 'Credit Card', 4200, 'Paid', '2022-10-10', 1038),
    (2039, 39, 'Cash', 4500, 'Paid', '2022-10-10', 1039),
    (2040, 40, 'Net Banking', 5000, 'Paid', '2022-10-10', 1040),
    (2041, 41, 'Credit Card', 6000, 'Paid', '2022-07-10', 1041),
    (2042, 42, 'Debit Card', 2800, 'Paid', '2022-10-22', 1042),
    (2043, 43, 'Credit Card', 4800, 'Paid', '2022-10-10', 1043),
    (2044, 44, 'Cash', 5900, 'Paid', '2022-01-16', 1044),
    (2045, 45, 'Net Banking', 3000, 'Paid', '2022-10-17', 1045),
    (2046, 46, 'Credit Card', 3300, 'Paid', '2022-01-15', 1046),
    (2047, 47, 'Debit Card', 2800, 'Paid', '2022-10-18', 1047),
    (2048, 48, 'Credit Card', 1800, 'Paid', '2022-10-19', 1048),
    (2049, 49, 'Net Banking', 2900, 'Paid', '2022-10-19', 1049),
    (2050, 50, 'Cash', 3200, 'Paid', '2022-10-14', 1050);
    
-- Select statements
SELECT * FROM Hotel;
SELECT * FROM Room;
SELECT * FROM Customer;
SELECT * FROM Booking;
SELECT * FROM Payment;