# Employee-And-Job-Data-Analysis-Using-SQL

## PROJECT OVERVIEW

This project outlines the analysis of employee and job dataset for Company ABC using SQL. 
The goal was to gain insights into the workforce, such as employee demographics, departmental statistics, salary trends, and employee tenure. 
SQL queries were used to clean, analyze, transform and visualize key data points to support organization decision-making.

## DATASET DESCRIPTION

The datasets provided were:
1. Employees.csv: contains employee details including personal information,
    job id, hire date, salary, email and commission.
   
2. Job.csv: contains job id and job titles. 

## TOOLS USED: 
- SQL environment: Microsoft SQL Server 2022
- SQL client: SQL Server Management Studio (SSMS)

## OBJECTIVES

To answer specific business questions using SQL queries and demonstrate skills in:
-	Data Import and cleaning
-	Data aggregation and grouping
-	Joins, subqueries and CTEs
-	Ranking functions (e.g., ROW_NUMBER())
-	Data Manipulation (update/delete)

## DATA PREPARATION

-	Imported both .csv files into MySQL database using Import Flat file 
-	Verified data integrity, column types, and checked for missing values
-	Ensured Job_ID was used as the foreign key to link both tables.

  ## QUESTIONS
  
-	What is the total number of employees in the company?
-	 What is the total number of employees in each department? 
-	Identify the three departments with the highest number of employees
-	Identify the oldest and the newest employee (with hire date and full info)
-	Identify the oldest and newest employee in each department 
-	What is the total number of information technology programmers in the company?
-	 Calculate the year difference between the oldest and newest hire date in the company
-	 Identify the employees that earned below average (with salaries and job titles)
-	Update all email addresses to lower case letter.
-	Delete the empty commission column from the table

## SQL QUERIES

The repository contains sql scripts to uncover insights into analyzing employee demographics, 
tenure, department distributions, salary distributions etc. Check it out

## ANALYSIS FINDINGS

### Key Insights from the data analysis:

### Employee Distribution per department

This result helps identify which departments have the most employees and can guide decisions around budget allocation, resource planning, and recruitment. Departments with very few employees might need review to ensure they are adequately staffed.

### Top 3 departmental distribution

The top three departments with the highest employee count likely represent core business functions. They should be prioritized in workforce planning, development programs, and succession planning strategies.

### Oldest Vs. Newest Employee Hire Dates

This provides valuable information about longest-serving and most recently hired employee. Long-tenured staff are often important for knowledge transfer and mentorship, while new employees are indicators of current recruitment practices.

### Salary Distribution

Identifying employees earning below average helps the company assess equity in salary and evaluate whether employees are fairly compensated based on roles and experience. It may also highlight potential morale or retention risks.


## CONCLUSION

This SQL analysis provided actionable insights into employee distribution, tenure, and salary distribution at Company ABC. It also demonstrated practical SQL techniques such as joins, subqueries, window functions and table alterations which are all essential skills for a data analyst. Focusing on high-impact insights allowed us to prioritize data-driven decisions that support HR and operations.


