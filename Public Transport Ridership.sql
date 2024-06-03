SELECT * FROM ridership_headline;

SELECT * FROM ridership_headline
ORDER BY date DESC;

---- LRT KELANA JAYA

-- Total LRT Kelana Jaya ridership from 1st January 2019 to 30th April 2024
SELECT SUM(rail_lrt_kj) AS total_ridership FROM ridership_headline;

-- Total LRT Kelana Jaya ridership from 1st April 2024 to 30th April 2024
SELECT SUM(rail_lrt_kj) AS total_quadrimester_ridership FROM ridership_headline
WHERE date >= '2024-01-01';

-- Total LRT Kelana Jaya ridership from 1st January 2024 to 31th January 2024
SELECT SUM(rail_lrt_kj) AS total_january_ridership FROM ridership_headline
WHERE date >= '2024-01-01' AND date <= '2024-01-31';

-- Daily Average LRT Kelana Jaya ridership from 1st January 2019 to 30th April 2024
SELECT AVG(rail_lrt_kj) AS average_daily_ridership FROM ridership_headline;

---- LRT AMPANG

-- Total LRT Ampang ridership from 1st January 2019 to 30th April 2024
SELECT SUM(rail_lrt_ampang) AS total_ridership FROM ridership_headline;

-- Total LRT Ampang ridership from 1st April 2024 to 30th April 2024
SELECT SUM(rail_lrt_ampang) AS total_quadrimester_ridership FROM ridership_headline
WHERE date >= '2024-01-01';

-- Total LRT Ampang ridership from 1st January 2024 to 31th January 2024
SELECT SUM(rail_lrt_ampang) AS total_january_ridership FROM ridership_headline
WHERE date >= '2024-01-01' AND date <= '2024-01-31';

-- Daily Average LRT Ampang ridership from 1st January 2019 to 30th April 2024
SELECT AVG(rail_lrt_ampang) AS average_daily_ridership FROM ridership_headline;

---- MRT Kajang

-- Total MRT Kajang ridership from 1st January 2019 to 30th April 2024
SELECT SUM(rail_mrt_kajang) AS total_ridership FROM ridership_headline;

-- Total MRT Kajang ridership from 1st April 2024 to 30th April 2024
SELECT SUM(rail_mrt_kajang) AS total_quadrimester_ridership FROM ridership_headline
WHERE date >= '2024-01-01';

-- Total MRT Kajang ridership from 1st January 2024 to 31th January 2024
SELECT SUM(rail_mrt_kajang) AS total_january_ridership FROM ridership_headline
WHERE date >= '2024-01-01' AND date <= '2024-01-31';

-- Daily Average MRT Kajang ridership from 1st January 2019 to 30th April 2024
SELECT AVG(rail_mrt_kajang) AS average_daily_ridership FROM ridership_headline;

---- Monorail

-- Total Monorail ridership from 1st January 2019 to 30th April 2024
SELECT SUM(rail_monorail) AS total_ridership FROM ridership_headline;

-- Total Monorail ridership from 1st April 2024 to 30th April 2024
SELECT SUM(rail_monorail) AS total_quadrimester_ridership FROM ridership_headline
WHERE date >= '2024-01-01';

-- Total Monorail ridership from 1st January 2024 to 31th January 2024
SELECT SUM(rail_monorail) AS total_january_ridership FROM ridership_headline
WHERE date >= '2024-01-01' AND date <= '2024-01-31';

-- Daily Average Monorail ridership from 1st January 2019 to 30th April 2024
SELECT AVG(rail_monorail) AS average_daily_ridership FROM ridership_headline;

---- Visualization

-- Total ridership for each rail from 1st January 2019 to 30th April 2024
SELECT SUM(rail_lrt_kj), SUM(rail_lrt_ampang), SUM(rail_mrt_kajang), SUM(rail_monorail) FROM ridership_headline;

-- Total ridership for each rail for 2019
SELECT SUM(rail_lrt_kj), SUM(rail_lrt_ampang), SUM(rail_mrt_kajang), SUM(rail_monorail) FROM ridership_headline
WHERE date >= '2019-01-01' AND date <= '2019-12-31';

-- Total ridership for each rail for 2020
SELECT SUM(rail_lrt_kj), SUM(rail_lrt_ampang), SUM(rail_mrt_kajang), SUM(rail_monorail) FROM ridership_headline
WHERE date >= '2020-01-01' AND date <= '2020-12-31';

-- Total ridership for each rail for 2021
SELECT SUM(rail_lrt_kj), SUM(rail_lrt_ampang), SUM(rail_mrt_kajang), SUM(rail_monorail) FROM ridership_headline
WHERE date >= '2021-01-01' AND date <= '2021-12-31';

-- Total ridership for each rail for 2022
SELECT SUM(rail_lrt_kj), SUM(rail_lrt_ampang), SUM(rail_mrt_kajang), SUM(rail_monorail) FROM ridership_headline
WHERE date >= '2022-01-01' AND date <= '2022-12-31';

-- Total ridership for each rail for 2023
SELECT SUM(rail_lrt_kj), SUM(rail_lrt_ampang), SUM(rail_mrt_kajang), SUM(rail_monorail) FROM ridership_headline
WHERE date >= '2023-01-01' AND date <= '2023-12-31';

-- Total ridership for each rail for 2024
SELECT SUM(rail_lrt_kj), SUM(rail_lrt_ampang), SUM(rail_mrt_kajang), SUM(rail_monorail) FROM ridership_headline
WHERE date >= '2024-01-01' AND date <= '2024-4-30';

-- Total ridership each rail for each year in 1 query using YEAR() function
SELECT YEAR(date) AS year, SUM(rail_lrt_kj) AS total_kj_ridership, SUM(rail_lrt_ampang) AS total_lrt_ampang_ridership, SUM(rail_mrt_kajang) AS total_mrt_kajang_ridership, SUM(rail_monorail) AS total_monorail_ridership FROM ridership_headline
GROUP BY YEAR(date);

-- Total ridership each rail for each month in 1 query using MONTH() and YEAR() function
SELECT YEAR(date) AS year, MONTH(date) AS month, SUM(rail_lrt_kj) AS total_kj_ridership, SUM(rail_lrt_ampang) AS total_lrt_ampang_ridership, SUM(rail_mrt_kajang) AS total_mrt_kajang_ridership, SUM(rail_monorail) AS total_monorail_ridership FROM ridership_headline
GROUP BY YEAR(date), MONTH(date);

-- Total ridership each rail for each month in 2024
SELECT YEAR(date) AS year, MONTH(date) AS month, SUM(rail_lrt_kj) AS total_kj_ridership, SUM(rail_lrt_ampang) AS total_lrt_ampang_ridership, SUM(rail_mrt_kajang) AS total_mrt_kajang_ridership, SUM(rail_monorail) AS total_monorail_ridership FROM ridership_headline
WHERE date >= '2024-01-01'
GROUP BY YEAR(date), MONTH(date);