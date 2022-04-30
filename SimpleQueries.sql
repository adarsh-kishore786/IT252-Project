-- display pilots born before January 1, 1990
SELECT Pilot_id, Name FROM Pilot WHERE DOB < '1990-01-01';

-- display all flight_id's  departing from Pune or Mumbai
SELECT Flight_id FROM Flight WHERE From_city IN ('Pune', 'Mumbai');

-- Wont work with updated schema :`(
-- display count of passengers arriving in Mangalore
SELECT COUNT(Passenger_id) FROM Passenger WHERE To_city = 'Mangalore';

-- display the terminal numbers that have boarding time after 9am
SELECT DISTINCT Terminal_no FROM Terminal WHERE Boarding_time > '09:00:00';

-- display number of passengers travelling FirstClass
SELECT COUNT(Passenger_id) FROM Ticket WHERE Flight_class = 'FirstClass';
