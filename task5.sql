DROP FUNCTION IF EXISTS DivideHalf;
DELIMITER //
CREATE FUNCTION DivideHalf(num1 FLOAT, num2 FLOAT)
RETURNS FLOAT 
READS SQL DATA
BEGIN
    RETURN num1 / num2;
END//
DELIMITER ;

SELECT order_id, quantity, DivideHalf(quantity, 2) AS a FROM order_details
ORDER BY a DESC;