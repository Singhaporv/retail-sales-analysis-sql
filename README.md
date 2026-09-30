# Retail Sales Analysis — MySQL

SQL-based retail sales analysis project using MySQL and 100,000 retail transactions.

## Objectives
- Analyze sales, profit, customers and transactions.
- Compare category and regional performance.
- Identify high-value customers and products.
- Analyze monthly, MoM and YoY trends.
- Measure category sales contribution.
- Examine discount and profitability patterns.

## SQL Skills
MySQL, GROUP BY, HAVING, aggregations, subqueries, CTEs, ROW_NUMBER(), LAG(), PARTITION BY, date functions and business KPI analysis.

## Structure
```text
Retail-Sales-Analysis-SQL/
├── sql/
│   ├── 01_database_setup.sql
│   ├── 02_data_validation.sql
│   ├── 03_business_kpis.sql
│   ├── 04_category_analysis.sql
│   ├── 05_regional_analysis.sql
│   ├── 06_customer_analysis.sql
│   ├── 07_product_analysis.sql
│   ├── 08_sales_trends.sql
│   └── 09_advanced_analysis.sql
├── insights.md
└── README.md
```
## Key Findings

- Total transactions: **100,000**
- Total customers: **24,545**
- Total units sold: **400,404**
- Total sales: **$127.17M**
- Average order value: **$12,717.48**
- Electronics generated the highest category sales.
- North region recorded the highest total sales among regions.
- Monthly sales showed fluctuations throughout the year.
- 2025 sales were approximately **0.67% lower** than 2024.
- Profit margins across categories remained around **28%**.
- Higher discount levels were associated with lower average sales and profit in the analyzed data.

## Key Findings
Electronics was the largest displayed category by sales and profit. North was the largest displayed region by sales and profit. The displayed top-product results were dominated by Electronics. 2025 sales were 0.67% below 2024, while higher discount levels were associated with lower average sales and profit.

See `insights.md` for the detailed findings.

## Tools & Technologies

- **Database:** MySQL
- **Query Language:** SQL
- **Analysis:** MySQL Workbench
- **Version Control:** Git & GitHub
- **Documentation:** Markdown

- ## Business Insights

- Electronics and Clothing were among the major contributors to total sales.
- North region generated the highest total sales among the four regions.
- Category-level profit margins remained close to 28%.
- Monthly sales fluctuated during the analyzed period.
- Year-over-year sales showed a slight decline in 2025 compared with 2024.
- Higher discount levels showed lower average sales and average profit in the analysis.
- Customer and product-level analysis helped identify high-value customers and top-performing products.

- ## How to Run the Project

1. Install MySQL and MySQL Workbench.
2. Create a new MySQL database.
3. Open `sql/01_database_setup.sql` and execute it.
4. Load the retail sales dataset into the `retail_sales` table.
5. Run the SQL scripts sequentially:
   - `02_data_validation.sql`
   - `03_business_kpis.sql`
   - `04_category_analysis.sql`
   - `05_regional_analysis.sql`
   - `06_customer_analysis.sql`
   - `07_product_analysis.sql`
   - `08_sales_trends.sql`
   - `09_advanced_analysis.sql`
6. Review the result sets to analyze sales, profit, customers, products, regional performance and trends.

   ## Author

**Apoorv Singh**

Data Analyst | SQL | Excel | Power BI

This project was created to demonstrate practical SQL skills in data analysis, business KPI analysis, customer analysis, product analysis, and sales trend analysis.

### Connect with Me

- LinkedIn:(https://www.linkedin.com/in/apoorv-singh-688a851a8/)
- GitHub: (https://github.com/Singhaporv)
- Email: Apoorvsingh076@gmail.com
