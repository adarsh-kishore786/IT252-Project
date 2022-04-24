select * from Flight;
select * from Passenger;
select * from Pilot;
select * from Staff;
select * from Terminal;
select * from Ticket;

DELIMITER $$
CREATE TRIGGER `Flight_Terminal` 
after insert 
ON Ticket FOR EACH ROW
BEGIN 
insert into Terminal values
("T1", new.Ticket_id, "00:00:00");
END
$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER `Flight_Passenger` 
after delete 
ON Flight FOR EACH ROW
BEGIN 
	if (old.Departure_time < now() and old.Arrival_time > now()) then
    insert into Flight values
	(old.Flight_id, old.Pilot_id, old.Staff_id, old.Passenger_id, old.From_city, old.To_city, old.Departure_time, old.Arrival_time);
	end if;
end$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER `Cities` 
after update 
ON Flight FOR EACH ROW
BEGIN 
	if (new.From_city = new.To_city) then
	update Flight
	set new.From_city = old.From_city,
	new.To_city = old.To_city;
	end if;
end$$
DELIMITER ;