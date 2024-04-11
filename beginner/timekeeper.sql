-- create table
create table timekeeper(
  num int,
  waktu time, -- time with no time zone
  argh time with time zone, -- if u want to include time zone
);

insert into timekeeper(num, waktu)
values (1, current_time), (2, '12:13:14'), (3,'13:14:15', '14:10:25'), (4,'23:08:25'); -- use single quotes to tell time
-- Time format can be hh:mm:ss or hh:mm or hh:mm:ss.ms 
-- current_time = insert current time


-- Now, I want to extract hour, minute, and second from time column
-- lemme add those columns first
alter table timekeeper
add jam int, -- hour
add menit int, -- minute
add detik float; -- second

-- Okay now let's extract
/* HOMEWORK */


-- We can count intervals of time in postgres
create table absensi(
	nama varchar,
	jam_masuk time, -- time to work
	jam_pulang time, -- time to go home
	lama_kerja interval -- how long working
  workload bool -- whether the work hours are sufficient (y/n)
);

-- Let's put some data
insert into absensi (nama, jam_masuk, jam_pulang)
values ('Kevin','07:05','15:27'),('Sanji','09:16','19:56'),('Usopp','11:14','14:59');

-- Now let's find work intervals
/* HOMEWORK */

-- Make if conditions to determine if work hours of the day are sufficient
/* HOMEWORK */


