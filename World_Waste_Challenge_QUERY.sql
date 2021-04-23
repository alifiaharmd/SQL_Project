/* Analyzing waste in different countries. Data on waste produced, and waste treatment methods in 
different countries have been compiled.*/

---------------------
--Data Basic Review--
---------------------

/*Q1. Identify all country ids for countries that recycle more than 50% of their waste.*/

SELECT country_id, recycling_percent
FROM treatment
WHERE recycling_percent > 50;

| country_id | recycling_percent |
| ---------- | ----------------- |
| ISL        | 55.81             |
| KOR        | 58                |
| SGP        | 61                |

---

/*Q2. Calculate the average worldwide percent of glass and plastic waste created.*/

SELECT AVG(glass_pct) AS "Average of glass waste (%)", 
       AVG(plastic_pct) AS "Average of plastic waste (%)"
FROM composition;

| Average of glass waste (%) | Average of plastic waste (%) |
| -------------------------- | ---------------------------- |
| 6.13323943661972           | 12.2684722222222             |

---

/*Q3.How many countries are in each region of the world? 
Order by descending countes of countries.*/

SELECT region_id, COUNT(*)
FROM countries
GROUP BY region_id
ORDER BY COUNT(*) DESC;

| region_id | count |
| --------- | ----- |
| ECS       | 37    |
| LCN       | 18    |
| EAS       | 13    |
| MEA       | 8     |
| NAC       | 3     |
| SSF       | 1     |

---

-----------------------------------------
--Challenge Level: Incinerate (Level 1)--
-----------------------------------------

/*Q1. Identiy all of the countries and their percent of waste treatment, ordered by country name.*/

SELECT c.country_name, t.compost_percent, t.incineration_percent, t.recycling_percent
FROM countries AS c
LEFT JOIN treatment AS t 
ON c.id = t.country_id
ORDER BY c.country_name

/*Q2. Find the names of the 5 countries that create the highest percent plastic waste, along with their
corresponding percent of plastic waste.*/

SELECT c.country_name, comp.plastic_pct AS "plastic waste (%)"
FROM countries AS c
JOIN composition AS comp 
ON c.id = comp.country_id
ORDER BY comp.plastic_pct DESC
LIMIT 5
ECS
---

| country_name        | plastic waste (%) |
| ------------------- | ----------------- |
| Palau               | 32                |
| Korea Rep.          | 24.3              |
| St. Kitts and Nevis | 23.2              |
| Croatia             | 22.9              |
| Hong Kong SAR China | 21                |

---

/*Q3. Which countries in the ECS region compost more than 20% of their waste.*/

SELECT c.country_name, t.compost_percent
FROM countries AS c
JOIN treatment AS t 
ON c.id = t.country_id
WHERE c.region_id = 'ECS'  AND t.compost_percent > 20;

| country_name | compost_percent |
| ------------ | --------------- |
| Austria      | 31.24           |
| Switzerland  | 21              |
| Netherlands  | 27.1            |

---

--------------------------------------
--Challenge Level: Recycle (Level 2)--
--------------------------------------

/*Q1. What are the names of the 3 countires that recycle the greatest percent of their waste? What percent
do they recyce?*/

SELECT c.country_name, t.recycling_percent
FROM countries AS c
JOIN treatment AS t 
ON c.id = t.country_id
ORDER BY t.recycling_percent DESC
LIMIT 3;

| country_name | recycling_percent |
| ------------ | ----------------- |
| Singapore    | 61                |
| Korea Rep.   | 58                |
| Iceland      | 55.81             |

---

/*Q2. Re-write the above query using a RIGHT JOIN*/

SELECT c.country_name, t.recycling_percent
FROM countries AS c
RIGHT JOIN treatment AS t 
ON c.id = t.country_id
ORDER BY t.recycling_percent DESC
LIMIT 3

/*Q3. What is the average percent of recycling done by each region?*/

SELECT c.region_id, AVG(t.recycling_percent) AS "AVG (%) of recycling"
FROM countries AS c
RIGHT JOIN treatment AS t 
ON c.id = t.country_id
GROUP BY c.region_id;

| region_id | AVG (%) of recycling |
| --------- | -------------------- |
| NULL      | 9.09304347826087     |
| EAS       | 41.5                 |
| NAC       | 19.0633333333333     |
| MEA       | 9.89666666666667     |
| ECS       | 27.274               |
| LCN       | 0.37                 |

---

/*Q4. Which 2 regions produce the greatest average percent of organic waste?*/

SELECT c.region_id, AVG(comp.organic_waste_pct) AS "AVG (%) of organic waste"
FROM countries AS c
JOIN composition AS comp 
ON c.id = comp.country_id
GROUP BY c.region_id
ORDER BY AVG(comp.organic_waste_pct) DESC
LIMIT 2;

| region_id | AVG (%) of organic waste |
| --------- | ------------------------ |
| SSF       | 48.5                     |
| MEA       | 44.825                   |

---

--------------------------------------
--Challenge Level: Compost (Level 3)--
--------------------------------------

/*For each country, identify the percent of organic waste produced by country and the percent of composting
the country does.*/


/*For each country in ECS region, calculate the percent of glass, plastic, paper, and metal that is NOT
recycled.*/


/*For each region, calculate the maximum percent of each composition and treatment type. Order the
regions alphabetically.*/

