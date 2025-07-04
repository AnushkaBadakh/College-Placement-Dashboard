# College Placement Dashboard Project
# Introduction
This project aims to provide a comprehensive analysis and visualization of placement data for students across various engineering departments in different cities of India. Using SQL for data management and Power BI for visualization, the dashboard offers insights into placement trends, top recruiting companies, departmental performance, and salary distributions.
# Project Objectives
* Track and analyze placement records of students.
* Provide insights into top recruiting companies, job roles, and trends over the years.
* Facilitate data-driven decisions for improving placement strategies.
# Database Schema
The project utilizes a relational database named collegeplacement with the following tables:
* Students: Details about students including their name, gender, graduation year, department, and city.
* Companies: Information about companies participating in the placement program, including industry sector and location.
* Jobs: Job roles offered to students, including job title, salary, associated department, and the offering company.
* Placements: Records of successful student placements, linking students to job roles offered by companies on specific dates.
# SQL Scripts
The SQL scripts are used to populate the database tables:

* Insert Data into Students Table: Inserts data for students across various departments and graduation years.
* Insert Data into Companies Table: Adds companies across different sectors and cities.
* Insert Data into Jobs Table: Includes job roles with associated salaries and departments.
* Insert Data into Placements Table: Records each successful student placement.
# Power BI Dashboard
![Screenshot 2024-07-09 120938](https://github.com/user-attachments/assets/b6ad8636-63bd-4402-aa0a-092b80e27c1e)
# Data Import and Modeling
* Data Import: Imports data directly from the SQL database into Power BI for real-time updates.
* Data Modeling: Establishes relationships between tables to ensure accurate data navigation and analysis.
# Key Visualizations
The dashboard includes the following visualizations:

* Gender Distribution: Pie chart showing the distribution of students by gender.
* Placements Over Time: Line chart displaying the growth of placements over the years.
* Top Recruiting Companies: Bar chart ranking companies by the number of placements offered.
* Department-wise Placements: Stacked column chart showing placements by department.
* Salary Distribution: Histogram depicting the salary ranges offered to placed students.
* City-wise Placements: Map visual indicating the distribution of placements across cities.
# DAX Measures
* Total Placements: Counts the total number of placements recorded.
* Average Salary: Calculates the average salary offered across all placements.
* Placements by Year: Tracks the number of placements made each year.
# Interactive Features
* Slicers: Graduation year, company name, and department slicers for interactive filtering.
* Dynamic Charts: Charts for total students, companies, and average salary that update based on selected slicers.
# Conclusion
This College Placement Dashboard provides valuable insights into student placement data, supporting informed decision-making and enhancing placement strategies. By leveraging SQL and Power BI, we ensure robust data management and dynamic visualization capabilities.

# Usage
To use this project:

* Ensure you have SQL Server installed to run the database scripts.
* Import the SQL database into your environment.
* Use Power BI Desktop to open and interact with the dashboard file (CollegePlacementDashboard.pbix).
* Explore the visualizations, apply filters, and derive insights from the data.
