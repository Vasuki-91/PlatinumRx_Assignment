CREATE TABLE users (
    user_id VARCHAR(50),
    name VARCHAR(100),
    phone_number VARCHAR(15),
    mail_id VARCHAR(100),
    billing_address TEXT
);

CREATE TABLE bookings (
    booking_id VARCHAR(50),
    booking_date DATETIME,
    room_no VARCHAR(50),
    user_id VARCHAR(50)
);

CREATE TABLE booking_commercials (
    id VARCHAR(50),
    booking_id VARCHAR(50),
    bill_id VARCHAR(50),
    bill_date DATETIME,
    item_id VARCHAR(50),
    item_quantity FLOAT
);

CREATE TABLE items (
    item_id VARCHAR(50),
    item_name VARCHAR(100),
    item_rate FLOAT
);

INSERT INTO users VALUES 
('u1','Rahul Sharma','9876543210','rahul@gmail.com','Hyderabad'),
('u2','Priya Reddy','9123456780','priya@gmail.com','Bangalore'),
('u3','Amit Kumar','9988776655','amit@gmail.com','Chennai');

INSERT INTO bookings VALUES 
('b1','2021-11-10 10:00:00','101','u1'),
('b2','2021-11-15 12:30:00','102','u2'),
('b3','2021-10-05 09:00:00','103','u3');

INSERT INTO items VALUES 
('i1','Tawa Paratha',30),
('i2','Paneer Butter Masala',180),
('i3','Veg Biryani',150);

INSERT INTO booking_commercials VALUES 
('c1','b1','bill1','2021-11-10 11:00:00','i1',3),
('c2','b1','bill1','2021-11-10 11:00:00','i2',1),
('c3','b2','bill2','2021-11-15 13:00:00','i3',2),
('c4','b3','bill3','2021-10-05 10:00:00','i2',6);