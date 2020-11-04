create Table Player (
       PID int not null,
       PFNAME char(20),
       PLNAME char(20),
       WEIGHT int,
       Height int,
       TID char(20) not null
);

create Table Pitcher (
       PID char(20) not null,
       TID char(20) not null,
       StikeOuts int,
       WHIP float,
       ERA float,
       Saves int
);

create Table Batter (
       PID char(20) not null,
       TID char(20) not null,
       StolenBases int,
       Hits int,
       Doubles int,
       Triples int,
       HomeRuns int,
       Walks int,
       HitsByPitch int
);

Create Table Team (
       TID char(20) not null,
       TName char(20) not null,
       City char(20),
       League char(20),
       Division char(20)
);
