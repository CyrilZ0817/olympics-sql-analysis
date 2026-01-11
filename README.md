# olympics-sql-analysis
SQL-based analysis of Olympic Games data using PostgreSQL, focusing on rankings, medal distribution, and country-level performance.
# Olympics SQL Analysis

## Overview
This project performs analytical queries on Olympic Games datasets using SQL.  
The analysis focuses on athletes, teams, medals, rankings, and country-level performance across different Olympic events.

The goal of this project is to demonstrate proficiency in **analytical SQL**, **relational databases**, and **real-world data exploration**.

---

## Technologies
- SQL (PostgreSQL)
- Relational Databases
- Common Table Expressions (CTEs)
- Window Functions (RANK)
- Data Aggregation and Joins

---

## Dataset
The project uses publicly available Olympic datasets, including:
- Athletes and teams
- Events and results
- Medal information
- Country-level demographic and economic data

---

## Project Structure
olympics-sql-analysis/
│
├── queries/
│ ├── Q1.sql
│ ├── Q2.sql
│ ├── Q3.sql
│ ├── Q4.sql
│ ├── Q5.sql
│ ├── Q6.sql
│ ├── Q7.sql
│ ├── Q8.sql
│ ├── Q9.sql
│ └── Q10.sql
│
└── README.md


---

## Query Highlights

### Athlete & Event Analysis
- Identified athletes by discipline, country, and age
- Analyzed individual vs team-based Olympic events
- Filtered and ranked athletes based on event outcomes

### Medal & Ranking Analysis
- Computed medal counts by country and event type
- Ranked countries using gold, silver, and bronze medal counts
- Applied window functions to determine top-performing entities

### Advanced SQL Techniques
- Used **CTEs** to build modular and readable queries
- Applied **RANK()** window function for ranking analysis
- Performed multi-table **JOINs** across athletes, teams, results, and medals
- Combined sports performance data with demographic and economic attributes

---

## Skills Demonstrated
- Analytical SQL querying
- Relational data modeling understanding
- Ranking and aggregation logic
- Real-world dataset exploration
- Writing clean and maintainable SQL code
