SELECT * FROM spacex_data.spacex;
/*Task 1*/
select distinct (Launch_site) from `spacex_data`.`spacex` ;
/*Task 2*/
SELECT * FROM `spacex_data`.`spacex` WHERE Launch_Site Like 'CCA%' limit 5	;
/*Task 3*/
SELECT sum(PAYLOAD_MASS__KG_) as total_payload
FROM `spacex_data`.`spacex` 
where Customer = 'NASA (CRS)';
/*Task 4*/
SELECT avg(PAYLOAD_MASS__KG_) as average_mass
FROM `spacex_data`.`spacex` 
where Booster_Version = 'F9 v1.1';
/*Task 5*/
SELECT min(Date) FROM spacex_data.spacex
WHERE Mission_Outcome = 'Success';
/*Task 6*/
SELECT Booster_Version FROM spacex_data.spacex
WHERE Landing_Outcome = 'Success (drone ship)'
AND 4000< PAYLOAD_MASS__KG_ <6000;
/*Task 7*/
SELECT count(Mission_Outcome) as missionoutcome FROM spacex_data.spacex group by(Mission_Outcome);
/*Task 8*/
select Booster_Version as boosterversion from spacex where PAYLOAD_MASS__KG_=(select max(PAYLOAD_MASS__KG_) from spacex);
/*Task 9*/
SELECT month(Date), Mission_Outcome, Booster_Version, Launch_Site FROM spacex
WHERE EXTRACT(YEAR FROM DATE) = '2015';
/*Task 10*/
SELECT Landing_Outcome FROM spacex WHERE DATE BETWEEN '2010-06-04' AND '2017-03-20' ORDER BY DATE DESC;



