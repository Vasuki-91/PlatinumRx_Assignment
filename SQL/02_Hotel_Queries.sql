-- Q1 Find last booked room for each user
SELECT user_id, room_no
FROM (
    SELECT user_id, room_no, booking_date,
           ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY booking_date DESC) AS rn
    FROM bookings
) t
WHERE rn = 1;

-- Q2 Calculate total billing for bookings in Nov 2021
SELECT b.booking_id,
       SUM(bc.item_quantity * i.item_rate) AS total_amount
FROM bookings b
JOIN booking_commercials bc ON b.booking_id = bc.booking_id
JOIN items i ON bc.item_id = i.item_id
WHERE MONTH(b.booking_date) = 11 AND YEAR(b.booking_date) = 2021
GROUP BY b.booking_id;

-- Q3. Bills in Oct 2021 > 1000
SELECT bc.bill_id,
       SUM(bc.item_quantity * i.item_rate) AS bill_amount
FROM booking_commercials bc
JOIN items i ON bc.item_id = i.item_id
WHERE MONTH(bc.bill_date) = 10 AND YEAR(bc.bill_date) = 2021
GROUP BY bc.bill_id
HAVING SUM(bc.item_quantity * i.item_rate) > 1000;

-- Q4. Most & least ordered item per month
SELECT item_id, SUM(item_quantity) AS total_qty
FROM booking_commercials
GROUP BY item_id
ORDER BY total_qty DESC;

-- Q5 Find second highest bill
SELECT bill_id, SUM(item_quantity) as total
FROM booking_commercials
GROUP BY bill_id
ORDER BY total DESC
LIMIT 1 OFFSET 1;