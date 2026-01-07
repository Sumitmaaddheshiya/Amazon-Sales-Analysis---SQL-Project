# 🛒 Amazon Sales Analysis – SQL Project

## 📌 Project Overview
This project analyzes an Amazon-like e-commerce dataset using SQL to extract actionable business insights.
It follows a professional workflow: schema design, data cleaning, and business analysis.

## 🧱 Database Schema
The database is normalized and uses foreign keys to maintain referential integrity.

### Tables
- customers
- orders
- orders_items
- products
- category
- payments
- shipping
- inventory
- sellers

## 🧹 Data Cleaning & Validation
- Fixed encoding (UTF-8 BOM) issues
- Converted VARCHAR date fields to DATE
- Replaced empty strings with NULL
- Validated foreign key relationships
- Checked for invalid or negative values

## 📊 Business Questions Solved (Q1–Q10)
1. Top 10 products by sales
2. Revenue by category with percentage
3. Average Order Value (AOV)
4. Monthly sales with previous month comparison
5. Customers with no orders
6. Least-selling category by state
7. Customer Lifetime Value (CLTV)
8. Low-stock products
9. Payment success rate
10. Top returned products and return rate

## 🔍 Additional Insights
- Order cancellation rate by state
- Revenue contribution by state
- Average delivery time by shipping provider

## 🛠 Tools Used
- MySQL
- SQL (joins, window functions, subqueries)
- ERD for schema visualization

## 📂 Project Structure
Amazon-SQL-Project/
├── README.md
├── ERD.md
├── schema.sql
├── data_cleaning.sql
└── analysis.sql

## ✅ Conclusion
This project demonstrates end-to-end SQL analytics skills with real-world business use cases.