-- Select Pilots Details who will have to fly planes with departure_time in the morning
SELECT Pilot_id,Flight_id,Name as Pilot_name from Pilot where Pilot.Flight_id in (SELECT distinct(Flight.Flight_id) FROM Flight WHERE Departure_time < "12:00:00");
