# Pewlett-Hackard-Analysis
### SQL Employee Database

## Overview
After the creation of the employment database that houses employee information like their birthdate, start date, current title, etc., management wants to identify the number of retiring employees per title and the employees who are eligible to participate in a mentorship program. Using a combination of inner joins, filtration, and other SQL statements, we can extract and create two reports and csv files for management to view. 

## Results
The following are the results for the retirement titles and mentorship eligibility reports. 

### Retiring Employees Per Title:
1) 90,398 Employees are eligible for retirement from the company
2) The following image below shows the number of openings for each of the following job titles:

![alt text](https://github.com/DrZubi/Pewlett-Hackard-Analysis/blob/main/Images/openings.PNG)

### Mentorship Eligibility Program:
1) 1,549 employees are eligible for the mentorship program
2) The following image below shows the first 10 rows of the employees that are eligible for the mentorship program

![alt text](https://github.com/DrZubi/Pewlett-Hackard-Analysis/blob/main/Images/mentorship.PNG)

## Summary
With 90,398 employees approaching retirement, there are not nearly enough eligible mentors that can train newly hire for the open positions. 
Here are some additional Queries that can give further insight about percentage of retirees and the job titles of the eligible mentors:

1) Finds the total number of employees in the company. There are a total of 240,124 employees in the company and 37.6% of the current employees are approaching retirement! 
```SELECT COUNT emp_no FROM employees -- Gives the total number of employees``` 


![alt text](https://github.com/DrZubi/Pewlett-Hackard-Analysis/blob/main/Images/mentors%20title.PNG)

2) Groups and counts the number of eligible employees and their job titles:
```SELECT COUNT(title) count_mentors, title
INTO mentors_titles
FROM mentorship_eligibility
GROUP BY title
ORDER BY count_mentors DESC -- Counts the number of mentors grouped by title``` 
