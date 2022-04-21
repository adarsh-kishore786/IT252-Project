create database Airport;
use Airport;

create table Pilot (
	Pilot_id varchar(10) primary key,
	Name varchar(20) not null,
    DOB date not null,
    Gender char(1),
    Address varchar(30),
    Contact_no long NOT NULL
);

create table Staff (
	Staff_id varchar(10) primary key,
    Name varchar(20) not null,
    DOB date not null,
    Gender char(1),
    Address varchar(30),
    Contact_no long NOT NULL
);

create table Passenger (
	Passenger_id varchar(10) primary key,
    Name varchar(20) not null,
    DOB date not null,
    Gender char(1),
    Address varchar(30),
    Contact_no long NOT NULL
);

create table Terminal (
	Terminal_no varchar(5),
	Ticket_id varchar(10),
    Boarding_time time not null,
    primary key (Terminal_no, Ticket_id, Boarding_time)
);

create table Ticket (
	Ticket_id varchar(10) primary key,
    Passenger_id varchar(10),
    Flight_class varchar(10) not null
);

create table Flight (
    Flight_id varchar(10) primary key,
    Pilot_id varchar(10),
    Staff_id varchar(10),
    Passenger_id varchar(10),
    From_city varchar(20) not null,
    To_city varchar(20) not null,
    Departure_time time not null,
    Arrival_time time not null
);

alter table Flight
add constraint FK_Flight_Pilot foreign key (Pilot_id) references Pilot(Pilot_id);

alter table Flight
add constraint FK_Flight_Passenger foreign key (Passenger_id) references Passenger(Passenger_id);

alter table Flight
add constraint FK_Flight_Staff foreign key (Staff_id) references Staff(Staff_id);

alter table Ticket
add constraint FK_Ticket_Passenger foreign key (Passenger_id) references Passenger(Passenger_id); 

alter table Terminal
add constraint FK_Terminal_Ticket foreign key (Ticket_id) references Ticket (Ticket_id);

