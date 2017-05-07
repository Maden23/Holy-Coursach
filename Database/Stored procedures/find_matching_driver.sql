CREATE DEFINER=`root`@`localhost` PROCEDURE `find_matching_driver`(distance_array varchar(500), order_id int)
BEGIN
drop temporary table if exists driver_search;
create temporary table driver_search (id int, available int, dist int, comfort_rate int, passengers int, baby_seat int, wide_trunk int);

-- Расформироваем строку в таблицу driver_dist (id-distance)
call get_drivers_distance_data (distance_array);
 
-- Объединяем таблицы driver_dist, driver, cars -> driver_search
insert into driver_search
	select d.id as id, available, dist, comfort_rate, passengers, baby_seat, wide_trunk 
		from drivers d join cars c on d.car_id = c.id
					   join driver_dist t on d.id = t.id;
-- Создаем выборку водителей, соответвствующих параметрам из заказа
select ds.id, ds.available, dist, ds.comfort_rate, ds.passengers, ds.baby_seat, ds.wide_trunk from driver_search as ds
	inner join orders o where o.id = order_id and 
		ds.available = 1 and ds.passengers >= o.passengers and ds.baby_seat >= ds.baby_seat and ds.wide_trunk = o.wide_trunk and abs(ds.comfort_rate-o.comfort.rate) <= 1
    order by dist;
-- выбрать водителей подходящих по параметрам


END