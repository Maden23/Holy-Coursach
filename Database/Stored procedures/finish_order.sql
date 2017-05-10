CREATE DEFINER=`root`@`localhost` PROCEDURE `finish_order`(order_id int)
BEGIN
declare dr int;
declare new_location int;
update orders set completed = 1 where id = order_id;
set dr = (select driver from orders where id = order_id);
set new_location = (select finish_id from orders where id = order_id);
update drivers set location = new_location where id = dr;
select x, y from locations where id = new_location;
END