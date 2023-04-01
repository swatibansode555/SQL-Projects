-- student name = swati bansode
-- project name = patients details

create database if not exists patients;
use patients;
select * from patients_datasets;

-- Q3 write a query to display the total number of patients in the table
select count(p_name) from patients_datasets;

-- Q4 write a query to display the patients id, patient name, gender and diseases of the oldest(age) patients
select pid,p_name,gender,disease from patients_datasets order by age desc limit 1;

-- Q5 write a query to display the patient id and patient name of all entries with current date
select pid,p_name, curdate() as date from  patients_datasets;

-- Q6 Write a query to display the old patient name and new patient name in  uppercase
select pid, ucase(p_name) from patients_datasets;

-- Q7 Write a query to display the patient name along with the total number of characters in their name
select p_name,length(p_name) from patients_datasets;

-- Q8 Write a query to display the gender of the patient as M or F along with the patient name
select gender,p_name, if(gender like "M__e","M","F" ) as gender from patients_datasets;
select gender ,p_name, if (gender ="male","M","F") as gender from patients_datasets;

-- Q9 Write a query to combine the patient names and doctors name in a new column.
select p_name, doctor_name, concat("p_name","  ","doctor_name") as combine from patients_datasets;

-- Q10 Write a query to display the patients age along with the logarithmic values (base 10) of their age.
select age,log10(age) from patients_datasets;

-- Q11 Write a query to extract the year for a given data and place it in a separate column.
select mid(date,7,4) from  patients_datasets;

-- Q12 Write a query to check the patient name and doctors name are similar and display NULL else return the patients name
select p_name, doctor_name, if(p_name = doctor_name,"null",p_name) from patients_datasets;

-- Q13 Write a query to check if the patient age is greater the 40 display YES if it is NO if isn't.
select age , if( age > 40,"yes","no") as age from patients_datasets;

-- Q14 Write a Query to display duplicate entries in the doctor name column.
select doctor_name from patients_datasets group by doctor_name;
select count(doctor_name),doctor_name from patients_datasets group by doctor_name having count(doctor_name)>=2;