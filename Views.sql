-- list out all cities reachable from Patna
create view reachable_from
as
with recursive temp (From_city, To_city, depth) as (
	select root.From_city, root.To_city, 0 as depth
    from Flight as root
    where root.From_city = "Patna"
union all
	select in1.From_city, out1.To_city, in1.depth + 1
    from temp as in1, Flight as out1
    where in1.To_city = out1.From_city and in1.depth <= 50
) select distinct From_city, To_city from temp;