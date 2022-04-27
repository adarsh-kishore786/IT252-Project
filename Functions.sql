delimiter $$
create function passenger_arrival(board time)
returns time deterministic
begin
	declare interval_time time;
    declare arrival_time time;
    select '03:00:00' into interval_time;
    select subtime(board, interval_time) into arrival_time;
    
    if (board < '03:00:00') then 
	set arrival_time = addtime(arrival_time, '24:00:00');
    end if;
	return arrival_time;
end$$
delimiter ;

delimiter $$
create function in_flight_time(dept time, arr time)
returns time deterministic
begin
	declare result time;
	select timediff(arr, dept) into result;
    if (result < '00:00:00') then
	set result = addtime(result, '24:00:00');
	end if;
    return result;
end $$
delimiter ;