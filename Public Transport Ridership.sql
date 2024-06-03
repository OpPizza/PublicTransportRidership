SELECT * FROM ridership_headline;

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