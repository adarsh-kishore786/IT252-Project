insert into Pilot values
-- ("PL001", "Arun", "1998-01-30", "M", NULL, 9876543210);
-- ("PL002", "Solo", "1977-12-31", "M", NULL, 7663655443);
("PL003", "Perk", "1974-10-21", "M", NULL, 7663655345);


insert into Staff values
-- ("ST001", "Harish", "1997-02-26", "M", NULL, 1234567890);
-- ("ST002", "Potter", "1986-03-21", "M", NULL, 532345342);
-- ("ST003", "Jenny", "1996-07-21", "F", NULL, 532345321);
("ST004", "Cherry", "2000-01-11", "F", NULL, 532345357);


insert into Passenger values
-- ("PS001", "Vanessa", "2002-01-01", "F", NULL, 9182736450);
-- ("PS002", "Kaustubh", "2003-12-01", "M", NULL, 3423432413);
-- ("PS003", "Tushar", "2001-02-01", "M", NULL, 3423432423);
-- ("PS004", "Tiara", "2005-01-16", "F", NULL, 3423432445);
-- ("PS005", "Thomas", "1970-11-11", "M", NULL, 3423432321);
-- ("PS006", "Hailey", "1900-10-12", "F", NULL, 2123432321);
-- ("PS007", "Jane", "2002-05-12", "F", NULL, 2123433421);
-- ("PS008", "Helen", "1920-05-12", "F", NULL, 2123432341);
-- ("PS009", "Johnson", "1999-02-11", "M", NULL, 2123432561);
("PS010", "Jake", "2000-01-17","M", NULL, 2123432569);


insert into Flight values
-- ("FL001", "PL001", "ST001", "PS001", "Patna", "Mangalore", "12:30:00", "18:00:00");
-- ("FL002", "PL003", "ST002", "PS005", "Pune", "Hyderabad", "15:30:00", "18:00:00");
-- ("FL003", "PL001", "ST003", "PS003", "New York", "Singapore", "00:40:00", "07:00:00");
-- ("FL004", "PL002", "ST003", "PS004", "Mumbai", "Bangalore", "01:00:00", "03:00:00");
-- ("FL005", "PL001", "ST001", "PS002", "Patna", "Mangalore", "12:30:00", "18:00:00");
-- ("FL006", "PL003", "ST002", "PS006", "Pune", "Hyderabad", "15:30:00", "18:00:00");
-- ("FL007", "PL001", "ST003", "PS007", "New York", "Singapore", "00:40:00", "07:00:00");
-- ("FL008", "PL002", "ST003", "PS008", "Mumbai", "Bangalore", "01:00:00", "03:00:00");
-- ("FL009", "PL001", "ST001", "PS009", "Patna", "Mangalore", "12:30:00", "18:00:00");
("FL010", "PL003", "ST002", "PS010", "Pune", "Hyderabad", "15:30:00", "18:00:00");

insert into Ticket values
-- ("TK001", "PS001", "Economy");
-- ("TK002", "PS002", "FirstClass");
-- ("TK003", "PS003", "FirstClass");
-- ("TK004", "PS004", "Economy");
-- ("TK005", "PS005", "Economy");
-- ("TK006", "PS006", "FirstClass");
-- ("TK007", "PS007", "FirstClass");
-- ("TK008", "PS008", "Economy");
-- ("TK009", "PS009", "FirstClass");
("TK010", "PS010", "Economy");

insert into Terminal values
-- ("T2", "TK001", "12:00:00");
-- ("T1", "TK002", "23:30:00");
-- ("T3", "TK001", "12:00:00");
-- ("T4", "TK003", "00:00:00");
-- ("T5", "TK001", "12:00:00");
-- ("T6", "TK002", "23:30:00");
-- ("T7", "TK001", "12:00:00");
-- ("T8", "TK003", "00:00:00");
-- ("T9", "TK001", "12:00:00");
("T10", "TK002", "23:30:00");


-- If getting data already entered error,
-- comment out the line that is causing error.