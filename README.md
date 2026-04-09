# SQL_cinema_analysis
# SQL Data Analysis Project 📊

## 📌 Project Overview
This project focuses on analyzing data using SQL queries to extract meaningful insights.

## 🛠️ Tools Used
- SQL (MySQL / PostgreSQL)
- Database Management System

## 📂 Dataset
- Contains data related to (Netflix / Sales / Customers etc.)

## 🔍 Key Analysis
- Total users by subscription plan
- Revenue estimation
- Active vs inactive users
- Content genre analysis

## 🧠 Sample Queries

### 1. Count users by subscription plan
```sql
SELECT subscription_plan, COUNT(*)
FROM subscribers
GROUP BY subscription_plan;
## 📊 Output Screenshot

Below is a preview of the SQL query results and analysis:

![SQL Output]=https://github.com/prachikarsrung/SQL_cinema_analysis/blob/main/jot_lio.sql
Dashboard=

*This screenshot highlights key insights such as user distribution by subscription plan, inactive users, and estimated revenue.*

## 📂 SQL Queries File

All SQL queries used in this project are available in the file below:

👉 [View SQL File](analysis.sql)

The SQL file includes:
- Data aggregation queries
- User activity analysis
- Revenue estimation
- Content and genre analysis

Each query is well-structured and commented for better understanding.
