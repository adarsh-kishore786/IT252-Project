-- Nested :-
-- Select Passenger Details who will have to board planes with departure_time in the morning
SELECT * from Passenger where Passenger_id in (SELECT Passenger_id from Ticket where Ticket.Flight_id in (SELECT distinct(Flight.Flight_id) FROM Flight WHERE Departure_time < "12:00:00"));

-- Find the bifurcation between number of morning and evening tickets
SELECT * FROM
  (SELECT count(*) as TicketsInEvening from Ticket where Ticket.Flight_id in (SELECT distinct(Flight.Flight_id) FROM Flight WHERE Departure_time >= "12:00:00")) EveningTickets ,
  (SELECT count(*) as TicketsInMorning from Ticket where Ticket.Flight_id in (SELECT distinct(Flight.Flight_id) FROM Flight WHERE Departure_time < "12:00:00")) MorningTickets,
  (SELECT count(*) as TotalTickets FROM Ticket)  TotalTickets;





-- Joins :-

-- display count of passengers arriving in Mangalore
SELECT P.* FROM Passenger P join Ticket T on P.Passenger_id = T.Passenger_id join Flight F on F.Flight_id = T.Flight_id where F.To_city = "Mangalore";
