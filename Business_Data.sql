
-- create database BIG_DATA
-- use big_data

-- create table customers(
-- CUSTOMER_ID int primary key,
-- CUSTOMER_NAME varchar(100),
-- AGE int,
-- LOCATION VARCHAR(100),
-- OCCUPATION varchar(100),
-- REPEAT_CUSTOMER boolean
-- )


-- select * from customers
-- create table customer_visits (
-- VISIT_ID INT PRIMARY KEY,
-- CUSTOMER_ID INT,
-- VISIT_DATE DATE,
-- SALESPERSON_ID INT,
-- VISIT_TYPE varchar(50),
-- INTRESTED_MODEL varchar(100),
-- BUDJET_RANGE VARCHAR(100),
-- PURCHASE_INTENT_LEVEL VARCHAR(30),
-- PRIMARY_OBJECTION VARCHAR(50),
-- CONFIDENCE_LEVEL INT,
-- DECISION_TIME_ESTIMATE VARCHAR(50),
-- TEST_DRIVE_TAKEN VARCHAR(10),
-- EXCHANGE_REQUIRED VARCHAR(10),

-- foreign key (CUSTOMER_ID) references CUSTOMERS(CUSTOMER_ID)
-- ON delete restrict
-- )

-- SELECT * FROM CUSTOMER_VISITS

-- CREATE TABLE EXCHANGE_DETAILS(
-- EXCHANGE_ID INT PRIMARY KEY,
-- VISIT_ID INT,
-- OLD_VEHICLE_DETAILS VARCHAR(100),
-- OLD_VEHICLE_MODEL VARCHAR(100),
-- MANUFACTURING_YEAR INT,
-- KMS_DRIVEN INT,
-- VEHICLE_CONDITION VARCHAR(50),
-- QUOTED_EXCHANGE_VALUE DECIMAL(10,2),
-- FINAL_EXCHANGE_VALUE DECIMAL(10,2),
-- EXCHNAGE_STATUS VARCHAR(50),

-- foreign key(VISIT_ID) references CUSTOMER_VISITS(VISIT_ID)
-- ON delete restrict
-- )

-- SELECT * FROM EXCHANGE_DETAILS

-- CREATE TABLE SALES_OUTCOMES(
-- OUTCOME_ID INT primary key,
-- VISIT_ID INT,
-- BOOKING_STATUS VARCHAR(20),
-- BOOKING_DATE DATE,
-- FINAL_PRICE DECIMAL(10,2),
-- DISCOUNT_GIVEN DECIMAL(10,2),
-- EXCHANGE_ADJUSTED_AMOUNT DECIMAL(10,2),
-- FOLLOW_UP_REQUIRED VARCHAR(20),

-- foreign key (VISIT_ID) references CUSTOMER_VISITS(VISIT_ID)
-- ON delete restrict
-- )

-- show tables
-- select * from customers

-- alter table customers add column PHONE_NO varchar(15)
-- after customer_name


-- insert into customers values (
-- 1, 'Mr.Hari prasath', '8667791305', 33, 'nil', 'ford motors', false
-- )

-- select * from customers
-- insert into customers values(
-- 2, 'Mr.ramesh', '94981 20504', 42, 'aadamappakam', 'inspector', false
-- )

-- select * from customers

-- insert into customers values (
-- 3, 'Ms.Sriya', '86810 22587', 35, 'madippakam', 'CUB bank', false
-- )

-- select * from customers
-- set sql_safe_updates = 0

-- update customers set phone_no = '86677 91305' where customer_id = 1


-- insert into customer_visits(visit_id, customer_id, visit_date, salesperson_id, visit_type, interested_model,
-- budjet_range, purchase_intent_level, primary_objection, confidence_level, decision_time_estimate,
-- test_drive_taken, exchange_required) 
-- values()

