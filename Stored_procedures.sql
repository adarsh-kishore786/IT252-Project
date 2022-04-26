DELIMITER $$
create procedure flying_flights()
begin
select * from Flight where
Departure_time < now() && now() < Arrival_time;
end $$
delimiter ;