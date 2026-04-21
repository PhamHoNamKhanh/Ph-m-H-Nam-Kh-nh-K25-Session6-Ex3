create database orderfood;
use orderfood;

create table drivers(
	dri_status enum ('Available', 'Unavailable'),
    dri_trustscore decimal (3,2) check (dri_trustscore >= 0),
    dri_distance decimal (100,2) not null
);
select (dri_status,dri_trustscore,dri_distance)from drivers 
where 
	dri_status = 'Available'
    having dri_trustscore >= 80
    order by dri_distance asc, dri_trustscore desc
    
    /*
    - Input: status, trustscore, distance
    - if status: Available and trustcore >=80 and distance smallest 
    - else unbooking
    */