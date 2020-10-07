-- Query 1: Most Polluted Cities :

--  Cities with the highest NO2 Pollution levels in the last 5 years:
SELECT years, city, no2_mean FROM mod_pollution_year_city 
WHERE years BETWEEN '2012' AND '2016'
ORDER BY no2_mean DESC;

--  Cities with the highest CO Pollution levels in the last 5 years:
SELECT years, city, co_mean FROM mod_pollution_year_city 
WHERE years BETWEEN '2012' AND '2016'
ORDER BY co_mean DESC;

--  Cities with the highest SO2 Pollution levels in the last 5 years:
SELECT years, city, so2_mean FROM mod_pollution_year_city 
WHERE years BETWEEN '2012' AND '2016'
ORDER BY so2_mean DESC;

-- Query 2: Least Polluted Cities:

--  Cities with the least NO2 Pollution levels in the last 5 years:
SELECT years, city, no2_mean FROM mod_pollution_year_city 
WHERE years BETWEEN '2012' AND '2016'
ORDER BY no2_mean ASC;

--  Cities with the least CO Pollution levels in the last 5 years:
SELECT years, city, co_mean FROM mod_pollution_year_city 
WHERE years BETWEEN '2012' AND '2016'
ORDER BY co_mean ASC;

--  Cities with the least SO2 Pollution levels in the last 5 years:
SELECT years, city, so2_mean FROM mod_pollution_year_city 
WHERE years BETWEEN '2012' AND '2016'
ORDER BY so2_mean ASC;

-- Query 3: Most Polluted States:

--  States with the highest NO2 Pollution levels in the last 5 years:
SELECT years, state, no2_mean FROM mod_pollution_year_state 
WHERE years BETWEEN '2012' AND '2016'
ORDER BY no2_mean DESC;

--  States with the highest CO Pollution levels in the last 5 years:
SELECT years, state, co_mean FROM mod_pollution_year_state 
WHERE years BETWEEN '2012' AND '2016'
ORDER BY co_mean DESC;

--  States with the highest SO2 Pollution levels in the last 5 years:
SELECT years, state, so2_mean FROM mod_pollution_year_state 
WHERE years BETWEEN '2012' AND '2016'
ORDER BY so2_mean DESC;

-- Query 4: Least Polluted States:

--  States with the least NO2 Pollution levels in the last 5 years:
SELECT years, state, no2_mean FROM mod_pollution_year_state 
WHERE years BETWEEN '2012' AND '2016'
ORDER BY no2_mean ASC;

--  States with the least CO Pollution levels in the last 5 years:
SELECT years, state, co_mean FROM mod_pollution_year_state 
WHERE years BETWEEN '2012' AND '2016'
ORDER BY co_mean ASC;

--  States with the least SO2 Pollution levels in the last 5 years:
SELECT years, state, so2_mean FROM mod_pollution_year_state 
WHERE years BETWEEN '2012' AND '2016'
ORDER BY so2_mean ASC;

-- Query 5: Highest Pollution Level in all years:

-- Years of the highest level of NO2
SELECT years, no2_mean FROM mod_mean_us_pollution
ORDER BY no2_mean DESC LIMIT 5;

-- Years of the highest level of SO2
SELECT years, so2_mean FROM mod_mean_us_pollution
ORDER BY so2_mean DESC LIMIT 5;

-- Years of the highest level of CO
SELECT years, co_mean FROM mod_mean_us_pollution
ORDER BY co_mean DESC LIMIT 5;

-- Query 6: Lowest Pollution Level in all years:

-- Years of the lowest level of NO2
SELECT years, no2_mean FROM mod_mean_us_pollution
ORDER BY no2_mean ASC LIMIT 5;

-- Years of the lowest level of SO2
SELECT years, so2_mean FROM mod_mean_us_pollution
ORDER BY so2_mean ASC LIMIT 5;

-- Years of the lowest level of CO
SELECT years, co_mean FROM mod_mean_us_pollution
ORDER BY co_mean ASC LIMIT 5;


-- Query 7: Pollution level by pol_variable for all Pollutants (CO, NO2,SO2)

-- Pollution - NO2:
SELECT pol,  pol_var, pol_variable, sum(value)
FROM mod_cleaned_air_emission_by_source_no2
GROUP BY pol, pol_variable, pol_var
ORDER BY sum(value) DESC
-- Pollution - SO2:
SELECT pol,  pol_var, pol_variable, sum(value)
FROM mod_cleaned_air_emission_by_source_so2
GROUP BY pol, pol_variable, pol_var
ORDER BY sum(value) DESC
-- Pollution - CO:
SELECT pol,  pol_var, pol_variable, sum(value)
FROM mod_cleaned_air_emission_by_source_co
GROUP BY pol, pol_variable, pol_var
ORDER BY sum(value) DESC
