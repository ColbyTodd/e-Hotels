-- ----------------------------
-- Query 1
-- ----------------------------
SELECT * FROM customer
INNER JOIN rent
ON customer.id = rent.customer_id;

-- ----------------------------
-- Query 2
-- ----------------------------
SELECT * FROM hotel
WHERE city = 'Toronto';

-- ----------------------------
-- Aggregate Query
-- ----------------------------
SELECT hotel_id, count(hotel_id) FROM room
GROUP BY hotel_id;

-- ----------------------------
-- Nested Query
-- ----------------------------
SELECT id, full_name, role FROM EMPLOYEE
WHERE id IN (SELECT id FROM EMPLOYEE WHERE role = 'manager');