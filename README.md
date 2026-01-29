# 📊 E-Commerce Sales Analysis & Dashboard Project

## 📌 Project Overview
This project presents an end-to-end analysis of an E-commerce dataset using SQL, Python, and Power BI. The goal is to analyze sales performance, customer behavior, and revenue trends to generate actionable business insights.

This project is suitable for internship and entry-level data analyst roles.

---

## 📉 Business Problem
E-commerce businesses often struggle to:
- Identify revenue-generating products and customers
- Understand sales fluctuations
- Track customer retention
- Analyze regional and category performance
- Monitor business KPIs

This project answers key questions such as:
- Where is revenue coming from?
- Which customers are most valuable?
- How do sales vary by time and category?
- Are returning customers more profitable?

---

## 📂 Dataset Description
The dataset includes:
- Order and customer details
- Product categories
- Sales and discount data
- Delivery and rating information

Key columns:
- Order_ID
- Date
- Customer_ID
- Total_Amount
- Discount_Amount
- Product_Category
- City
- Customer_Rating
- Delivery_Time_Days
- Is_Returning_Customer

---

## 🛠 Tools & Technologies
- SQL (MySQL)
- Python (Pandas, Matplotlib)
- Power BI
- GitHub

---

## 📁 Project Structure
```
├── images/
│   ├── dashboard_1.png
│   ├── dashboard_2.png
├── Ecommerce.csv
├── ecommerce.sql
├── main.ipynb
├── README.md
├── ecommerce_dashboard.pbix
```

---

## 📊 SQL Analysis
🧪 Data Quality Checks (SQL)


1️⃣ Invalid Revenue Check
![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(101).png?raw=true)








Description:
This check validates whether any transaction in the dataset has zero or negative revenue.
The result shows 0 records, which confirms that all revenue values are valid and greater than zero.

2️⃣ Missing Critical Fields
![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(102).png?raw=true)






Description:
This validation checks for missing values in critical columns such as:

Order Date

Revenue

Customer ID

Product or transaction identifiers

The result shows 0 missing records, meaning the dataset is complete.




📈 Revenue & Growth Analysis
Month-over-Month Revenue Trend
![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(108).png?raw=true)







Description:
This table shows:

Monthly revenue

Previous month revenue

Month-over-month (MoM) growth percentage

The MoM growth is calculated using:

((Current Month Revenue - Previous Month Revenue) / Previous Month Revenue) * 100


Key Insights:

Revenue shows significant fluctuations, indicating seasonal or demand-based variation.

Highest growth observed in:

May 2023 (+36.75%)

October 2023 (+34.15%)

Sharp declines seen in:

April 2023 (-20.01%)

September 2023 (-32.92%)

Indicates inconsistent sales performance and possible dependency on promotions or seasonal demand.

Business Value:

Helps identify high-performing and low-performing months

Useful for forecasting and budgeting

Supports strategic planning and sales optimization



🛒 Discount Effectiveness Analysis
![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(109).png?raw=true)






📌 Insight:
Determines whether discounts increase order volume or just reduce profit margins.


🌍 City-Level Revenue Analysis

![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(110).png?raw=true)





📌 Insight:
Identifies high-performing cities for targeted marketing and logistics optimization.


👥 Customer Value Segmentation


![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(111).png?raw=true)




📌 Insight:
Top 25% of customers contribute a disproportionate share of revenue — ideal for retention strategies.

🚚 Delivery Time vs Customer Rating

![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(112).png?raw=true)




💳 Payment & Device Performance

![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(113).png?raw=true)




🔁 Returning vs New Customers

 ![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(114).png?raw=true)




 📊 Key KPIs Tracked


 ![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(120).png?raw=true)




 
- Customer segmentation
- Category and city-wise analysis
- Discount impact
- Window functions (RANK, NTILE, LAG)

---

## 🧪 Python Analysis
- Data cleaning
- Exploratory Data Analysis
- Handling missing values
- Data aggregation

Libraries used:
- pandas
- matplotlib
- seaborn

---

## 📈 Power BI Dashboard
Dashboard includes:
- Total Revenue & Orders
- Category-wise sales
- City-wise revenue
- Customer segmentation
- Monthly sales trend

Key insights:
- Revenue is concentrated in few categories
- Returning customers generate most revenue
- Sales show seasonal trends
- Delivery performance affects customer satisfaction


Where is our revenue actually coming from?

![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/image3/Screenshot%20(96).png?raw=true)





Which customer are valuable vs risky?


![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/image3/Screenshot%20(97).png?raw=true)






---

## 🎯 Skills Demonstrated
- SQL & Data Analysis
- Business Intelligence
- Data Visualization
- Dashboard Design
- Analytical Thinking

---

## 🚀 How to Use
1. Run SQL queries from `ecommerce.sql`
2. Open `main.ipynb` for analysis
3. Open Power BI file to view dashboard

---

## 🔮 Future Improvements
- Add customer lifetime value (CLV)
- Implement churn analysis
- Add predictive modeling
- Automate dashboard refresh

---

## 👤 Author
**Deep Roy**  
Aspiring Data Analyst  
