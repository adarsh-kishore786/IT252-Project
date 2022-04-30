-- Select Pilots Details who will have to fly planes with departure_time in the morning
SELECT Pilot_id,Flight_id,Name as Pilot_name from Pilot where Pilot.Flight_id in (SELECT distinct(Flight.Flight_id) FROM Flight WHERE Departure_time < "12:00:00");

-- Select Staff Details who will have to fly planes with departure_time in the morning
SELECT Staff_id,Flight_id, Name as Staff_name from Staff where Staff.Flight_id in (SELECT distinct(Flight.Flight_id) FROM Flight WHERE Departure_time < "12:00:00");

-- Select Passenger Details who will have to board planes with departure_time in the morning
SELECT * from Passenger where Passenger_id in (SELECT Passenger_id from Ticket where Ticket.Flight_id in (SELECT distinct(Flight.Flight_id) FROM Flight WHERE Departure_time < "12:00:00"));

-- Find the bifurcation between number of morning and evening tickets
SELECT * FROM
(SELECT count(*) as TicketsInEvening from Ticket where Ticket.Flight_id in (SELECT distinct(Flight.Flight_id) FROM Flight WHERE Departure_time >= "12:00:00")) EveningTickets ,
(SELECT count(*) as TicketsInMorning from Ticket where Ticket.Flight_id in (SELECT distinct(Flight.Flight_id) FROM Flight WHERE Departure_time < "12:00:00")) MorningTickets,
(SELECT count(*) as TotalTickets FROM Ticket)  TotalTickets;
