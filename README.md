# Health & Lifestyle Activity Analysis (SQL Server)

## Project Overview
I analyzed a health and lifestyle dataset of 1,000 participants using SQL Server Management Studio (SSMS) to explore daily physical activity, sleep duration, calorie intake, and BMI across different groups.

## Key Questions & Findings
1. **Overall Benchmarks:** Across all **1,000 participants**, the average daily step count is **10,717 steps**, average sleep is **6.91 hours**, and average calorie intake is **2,327 kcal**.
2. **Gender Comparison:** Men (**523**) and women (**477**) show very similar daily habits. Men walk slightly more on average (**10,960 steps** vs. **10,450 steps**), while calorie intake (**2,315** vs. **2,339 kcal**) and average BMI (**26.58** vs. **26.89**) are nearly identical.
3. **Sleep vs. BMI & Heart Rate:** Just over half of the group (**505 people**) sleeps under 7 hours, while **495 people** get 7+ hours—yet both groups share virtually the same average BMI (**26.75** vs. **26.71**) and resting heart rate (**83** vs. **86 bpm**).
4. **10,000+ Daily Steps Benchmark:** Over half of the participants (**548 people**, or **54.8%**) hit 10,000+ daily steps, averaging a BMI of **26.69** and **6.95 hours** of sleep.

## SQL Skills Demonstrated
- **Data Exploration:** `COUNT`, `AVG`, `ROUND`, `INFORMATION_SCHEMA`
- **Filtering & Grouping:** `WHERE`, `GROUP BY`, column aliases (`AS`)
- **Segmentation & Subqueries:** `CASE WHEN` statements inside subqueries
