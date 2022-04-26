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