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
