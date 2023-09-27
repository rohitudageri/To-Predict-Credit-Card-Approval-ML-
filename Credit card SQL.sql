CREATE DATABASE credit_card;

# imported cleaned data

# Q1) Group the customers based on their income type and find the average of their annual income.

SELECT Income_type,ROUND(AVG(Annual_income)) as avg_annual_income
FROM cleaned_data
GROUP BY Income_type;


# Q2) Find the female owners of cars and property.

SELECT * 
FROM cleaned_data
WHERE gender = "F" and Car_Owner = "Y" and Property_owner = "Y" ; 

#Q3) Find the male customers who are staying with their families.

SELECT *
FROM cleaned_data
WHERE gender = "M" and Family_Members > 1 ;

#Q4) Please list the top five people having the highest income.

SELECT *
FROM cleaned_data
ORDER BY Annual_income DESC
LIMIT 5 ;

#Q5) How many married people are having bad credit?

SELECT count(*) 
FROM cleaned_data
WHERE Marital_status = "Married" and label = 1 ;

#Q6) What is the highest education level and what is the total count?

SELECT Education,count(*) as total_count
FROM cleaned_data 
GROUP BY Education 
ORDER BY total_count DESC
LIMIT 1;

#Q7) Between married males and females, who is having more bad credit? 

SELECT gender,count(*) as count
FROM cleaned_data
WHERE marital_status = "Married" and label = 1
GROUP BY gender 
ORDER BY count DESC
LIMIT 1 ;

