CREATE TABLE clinics (
    cid VARCHAR(50),
    clinic_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE customer (
    uid VARCHAR(50),
    name VARCHAR(100),
    mobile VARCHAR(15)
);

CREATE TABLE clinic_sales (
    oid VARCHAR(50),
    uid VARCHAR(50),
    cid VARCHAR(50),
    amount FLOAT,
    datetime DATETIME,
    sales_channel VARCHAR(50)
);

CREATE TABLE expenses (
    eid VARCHAR(50),
    cid VARCHAR(50),
    description VARCHAR(100),
    amount FLOAT,
    datetime DATETIME
);

INSERT INTO clinics VALUES
('c1','Apollo Clinic','Hyderabad','Telangana','India'),
('c2','Care Hospital','Bangalore','Karnataka','India');

INSERT INTO customer VALUES
('u1','Rahul Sharma','9876543210'),
('u2','Priya Reddy','9123456780');

INSERT INTO clinic_sales VALUES
('o1','u1','c1',2000,'2021-10-10 10:00:00','Online'),
('o2','u2','c2',3000,'2021-10-15 11:00:00','Offline');

INSERT INTO expenses VALUES
('e1','c1','Medicines',500,'2021-10-10 09:00:00'),
('e2','c2','Salary',1000,'2021-10-15 09:00:00');