-- select * from customer_visits
-- insert into customer_visits values (
-- 101, 1, '2026-02-19', 501, 'walk_in', 'new venue', '10-15 L',
-- 'medium', 'price', 3, 'warm', 'no', 'no'
-- ),
-- (
-- 102, 2, '2026-02-21', 502, 'walk in', 'new creta', '15-20L',
-- 'medium', 'price', 4, 'warm', 'ap taken', 'yes'
-- ),
-- (
-- 103, 3, '2026-02-23', 503, 'walk in', 'I10 nios', '8-12L', 'high', 
-- 'price', 4, 'hot', 'yes', 'no'
-- )

-- select * from customer_visits

-- update customer_visits set salesperson_id = 501 where customer_id = ('2')
-- update customer_visits set salesperson_id = 501 where customer_id = 3

-- select * from exchange_details

-- insert into exchange_details values (
-- 201, 102, 'not remembr', 'will updt', 0, 0, 'not seen', 0000, 0000, 'pending'
-- )
-- select * from exchange_details
-- select * from customer_visits

-- select customer_name, phone_no from customers
-- join customer_visits
-- on customers.customer_id = customer_visits.customer_id
-- where exchange_required = 'no' 

-- create table follow_ups (
-- followup_id int primary key,
-- visit_id int not null,
-- followup_date date not null,
-- followup_type varchar(30),
-- followup_status varchar(30),
-- next_followup_date date,
-- remarks text,
-- created_at timestamp default current_timestamp,

-- foreign key (visit_id) references customer_visits(visit_id)
-- on delete restrict
-- )

-- select * from follow_ups
-- desc follow_ups

-- show tables
-- select * from customer_visits
-- select * from customers

-- insert into follow_ups (
-- followup_id, visit_id, followup_date, followup_type, followup_status,
-- next_followup_date, remarks) values(
-- 1, 101, '2026-02-19', 'call', 'interested', '2026-03-02', 'he will come to sr for drive in few day i guess'
-- )

-- select * from follow_ups

-- insert into follow_ups (
-- followup_id, visit_id, followup_date, followup_type, followup_status,
-- next_followup_date, remarks) values(
-- 2, 102, '2026-02-21', 'meet', 'interested', '2026-02-28', 'asking td on coming saturday'
-- ), 
-- (
-- 3, 103, '2026-02-23', 'meet', 'interested', '2026-02-24', 'details and td given and she will let me know after discussed with her husband'
-- ),
-- (
-- 4, 103, '2026-02-24', 'call', 'interested', '2026-03-03', 'after discussed with her husnand, plans to buy on march 1st week'
-- ) 

-- select * from follow_ups
-- select * from customer_visits

-- select customers.customer_name,
-- customer_visits.intrested_model,
-- follow_ups.remarks 
-- from customers
-- join customer_visits
-- on customers.customer_id = customer_visits.customer_id
-- join follow_ups
-- on customer_visits.visit_id = follow_ups.visit_id 
-- where follow_ups.visit_id = 103

-- select customers.customer_name,
-- customer_visits.intrested_model,
-- follow_ups.remarks 
-- from customers
-- join customer_visits
-- on customers.customer_id = customer_visits.customer_id
-- join follow_ups
-- on customer_visits.visit_id = follow_ups.visit_id 
-- where follow_ups.visit_id = 103
-- order by follow_ups.followup_date desc 
-- limit 1 

-- show tables
-- select * from customers
-- insert into customers(
-- customer_id,
-- customer_name,
-- phone_no,
-- age,
-- location,
-- occupation,
-- repeat_customer
-- ) values (
-- 4, 'Mr.hemanathan', '84284 93599', 32, 'meenampaakkam', 'bussiness',true
-- ), (
-- 5, 'Mr.jeyavignesh', '80568 90062', 40, 'velachery', 'capgemini', false
-- ), (
-- 6, 'Mr.arun', '8754114568', 36, 'kaarappakkam', 'naturals',false
-- )

