-- name = swati bansode 
-- project name = churn analysis 

-- Q1) upload the churndata.csv dataset to the lab
create database if not exists churn_analysis;

-- Q2) import the churndata.csv into the database as a table
use churn_analysis;

-- Q3) find the number of unoque customerpresent in the data
select distinct (customerID) from churndata; 

-- Q4) find the number of customer who have left vs. those who haven
select churn, count(customerID) from churndata group by churn;

/* Q5) find the top customer IDs with the heighest total charges (from the total charges column ) for those whowere taking all 
the services offered but still decided to leve the company 
select * from churndata where 
PhoneService!="no"and
InternetService!="no"and
OnlineBackup!="no"and
DeviceProtection!="no"and
TechSupport!="no" and
StreamingMovies!="no" and 
StreamingTV!="no" and
Churn= "no"
order by TotalCharges desc limit 2;

-- Q6) find the average tenure and average monthly charges by gender for those who stopped being customers.
select * from churndata;
select gender,avg(tenure ), avg(monthlycharges) from churndata group by gender, Churn having Churn="no";

/* Q7) wtite a quary to understand the split of customer Ids by churn and seniorcitizen columns and find if the average of 
the totalcharges column are higher for senoir citizens or nonsenior citizens.
select customerid,seniorcitizen, avg(totalcharges) 
from churndata group by customerid,seniorcitizen having seniorcitizen !="no" ;

/* Q8) display the mod of payment preferred by those who are no longer customer (from the paymentmethod column) and those who
 are still are in descinding order of totalcharges with only those customers who have paid moe than $10,000.

select customerid,paymentmethod from churndata where Churn="no" order by TotalCharges desc;

/* Q9) find the number of people who are no longer customers that were only taking the phone service ,the internate service ,or both
 and exclude those who werw using fibr-optics internate service
select customerid, count(customerid) 
from churndata 
having PhoneService !="no"and
InternetService !="no"and InternetService !="fiber optic" and Churn="no";


