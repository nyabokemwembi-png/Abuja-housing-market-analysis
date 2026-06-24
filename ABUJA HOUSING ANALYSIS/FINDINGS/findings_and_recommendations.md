# Findings & Recommendations — Abuja Housing Market Analysis

## Dataset
481 property listings scraped from Abuja real estate sources, covering 
sale and rental properties across 15+ neighbourhoods, with price, 
bedroom/bathroom count, and property type.

## Key Findings

### 1. Price varies enormously by neighbourhood
Asokoro is the most expensive neighbourhood by a wide margin — average 
price of ₦1.31 billion, more than double the next highest (Wuse at 
₦672 million). Kubwa is the most affordable major neighbourhood at 
₦54 million average.

*See: chart_neighbourhood_prices.png*

### 2. The market is split roughly in half between affordable and 
premium tiers
Of 481 listings, 239 (50%) fall into the "Affordable" band (under 
₦50M), while only 24 (5%) are in the "Luxury" tier (₦1B+). The 
"Premium" band (₦200M–1B) accounts for 131 listings (27%).

*See: chart_price_bands.png*

### 3. Property type drives price more than almost any other factor
Mansions average ₦4 billion (only 1 listing). Detached Duplexes average 
₦522 million across 115 listings — the largest premium segment. 
Bungalows are the most affordable type at ₦79 million average.

| Property Type | Listings | Avg Price (₦) |
|---|---|---|
| Mansion | 1 | 4,000,000,000 |
| Detached Duplex | 115 | 521,586,957 |
| House | 31 | 361,622,581 |
| Semi-Detached Duplex | 37 | 199,216,216 |
| Flat/Apartment | 173 | 142,336,350 |
| Terraced Duplex | 84 | 136,559,524 |
| Bungalow | 40 | 79,087,500 |

### 4. Sale prices carry a 34x premium over rental prices
Properties for sale average ₦511 million; rentals average ₦15 million. 
This isn't surprising on its own, but the scale of the gap is worth 
noting for anyone comparing listings without checking listing_type first.

| Listing Type | Listings | Avg Price (₦) |
|---|---|---|
| Sale | 231 | 511,012,072 |
| Rent | 250 | 15,114,800 |

## Recommendations
- For buyers seeking value: Kubwa, Dawaki, and Lokogoma offer the 
  lowest average prices among neighbourhoods with significant listing 
  volume (30+ listings each).
- For investors targeting the premium segment: Wuse and Utako offer 
  high average prices with much greater listing volume than Asokoro, 
  suggesting a more liquid premium market.
- Data limitation: bedroom count beyond 6 has very few listings (4–5 
  each), so price patterns at the very top end should be treated as 
  indicative rather than statistically robust.

## Tools Used
SQLiteStudio (SQL analysis) · Microsoft Excel (cleaning, charts) · 
Kaggle (data source)