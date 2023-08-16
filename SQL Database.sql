SELECT first_name, phone_number, address FROM pharmacy.customer where customer_id=1887;

SELECT DISTINCT cart.cart_id, orderr.total_amount, orderr.status
FROM cart,orderr
WHERE cart.cart_id=orderr.cart_id;

INSERT INTO customer (`customer_ID`, `first_name`,`last_name`, `phone_number`, `address`, `email_address`) VALUES ('10000', 'Abhijay','Singh', '2021309000', 'Noida', 'abhijay21226@iiitd.ac.in');

UPDATE customer SET `address` = 'Delhi' WHERE (`Customer_ID` = '10000');

INSERT INTO cart (`cart_content_id`,`cart_id`, `total_amount`) VALUES ('305','9956', '0');

INSERT INTO `pharmacy`.`cart` (`cart_content_id`, `cart_id`, `medicine_name`, `price`, `quantity`,`total_amount`) VALUES ('301', '9956', 'Doxycyclin', '250','2','500');
INSERT INTO `pharmacy`.`cart` (`cart_content_id`, `cart_id`, `medicine_name`, `price`, `quantity`,`total_amount`) VALUES ('302', '9956', 'Paracetamol', '2800','2','5600');
INSERT INTO `pharmacy`.`cart` (`cart_content_id`, `cart_id`, `medicine_name`, `price`, `quantity`,`total_amount`) VALUES ('303', '9956', 'Levocet', '3500','1','3500');
INSERT INTO `pharmacy`.`cart` (`cart_content_id`, `cart_id`, `medicine_name`, `price`, `quantity`,`total_amount`) VALUES ('304', '9956', 'MontairLC', '900','3','2700');

UPDATE inventory SET stock = stock - 2
WHERE medicine_id = '9942';

SELECT * FROM orderr WHERE order_id>60000 and orderr.status = 'Shipped' 
ORDER BY total_amount DESC;

DELETE FROM orderr 
WHERE status='Delivered' and order_date<'2005-04-22 00:00:00';

SELECT * FROM customer 
WHERE regexp_like(email_address,'google') or regexp_like(email_address,'yahoo');










