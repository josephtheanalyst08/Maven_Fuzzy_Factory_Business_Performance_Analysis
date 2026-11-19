# Maven Fuzzy Factory – E-commerce Business Performance Analysis

## Project Overview

Maven Fuzzy Factory is an e-commerce business that wants to understand how its website performs, how customers interact with its products, which marketing channels generate sales, and how it can improve revenue and customer conversion.

This project focuses on analyzing the company's business performance using five interconnected datasets. The goal is to transform raw business data into meaningful insights that can help stakeholders understand sales performance, product profitability, order trends, customer refunds, and website traffic.

The analysis was carried out using Microsoft Excel for data cleaning and Power BI for data modeling, analysis, and dashboard development.

## Project Objectives

The major objectives of this project were to:

- Evaluate overall business performance using key performance indicators (KPIs).
- Analyze product performance, revenue, costs, and profitability.
- Examine order trends and identify patterns in customer refunds.
- Understand website traffic, sessions, pageviews, and conversion performance.
- Evaluate marketing traffic sources and device usage.
- Present findings through interactive dashboards to support business decision-making.

## Tools Used

| Tool | Purpose |
|---|---|
| Microsoft Excel | Data cleaning and preparation |
| Microsoft Power BI | Data modeling, DAX calculations, analysis, and visualization |

## Datasets

The project consists of five CSV datasets containing information about different areas of the business.

The datasets were kept separate during preparation to preserve their individual structures and were later brought together in Power BI for analysis.

The report uses data from the following business areas:

- Website sessions
- Website pageviews
- Orders
- Products
- Order items and refunds

## Project Dashboards

The Power BI report contains four pages:

### 1. KPIs

An overview of the company's performance, featuring key performance indicators such as:

- Total Revenue
- Total Orders
- Total Sessions
- Total Pageviews
- Total Products
- Total Profit
- Total Cost of Goods Sold (COGS)
- Total Refunds
- Average Order Value
- Session-to-Order Rate

### 2. Product Performance and Profitability

This dashboard examines how individual products contribute to the company's financial performance.

It focuses on:

- Revenue by product
- Cost of Goods Sold
- Product profitability
- Product contribution to total profit
- Product performance over time

### 3. Order Volume and Refund Analysis

This dashboard explores order activity and refund performance.

Key areas include:

- Total orders
- Total refunds
- Total refund amount
- Average order value
- Refund rate
- Order trends over time
- Refund distribution across products

### 4. Website Traffic and Session Analysis

This dashboard evaluates website activity and the performance of different traffic sources.

It examines:

- Total website sessions
- Total pageviews
- Session-to-order rate
- Traffic sources
- Marketing campaign performance
- Device distribution
- Website traffic trends over time

## Methodology

The project followed these stages:

**1. Data Preparation and Cleaning – Excel**

The five CSV datasets were brought into a single Excel workbook, with each dataset maintained on a separate worksheet.

Each dataset was cleaned independently to prepare the information for analysis.

**2. Data Import – Power BI**

The cleaned worksheets were imported into Power BI as separate tables.

**3. Data Modeling**

The tables were examined and connected using their relevant fields to support analysis across the different areas of the business.

**4. Data Analysis**

DAX measures were used to calculate key performance indicators, including revenue, profit, COGS, orders, refunds, average order value, and conversion-related metrics.

**5. Data Visualization**

The analysis was presented through four interactive dashboard pages, using appropriate charts, KPI cards, and slicers to make business performance easier to understand.

**6. Business Interpretation**

The dashboards were designed to help stakeholders identify performance patterns, understand areas that require attention, and make more informed business decisions.

## Assumptions

The following assumptions apply to the interpretation of this analysis:

- The provided datasets accurately represent the business activities recorded within their respective periods.
- Relationships established between tables correctly represent the connections between the underlying business records.
- Revenue, cost, profit, and refund calculations follow the definitions implemented in the Power BI measures.
- Session-to-order and refund rates are interpreted according to their respective DAX calculations.
- Marketing traffic sources and campaign information are interpreted using the attribution fields available in the datasets.

## Limitations

- The analysis is limited to the information available in the five provided datasets.
- Missing, incomplete, or inconsistent source records may affect the accuracy of certain metrics.
- The analysis identifies patterns and relationships but does not establish that one business activity directly caused another.
- Marketing performance is evaluated using the available traffic and order information; additional attribution data may be required for a deeper assessment.
- The findings reflect the available dataset and should not automatically be treated as a representation of the company's current performance.

## Project Files

| File | Description |
|---|---|
| `Maven Fuzzy PBIX File.pbix` | Power BI report containing the four interactive dashboard pages |
| `README.md` | Project documentation |

*Note: The original CSV files and cleaned Excel workbook should be included in the repository if you want others to reproduce the complete data preparation process.*

## Conclusion

This project demonstrates how different areas of an e-commerce business can be analyzed together to provide a clearer picture of business performance.

By combining website traffic, order activity, product profitability, and refund information, the analysis provides a foundation for understanding how customers interact with the business and where improvements may be needed.

The final output is an interactive Power BI report designed to turn business data into useful information for decision-making.
