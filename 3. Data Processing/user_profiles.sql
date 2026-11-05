-- Databricks notebook source

--Checking the dataset
SELECT *
FROM bright_tv.data.user_profiles
LIMIT 10;


---Checking for duplicates 
SELECT COUNT (*) AS Count_of_all_rows,
        COUNT (DISTINCT UserID) AS Count_of_unique_Subscribers
FROM bright_tv.data.user_profiles;


---Checking distinct user ID's
SELECT COUNT (DISTINCT UserID) AS Subscribers
FROM bright_tv.data.user_profiles;


---Checking if there are duplicates
SELECT COUNT(*),
        UserID
FROM bright_tv.data.user_profiles
GROUP BY UserID
HAVING COUNT(*) > 1;

