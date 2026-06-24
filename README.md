# 🏠 Abuja Housing Market Analysis

SQL and Excel analysis of 481 real estate listings across Abuja, Nigeria 
— exploring price patterns by neighbourhood, property type, and listing 
type.

## Business Questions
1. Which neighbourhoods have the highest average property prices?
2. How does property type affect price?
3. Which listing type (sale vs rent) commands a premium?
4. What does the overall market structure look like by price tier?

## Key Findings
- Asokoro is the most expensive neighbourhood — average ₦1.31 billion, 
  more than double the next highest.
- 50% of listings fall into the "Affordable" price band (under ₦50M).
- Detached Duplexes are the largest premium segment (115 listings, 
  avg ₦522M).
- Sale listings average 34x higher than rental listings.

Full findings: [`findings/findings_and_recommendations.md`](findings/findings_and_recommendations.md)

## Dashboard

![Average price by neighbourhood](dashboard/chart_neighbourhood_prices.png)

![Price band distribution](dashboard/chart_price_bands.png)

## Repository Structure
- `data/` — raw and processed datasets
- `sql/` — all analysis queries with comments
- `dashboard/` — chart exports
- `findings/` — written findings and recommendations

## Tools Used
SQLiteStudio · Microsoft Excel · Kaggle

## About
Built as part of a self-directed data analytics learning path, 
transitioning from an architecture background into data analysis.
