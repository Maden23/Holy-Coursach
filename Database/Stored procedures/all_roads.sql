CREATE PROCEDURE `all_roads` ()
BEGIN
	select x1, y1, x2, y2 from 
	(select x as x1, y as y1, edges.id_edge as id from locations
				inner join edges on id = edges.first_node
				order by id)
	t1,
	(select x as x2, y as y2, edges.id_edge as id from locations
				inner join edges on id = edges.second_node
				order by id)
	t2
	where t1.id = t2.id
	order by t1.id;
END