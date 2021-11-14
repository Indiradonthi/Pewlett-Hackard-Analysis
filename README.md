# Pewlett-Hackard-Analysis

## Overview of the analysis

Pewlett Hackard is a large company with several thousand employees that has been around for a long time. In a few years numbers of employees will retire and leave open positions behind that need to be filled. The company is looking into the future in two ways. First, it is offering a retirement package for those who meet certain criteria. Second, its thinking about which positions needs to be filled in the future. 

# Purpose

The purpose of this analysis is to create a report that will help Bobby's Manager prepare for the "Silver Tsunami" as many current employees have reached retirement age. This analysis will also help Pewlett Hackard (PH) organize their database using SQL. Using this database, it is easy to establish the relationship between tables and retrieve data more efficiently. To achieve this we are creating the following tables.

•	Retirement Titles Tables

•	Retiring Employees Count by Titles

•	Mentorship Eligibility Table


# Environment
- Postgres and pgAdmin


# Results

We created a table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. 

Our table contains the most recent titles of each employee. To determine who is eligible to participate in a mentorship program, we created another table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

## The Number of Retiring Employees by Title

•	Our first table holds complex information from all retiring employees including titles from starting date till recent, along with employee numbers, first and last name.


![image](https://user-images.githubusercontent.com/90879122/141669597-e19f5a20-32ae-491e-82cc-50dcc428186d.png)



•	Our next table has unique title data, that means it contains the most recent job title of each employee.


![image](https://user-images.githubusercontent.com/90879122/141669609-b1e6ad32-901f-4fd6-99dd-7d3fb69bdc22.png)

•	Another table we created had grouped a number of employees by titles. Our analysis helped us determine not only how many positions needs to be filled but also how many positions will be opened for a specific title. Following our table we can tell that Senior Engineer and Senior Staff are the most in demand job openings in Pewlett Hackard, while regular Engineer and Staff are each half that number. However, only two manager positions are open.

![image](https://user-images.githubusercontent.com/90879122/141669620-bc7459be-3c9f-457f-bbcc-79fd2ec3b78d.png)

## The Employees Eligible for the Mentorship Program

•	This table is a lot like the first retirement_titles table, only this has employees who were born in 1965. It is called mentorship_eligibilty and it presents us with a list of employees who are eligible to do mentorship program for future hires in in Pewlett Hackard.


![image](https://user-images.githubusercontent.com/90879122/141669628-d6abbfa5-79da-488e-92d3-66d7d443171f.png)

# Summary

There is a total count of 90398 positions to be open in Pewlett Hackard in the near future, they are: 29414 Senior Engineer positions, 28254 Senior Staff, 14222 Engineer, 12243 Staff, 4502 Technique Leaders, 1761 Assistant Engineers and 2 Manager positions. Also, there is a total of 1549 qualified employees who are eligible to mentor new generation of Pewlett Hackard.

For the upcoming "silver tsunami" will be very useful to see how many qualified mentorship eligible employees we have for each title. Our query provided us with additional information in our mentorship eligibility titles table.

select sum(count) from retiring_titles ; 
select count(*) from retiring_titles;

•	Compared to the number of employees retiring or nearing retirement in the future years the number of employees eligible for mentorship program is very low.




![image](https://user-images.githubusercontent.com/90879122/141669905-b2f820ef-a162-4ab4-aad8-485f86b39028.png)



![image](https://user-images.githubusercontent.com/90879122/141669659-0d702b20-336a-4700-b8e0-68d8437697a5.png)

- Another additional table we crated is called retirement salary. It contains a list of retiring employees with their employee number, names and salaries.

![image](https://user-images.githubusercontent.com/90879122/141669923-404835a8-012f-4208-8889-a3311f06b860.png)


To Summarize, most of the employees in PH are eligible for retirement or will be retiring soon. PH needs to accerlerate their hiring and mentorship programs to reduce the impact of this "Silver Tsunami".

