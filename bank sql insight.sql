use bank_churn;
select*from bank_customer;
-- Count total customers and how many churned vs not churned
select count(customer_id) as total_customer,churn
from bank_customer
group by churn;
-- Find the overall churn rate percentage
SELECT 
    COUNT(*) AS total_customers,
    SUM(churn) AS total_churned,
    ROUND(SUM(churn) * 100.0 / COUNT(*), 2) AS churn_rate_percentage
FROM bank_customer;
-- List all unique countries and genders in the dataset 
 
SELECT DISTINCT country, gender
FROM bank_customer
ORDER BY country, gender;
select count(*),country
from bank_customer
group by country;
-- Find the average credit score of all customers
select avg(credit_score)
from bank_customer;
-- Churn rate by country — which country loses the most customers
SELECT 
    country,
    COUNT(*) AS total_customers,
    SUM(churn) AS total_churned,
    ROUND(SUM(churn) * 100.0 / COUNT(*), 2) AS churn_rate_percentage
FROM bank_customer
GROUP BY country
ORDER BY churn_rate_percentage DESC; 
-- Churn rate by gender — who churns more, male or female
select gender , count(*) as total_customer , round(sum(churn)*100/count(*),2) as churn_rate_percentage
from bank_customer
group by gender 
order by churn_rate_percentage;
-- Average age of churned vs non-churned customers
select avg(age) as avg_age  , churn
from bank_customer
group by churn ;
-- Churn rate by number of products held
select churn , sum(products_number) as total_product

from bank_customer
group by churn;
-- Churn rate for active members vs inactive members
select round(sum(churn)*100/count(*),2) as total_churn_percentage ,active_member
from bank_customer
group by active_member;
-- Average balance of churned vs non-churned customers
select round(avg(balance),2), churn

from bank_customer
group by churn;
-- Churn rate for customers who have a credit card vs those who don't
select sum(churn) as total_churn, credit_card
from bank_customer
group by credit_card;

-- Churn rate by country AND gender combined — find the highest risk segment
select ROUND(SUM(churn) * 100.0 / COUNT(*), 2) AS churn_rate_percentage ,sum(churn) as total_churn , country , gender 
from bank_customer
group by country, gender  
order by churn_rate_percentage;
-- Find customers who have high balance (above average) but still churned
select churn, customer_id,age , country ,gender credit_score
from bank_customer
where balance >(select avg(balance) from bank_customer)AND churn = 1
;
-- Find the age group (bins) with the highest churn rate
select sum(churn) ,round(sum(churn)*100/count(*),2)as churn_rate_percentage  ,
case 
	when age<20 then 'young'
    when age between 20 and 30 then 'young_adult'
    when age between 40 and 60 then 'adult '
    else 'old'
    end as age_bin 
    from bank_customer
    group by age_bin
    ORDER BY churn_rate_percentage DESC;
    
 --    Identify the top 10 customers most likely at risk — old, inactive, high balance, 1 product
 select balance ,customer_id, country, credit_score  from bank_customer 
 where age >60 and products_number = 1 and active_member =0
 order by balance desc limit 10;
 -- Compare average salary and balance side by side for churned vs non-churned
select churn , round(avg(estimated_salary),2)as avg_salary, round(avg(balance),2)as avg_balance, ROUND(MAX(balance), 2) AS max_balance,
    ROUND(MIN(balance), 2) AS min_balance,count(*) as total_customer

from bank_customer
group by churn 
;