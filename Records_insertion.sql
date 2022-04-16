insert into Pilot values
("PL001", "Arun", "1998-01-30", "M", NULL, 9876543210);

insert into Staff values
("ST001", "Harish", "1997-02-26", "M", NULL, 1234567890);

insert into Passenger values
("PS001", "Vanessa", "2002-01-01", "F", NULL, 9182736450);

insert into Flight values
("FL001", "PL001", "ST001", "PS001", "Patna", "Mangalore", "12:30:00", "18:00:00");

insert into Ticket values
("TK001", "PS001", "Economy");

insert into Terminal values
("T2", "TK001", "12:00:00");
