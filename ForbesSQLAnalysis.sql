SELECT *
FROM forbesai50_cleaned;

-- Which companies have the most funding
SELECT *, ROUND((FUNDING / (SELECT SUM(FUNDING) FROM forbesai50_cleaned)  * 100),2) as FUNDING_PERCENTAGE
FROM forbesai50_cleaned
ORDER BY FUNDING DESC;

-- What country has the most companies in the ForbesAI50
SELECT DISTINCT(COUNTRY), COUNT(COUNTRY)
FROM forbesai50_cleaned
GROUP BY COUNTRY;

-- From what state in U.S have the most companies
SELECT `STATE/PROVINCE`, count(`STATE/PROVINCE`)
FROM forbesai50_cleaned
WHERE COUNTRY = "United States"
GROUP BY `STATE/PROVINCE`;

-- On average, what AI use cases are receiving the most funding
SELECT `WHAT IT DOES`, count(`WHAT IT DOES`) as count, AVG(FUNDING) as avg_funding
FROM forbesai50_cleaned
GROUP BY `WHAT IT DOES`
ORDER BY avg(funding) DESC;