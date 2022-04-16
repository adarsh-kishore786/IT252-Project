insert into Pilot values
-- ("PL001", "Arun", "1998-01-30", "M", NULL, 9876543210);
("PL002", "Solo", "1977-12-31", "M", NULL, 7663655443);

insert into Staff values
-- ("ST001", "Harish", "1997-02-26", "M", NULL, 1234567890);
("ST002", "Potter", "1986-03-21", "M", NULL, 532345342);

insert into Passenger values
-- ("PS001", "Vanessa", "2002-01-01", "F", NULL, 9182736450);
("PS002", "Kaustubh", "2003-12-01", "M", NULL, 3423432413);

insert into Flight values
-- ("FL001", "PL001", "ST001", "PS001", "Patna", "Mangalore", "12:30:00", "18:00:00");
("FL002", "PL001", "ST002", "PS002", "New York", "San Diego", "00:10:00", "06:00:00");

insert into Ticket values
-- ("TK001", "PS001", "Economy");
("TK002", "PS002", "FirstClass");

insert into Terminal values
-- ("T2", "TK001", "12:00:00");
("T1", "TK002", "23:30:00");


-- If getting data already entered error,
-- comment out the line that is causing error.