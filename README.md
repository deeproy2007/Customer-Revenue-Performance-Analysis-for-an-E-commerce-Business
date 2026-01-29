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






Description:

       This analysis compares order volume and revenue performance between discounted and non-discounted purchases.

Insights:

     Discounted orders generate lower total revenue despite higher volume expectations.

    Revenue per order is almost the same, meaning discounts do NOT significantly increase basket size.

    Discounts reduce profit margin without strong revenue upside.


🌍 Delivery time impacts

![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(112).png?raw=true)





Description:
This analysis examines how delivery time impacts customer satisfaction by comparing:

Delivery time (in days)

Total number of orders

Average customer rating

Rating variability

📌 Business Insights

✅ Best delivery target: 3–6 days
❌ Avoid extreme fast or very late deliveries
📉 Long delivery times increase rating volatility
📈 Consistent delivery improves customer trust


💳 Revenue by Payment Method


![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(113).png?raw=true)




Description:
This analysis shows revenue and order distribution across payment methods.

Results:

    Credit Card: ₹1.91M | 2,012 orders (Highest)

    Debit Card: ₹1.25M | 1,265 orders

    Digital Wallet: ₹963K | 965 orders

    Bank Transfer: ₹551K | 510 orders

    Cash on Delivery: ₹234K | 248 orders (Lowest)

Insights:

    Credit cards dominate both revenue and usage.

    Digital payments significantly outperform cash-based methods.

    COD users contribute the least revenue and volume.

Business Impact:

    Focus marketing offers on card & wallet users

    Reduce COD dependency to improve payment success rate and logistics efficiency

🚚 Delivery Time vs Customer Rating

![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(112).png?raw=true)



Description:

    This analysis examines how delivery time impacts customer satisfaction by comparing:

    Delivery time (in days)

    Total number of orders
   
    Average customer rating

    Rating variability

📌 Business Insights

    ✅ Best delivery target: 3–6 days
    ❌ Avoid extreme fast or very late deliveries
    📉 Long delivery times increase rating volatility
    📈 Consistent delivery improves customer trust
    🔁 Returning vs New Customers Analysis

![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(114).png?raw=true)




Description:

      This comparison evaluates customer loyalty and revenue contribution.

Results:

     Customer Type	Customers	Revenue	Revenue per Customer
     New Customers	2,010	₹1.96M	₹978.87
     Returning Customers	2,990	₹2.94M	₹985.96

Insights:

    Returning customers generate ~60% of total revenue

    They also have higher revenue per customer

    Loyalty directly impacts revenue stability

Business Conclusion:

     👉 Retention is more profitable than acquisition
     👉 Loyalty programs and remarketing should be prioritized

📊 Overall Business Summary

 ![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(116).png?raw=true)





Key Metrics:

    Total Revenue: ₹4.91M

    Total Orders: 5,000

    Total Customers: 5,000

    Average Order Value: ₹983.11

Final Insights:

    Revenue is healthy but growth depends on:

    Increasing repeat purchases

    Optimizing discount strategy

    Promoting digital payment methods

    Data quality is clean and suitable for decision-making.
 📊 Key KPIs Tracked


 ![image alt](https://github.com/deeproy2007/Customer-Revenue-Performance-Analysis-for-an-E-commerce-Business/blob/main/Ecommerce%20sql%20screenshot/Screenshot%20(120).png?raw=true)



Summary Statistics of Total Amount
The above result shows the basic descriptive statistics calculated for the Total_Amount column. The minimum transaction value is 7.87, indicating the smallest recorded amount in the dataset. The maximum value reaches 22,023.90, highlighting the highest transaction observed. The average (mean) Total_Amount is approximately 983.11, which provides an overall measure of the typical transaction size. These summary statistics help in understanding the data range, identifying potential outliers, and gaining initial insights into the distribution of transaction values before further analysis.
 
- Customer segmentation
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


Dashboard Overview

This project uses Power BI to analyze sales data and understand customer behavior, revenue distribution, and business performance. The dashboard highlights key metrics such as total sales, average order value, product category performance, customer demographics, and regional sales trends.

The analysis shows that returning customers and the 26–45 age group contribute the majority of revenue, with Electronics emerging as the top-performing product category. Sales are concentrated in a few high-performing cities, and monthly trends indicate seasonal fluctuations.

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





🧠 Key Business Decisions & Recommendations

    1. Focus on Returning Customers
      Since returning customers generate the majority of revenue, businesses should:

      Invest in loyalty programs and personalized offers

      Improve post-purchase engagement to increase repeat orders

    2. Target High-Value Age Groups (26–45)
      Marketing campaigns should primarily target the 26–45 age segment, as they contribute the highest spending.

    3. Strengthen Electronics Category
      Electronics is the top revenue driver. The business can:

      Ensure better inventory planning

      Protect margins through optimized pricing strategies

    4. Reduce Regional Dependency
      Revenue is concentrated in a few cities. To reduce risk:

      Expand marketing efforts in underperforming cities

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
