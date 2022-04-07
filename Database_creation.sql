create database Airport;
use Airport;
show tables;

-- Create general Person table
create table Person (
	Name varchar(20) not null,
    DOB date not null,
    Gender char(1),
    Address varchar(30),
    Contact_no int(10) NOT NULL
);
desc Person;
show create table Person;

create table Pilot (
	Pilot_id varchar(10) primary key,
    Flight_id varchar(10)
);

create table Staff (
	Staff_id varchar(10) primary key,
    Flight_id varchar(10)
);

create table Passenger (
	Passenger_id varchar(10) primary key,
    Flight_id varchar(10),
    Seat_No varchar(5)
);
desc Passenger;

create table Terminal (
	Passenger_id varchar(10),
    Flight_id varchar(10),
    Boarding_time TIME not null,
    terminal_no char(5) not null
);

create table Ticket (
	Passenger_id varchar(10),
    Flight_id varchar(10),
    Flight_class varchar(10) not null
);

create table Flight (
    Flight_id varchar(10),
    Pilot_id varchar(10),
    Staff_id varchar(10),
    Passenger_id varchar(10),
    From_city varchar(20) not null,
    To_city varchar(20) not null,
    Departure_time time not null,
    Arrival_time time not null
);

alter table Terminal
add constraint FK_Terminal_Passenger foreign key (Passenger_id) references Passenger(Passenger_id);

show create table Terminal;








