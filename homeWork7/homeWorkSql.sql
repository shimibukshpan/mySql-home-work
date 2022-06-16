create database police;
use police;

create table police_station
(police_station_id int auto_increment unique,
Construction_time timestamp,
police_station_name varchar(20),
Officers_idref int,
Cops_idref int,
investigation_idref int,
police_car_idref int);
insert into police_station values
(0, '2008-01-01 00:00:01','jerusalem station',1,2,3,1),
(0, '2020-05-17 12:30:01','telAviv station',2,1,3,2),
(0, '2022-06-16 13:45:01','haifa station',3,2,1,3);

create table officers
(officers_id int auto_increment unique,
officers_recruitment_time timestamp,
Officers_name varchar(20));
insert into officers values
(0,'2008-01-01 00:00:01','shimi bukhspan'),
(0,'2006-04-11 12:25:41','moshe viner'),
(0,'2015-09-21 08:34:31','israel vizel');
alter table officers add constraint officers_for_station foreign key(officers_id)references police_station(police_station_id);

create table cops
(cops_id int auto_increment unique,
cops_recruitment_time timestamp,
cops_name varchar(20),
officers_idref int);
insert into cops values
(0,'2015-09-21 08:34:31','meir',1),
(0,'2015-09-21 08:34:31','yosi',2),
(0,'2015-09-21 08:34:31','shlomo',3);
alter table cops add constraint cops_for_officers foreign key(cops_id)references officers(officers_id);
alter table cops add constraint cops_for_cars foreign key(cops_id)references cops_cars(cops_cars_id);


create table researchers
(researchers_id int auto_increment unique,
researchers_recruitment_time timestamp,
researchers_name varchar(20),
officers_idref int);
insert into researchers values
(0,'2015-09-21 08:34:31','chaim',3),
(0,'2015-09-21 08:34:31','yair',1),
(0,'2015-09-21 08:34:31','alecs',2);
alter table researchers add constraint researchers_for_officers foreign key(researchers_id)references officers(officers_id);

create table cops_cars
(cops_cars_id int auto_increment unique,
cops_cars_time timestamp,
cops_cars_company_type varchar(20),
cops_idref int);
insert into cops_cars values
(0,'2022-05-21 08:34:31','shevrolet',1),
(0,'2022-05-21 08:34:31','kadilak',3),
(0,'2022-05-21 08:34:31','subaro',2);

