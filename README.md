# 📊 SQL Job Market Analysis Project

## 📌 Overview
This project analyzes job market data using SQL to uncover insights about:
- High-paying jobs  
- In-demand skills  
- Optimal career paths  
- Skill-based salary trends  

The dataset includes company, job, and skills information, enabling data-driven decision-making for career planning.

---

## 🗂️ Project Structure
├── best_paying.sql # Queries to find highest paying jobs
├── optimal_job.sql # Analysis of best job roles based on skills & salary
├── top_demanded_skills.sql # Most in-demand skills
├── top_pay_skill.sql # Highest paying skills
├── top_skills.sql # General skills analysis
├── company_dim.csv # Company dataset
├── skills_dim.csv # Skills dataset
├── skills_job_dim.csv # Mapping between jobs and skills


---

## ⚙️ Technologies Used
- SQL (MySQL / PostgreSQL / SQLite)
- CSV datasets
- Joins, Aggregations, Filtering, Grouping
- Data analysis techniques

---

## 📊 Key Analysis & Insights

### 💰 Best Paying Jobs
Identifies top-paying roles across companies using salary-based analysis.

### 🎯 Optimal Jobs
Combines salary, demand, and skills to determine the best career options.

### 🔥 Top Demanded Skills
Finds the most frequently required skills in job listings.

### 💎 Top Paying Skills
Highlights skills associated with higher salaries.

### 🧠 Skills Analysis
Provides an overview of skill distribution and trends.

---

## 🛠️ How to Run

1. Import CSV files into your SQL database  
2. Create tables based on dataset structure  
3. Run SQL scripts:

```sql
SOURCE best_paying.sql;
SOURCE optimal_job.sql;
SOURCE top_demanded_skills.sql;
SOURCE top_pay_skill.sql;
SOURCE top_skills.sql;