-- Query 1: Overall price summary
SELECT
  ROUND(AVG(price_ngn), 0) AS avg_price,
  MIN(price_ngn) AS cheapest,
  MAX(price_ngn) AS most_expensive,
  COUNT(*) AS total_listings
FROM properties;

-- Query 2: Neighbourhoods with the most listings
SELECT
  neighbourhood,
  COUNT(*) AS total_listings
FROM properties
GROUP BY neighbourhood
ORDER BY total_listings DESC
LIMIT 10;

-- Query 3: Average price by neighbourhood
SELECT
  neighbourhood,
  COUNT(*) AS total_listings,
  ROUND(AVG(price_ngn), 0) AS avg_price,
  MIN(price_ngn) AS min_price,
  MAX(price_ngn) AS max_price
FROM properties
GROUP BY neighbourhood
ORDER BY avg_price DESC
LIMIT 10;

-- Query 4: Average price by property type
SELECT
  property_type,
  COUNT(*) AS total_listings,
  ROUND(AVG(price_ngn), 0) AS avg_price,
  MIN(price_ngn) AS min_price,
  MAX(price_ngn) AS max_price
FROM properties
GROUP BY property_type
ORDER BY avg_price DESC;

-- Query 5: Sale vs Rent price comparison
SELECT
  listing_type,
  COUNT(*) AS total_listings,
  ROUND(AVG(price_ngn), 0) AS avg_price,
  MIN(price_ngn) AS min_price,
  MAX(price_ngn) AS max_price
FROM properties
GROUP BY listing_type
ORDER BY avg_price DESC;

-- Query 6: Price by bedroom count
SELECT
  bedrooms,
  COUNT(*) AS total_listings,
  ROUND(AVG(price_ngn), 0) AS avg_price
FROM properties
WHERE bedrooms IS NOT NULL
AND bedrooms > 0
GROUP BY bedrooms
ORDER BY bedrooms ASC;

-- Query 7: Full neighbourhood dashboard (conditional aggregation)
SELECT
  neighbourhood,
  COUNT(*) AS total_listings,
  ROUND(AVG(price_ngn), 0) AS avg_price,
  COUNT(CASE WHEN listing_type = 'sale' THEN 1 END) AS for_sale,
  COUNT(CASE WHEN listing_type = 'rent' THEN 1 END) AS for_rent,
  COUNT(CASE WHEN property_type = 'Detached Duplex' THEN 1 END) AS detached_duplexes,
  COUNT(CASE WHEN property_type = 'Flat/Apartment' THEN 1 END) AS apartments,
  ROUND(MIN(price_ngn), 0) AS min_price,
  ROUND(MAX(price_ngn), 0) AS max_price
FROM properties
GROUP BY neighbourhood
ORDER BY avg_price DESC
LIMIT 15;

-- Query 8: Price band distribution (conditional aggregation with CASE)
SELECT
  CASE
    WHEN price_ngn >= 1000000000 THEN '1. Luxury (1B+ NGN)'
    WHEN price_ngn >= 200000000  THEN '2. Premium (200M-1B NGN)'
    WHEN price_ngn >= 50000000   THEN '3. Mid-Market (50M-200M NGN)'
    ELSE                              '4. Affordable (Under 50M NGN)'
  END AS price_band,
  COUNT(*) AS total_listings,
  ROUND(AVG(price_ngn), 0) AS avg_price
FROM properties
GROUP BY price_band
ORDER BY price_band ASC;