-- select * from customer_visits
-- insert into customer_visits (
-- visit_id,
-- customer_id,
-- visit_date,
-- salesperson_id,
-- visit_type,
-- intrested_model,
-- budjet_range,
-- purchase_intent_level,
-- primary_objection,
-- confidence_level,
-- decision_time_estimate,
-- test_drive_taken,
-- exchange_required
-- ) values (
-- 104, 4, '2026-03-01', 501, 'walk in', 'I20', '10-12L', 'high', 'family needs other brand', 4,
-- 'hot', 'yes', 'no'
-- )

-- insert into customer_visits (
-- visit_id,
-- customer_id,
-- visit_date,
-- salesperson_id,
-- visit_type,
-- intrested_model,
-- budjet_range,
-- purchase_intent_level,
-- primary_objection,
-- confidence_level,
-- decision_time_estimate,
-- test_drive_taken,
-- exchange_required
-- ) values (
-- 105, 5, '2026-03-01', 501, 'walk in', 'I20', '8-10L', 'high', 'budjet', 4,
-- 'hot', 'yes', 'no'
-- ), (
-- 106, 6, '2026-03-01', 501, 'walk in', 'I20', '7-10L', 'medium', 'price', 4, 'warm', 
-- 'no', 'no'
-- )

-- select * from customer_visits
-- select * from follow_ups
-- select * from customers
-- insert into follow_ups (
-- followup_id,
-- visit_id,
-- followup_date,
-- followup_type,
-- followup_status,
-- next_followup_date,
-- remarks
-- ) values (
-- 5, 103, '2026-03-02','call', 'lost', null, 'plan dropped due to not in chennai'
-- )

-- select * from follow_ups
-- set sql_safe_updates = 0
-- alter table follow_ups drop column followup_type
-- select * from follow_ups
-- select * from follow_ups where next_followup_date = '2026-03-03'
-- select * from follow_ups where visit_id = 103 

-- select * from follow_ups

-- select customers.customer_name,
-- customer_visits.visit_id
-- from customers 
-- join customer_visits 
-- on customers.customer_id = customer_visits.customer_id 


-- select * from follow_ups
-- insert into follow_ups (
-- followup_id,
-- visit_id,
-- followup_date,
-- followup_status,
-- next_followup_date,
-- remarks
-- ) values (
-- 6, 101, '2026-03-02', 'idle', '2026-03-04', 'he said that i will let you know if i decided to buy'
-- ), (
-- 7, 102, '2026-03-02', 'idle', '2026-03-04', 'he is not responding and mainthing is not atend the call'
-- )

-- alter table follow_ups rename column next_followup_date to next_fdate 

-- select * from customers
-- select * from customer_visits
-- select * from follow_ups

-- select customers.customer_id,
-- customer_visits.visit_id,
-- follow_ups.remarks 
-- from customers
-- join customer_visits 
-- on customers.customer_id = customer_visits.customer_id
-- join follow_ups 
-- on customer_visits.visit_id = follow_ups.visit_id
-- where follow_ups.visit_id = 103 
-- limit 2 

-- select * from follow_ups

-- select customers.customer_id,
-- customer_visits.visit_id,
-- follow_ups.remarks 
-- from customers
-- join customer_visits 
-- on customers.customer_id = customer_visits.customer_id
-- join follow_ups 
-- on customer_visits.visit_id = follow_ups.visit_id
-- where follow_ups.visit_id = 103 
-- order by f_date desc
-- limit 2 

-- select * from customers
-- insert into customers (
-- customer_id,
-- customer_name,
-- phone_no,
-- age,
-- location,
-- occupation,
-- repeat_customer
-- ) values (
-- 7, 'Mr.Hari', '98408 21290', null, null, null, null
-- )

-- select * from customer_visits

