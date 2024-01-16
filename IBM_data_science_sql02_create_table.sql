drop table if exists accounts;

create table accounts(
id integer primary key,
mac_add varchar(255) )

Insert into accounts(id,mac_add) values(1,'00:00:0A:BB:28:FC')
Insert into accounts(id,mac_add) values(2,'00:00:0A:BB:29:FD')
Insert into accounts(id,mac_add) values(3,'00:00:0A:BB:22:GC')
Insert into accounts(id,mac_add) values(4,'00:00:0A:BB:38:DC')
Insert into accounts(id,mac_add) values(5,'00:00:0A:BB:48:AC')

drop table if exists encryptions

create table encryptions(
acc_id int foreign key references accounts(id),
salt varchar(255),
is_active varchar(2) )

insert into encryptions (acc_id,salt,is_active) values(1,'79363a','1')
insert into encryptions (acc_id,salt,is_active) values(1,'8adc1ff','0')
insert into encryptions (acc_id,salt,is_active) values(2,'5ba4fa9','1')
insert into encryptions (acc_id,salt,is_active) values(2,'f2f36cd3','1')
insert into encryptions (acc_id,salt,is_active) values(2,'a68c60der','1')
insert into encryptions (acc_id,salt,is_active) values(2,'f7993b','1')


select * from accounts

select * from encryptions
