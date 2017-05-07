CREATE DEFINER=`root`@`localhost` PROCEDURE `get_drivers_distance_data`(distance_array varchar(500))
BEGIN
declare i int;
declare count int;
declare coma_position int;
declare dist_str varchar (5);

drop temporary table if exists driver_dist;

-- заносим в таблицу id всех водителей
create temporary table driver_dist (id int, dist int)
	as (select id from drivers order by id);
    
-- разбиваем строку distance_array на отдельные числа
set i = 1;
set count = (select count(id) from driver_dist);
separation: loop
	if i <= count then
	-- находим первую запятую
        set coma_position = locate(',', distance_array);
	-- копируем все до запятой
        set dist_str = substring(distance_array from 1 for coma_position-1);
	-- преобразуем в число и заносим в таблицу
        update driver_dist set dist = (cast(dist_str as unsigned))
			where dist is NULL 
            order by id limit 1;		-- первая запись, где нет значения dist	
	-- оставляем все, что после запятой
        set distance_array = substring(distance_array from coma_position+1);
        set i = i + 1;     
	else
		leave separation;        
	end if;    
end loop;

-- результат
select * from driver_dist;

END