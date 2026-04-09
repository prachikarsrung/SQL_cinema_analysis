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
```


Below is a preview of the SQL query results and analysis:

 ### 📊
 [Dashboard](https://github.com/prachikarsrung/SQL_cinema_analysis/blob/main/streaming_analysis.pdf)


*This screenshot highlights key insights such as user distribution by subscription plan, inactive users, and estimated revenue.*

## 📂 SQL Queries File

Access the complete set of SQL queries used for data analysis:

 [View Complete SQL Analysis](https://github.com/prachikarsrung/SQL_cinema_analysis/blob/main/jot_lio.sql)

This file demonstrates:
- Advanced SQL techniques (GROUP BY, JOIN, filtering)
- Business-driven analysis
- Clean and optimized query structure

The queries are designed to extract actionable insights from raw data.

## 📊 Key Insights

- JioStar has higher user engagement than LioCinema  
- Mobile users contribute **60% of total watch time**  
- Drama and Action genres dominate viewership  
- Premium plan users generate the highest revenue  

---

## ❓ Important Business Questions

1. Which platform has higher user engagement?  
2. Which content type/genre performs best?  
3. Which subscription plan generates the most users?  
4. How does watch time vary by device?  
5. Which users are most active?  

---

## 📌 Analysis Summary

- **Platform Engagement:** JioStar shows stronger engagement compared to LioCinema  
- **Top Genre:** Drama and Action are the most popular content categories  
- **Revenue Driver:** Premium subscription plan contributes the highest revenue  
- **Device Usage:** Mobile dominates watch time consumption  
- **Active Users:** Users with frequent watch sessions and longer watch time are most active  
