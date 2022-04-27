DELIMITER $$
create procedure flying_flights()
begin
select * from Flight where
Departure_time < now() && now() < Arrival_time;
end $$
delimiter ;

delimiter $$
create procedure busy_people()
begin
	select P.*, T.Ticket_id from Passenger P join Ticket T 
    on P.Passenger_id = T.Passenger_id 
    where (select count(T1.Ticket_id) 
    from Ticket T1 join Passenger P1 
    on T1.Passenger_id = P1.Passenger_id 
    where P1.Passenger_id = P.Passenger_id) > 1;
end $$
delimiter ;