-- insert into customer_visits (
-- visit_id,
-- customer_id,
-- visit_date,
-- salesperson_id,
-- visit_type,
-- intrested_model,
-- budjet_range,
-- purchase_intent_level,
-- primary_objection,
-- confidence_level,
-- decision_time_estimate,
-- test_drive_taken,
-- exchange_required
-- ) values (
-- 107, 7, '2026-03-03', 501, 'refference', 'new exter', null, null, null, null,
-- null, 'appt taken', null
-- ) 

-- select * from follow_ups

-- insert into follow_ups (
-- followup_id,
-- visit_id,
-- f_date,
-- f_status,
-- next_fdate,
-- remarks
-- ) values (
-- 8, 104, '2026-03-04', 'intrested', '2026-03-07', 'td / he said that i have to convince my parents and i will let you know'
-- ), (
-- 9, 105, '2026-03-03', 'interested', '2026-03-10', 'he was decided the car and colour and he is waiting for auspicious day for booking the car'
-- ), (
-- 10, 106, '2026-03-03', 'intrested', '2026-03-09', 'purchase plan for his sister marriage and finance process and discusion on going with his family'
-- )

-- select * from follow_ups

-- select * from customers

-- select 
-- customers.customer_id,
-- customers.customer_name,
-- customer_visits.visit_id 
-- from customers 
-- join customer_visits 
-- on customers.customer_id = customer_visits. customer_id 

-- show tables

-- select 
-- customers.customer_name,
-- customer_visits.visit_id,
-- customer_visits.test_drive_taken
-- from customers
-- join customer_visits 
-- on customers.customer_id = customer_visits.customer_id
-- join follow_ups 
-- on customer_visits.visit_id = follow_ups.visit_id 
-- where follow_ups.next_fdate = '2026-03-07'

-- select * from follow_ups
-- insert into follow_ups (
-- followup_id,
-- visit_id,
-- f_date,
-- f_status,
-- next_fdate,
-- remarks
-- ) values (
-- 11, 104, '2026-03-05', 'lost', null, 
-- 'he decided to buy tata punch cause family decision for safety and all'
-- ), (
-- 12, 107, '2026-03-05', 'intresting', '2026-03-06', 'he and his family coming tomorrow for test drive'
-- )

-- select * from follow_ups

-- select customers.customer_name,
-- customer_visits.visit_id,
-- follow_ups. remarks,
-- follow_ups.next_fdate
-- from customers
-- join customer_visits
-- on customers.customer_id = customer_visits.customer_id
-- join follow_ups 
-- on customer_visits.visit_id = follow_ups.visit_id 
-- where follow_ups.visit_id = 104
-- order by created_at desc
-- limit 1

-- select * from customers

-- select customer_name,
-- follow_ups.remarks 
-- from customers
-- join customer_visits 
-- on customers.customer_id = customer_visits.customer_id
-- join follow_ups 
-- on customer_visits.visit_id = follow_ups.visit_id
-- where follow_ups.visit_id = 103
-- order by created_at desc
-- limit 2

-- select remarks, next_fdate from follow_ups 
-- where visit_id = 106
-- order by created_at desc
-- limit 2

-- select * from follow_ups
-- select count(followup_id) from follow_ups
 
-- select * from customers

-- set sql_safe_updates = 0

-- update customers set age = 35 where customer_id = 7
-- update customers set location = 'velachery' where customer_id = 7
-- update customers set occupation = 'IT' where customer_id = 7
-- update customers set repeat_customer = false where customer_id = 7
-- select * from follow_ups

-- select count(followup_id) from follow_ups

-- insert into follow_ups (
-- followup_id,
-- visit_id,
-- f_date,
-- f_status,
-- next_fdate,
-- remarks
-- ) values (
-- 13, 107, '2026-03-06', 'interested', '2026-03-07',
-- 'td / she asked to come to home cause of for the check parking fecilities'
-- )

-- update customers set customer_name = 'Ms.Haripriya' where customer_id = 7
-- select * from customer_visits
-- update customer_visits set test_drive_taken = 'yes' where visit_id = 107
