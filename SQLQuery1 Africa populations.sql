--Looking at populations of sub- saharan africa, growth, fertility, mortality and life expectancy.
--comparing male and female populations and predicting future numbers.
--All within the time period of 2000- 2022

-- Examining the data
SELECT*
FROM world..Sheet1$
WHERE year >='2000'
AND year < '2022'


-- filtering for particular requirements and finding current population figures
SELECT Year,[Region, subregion, country or area *] ,[Total Population, as of 1 July (thousands)]
FROM world..Sheet1$ 
WHERE (year >='2000'
AND year < '2022') AND [Region, subregion, country or area *] =  'Africa'


--Male and female population observations

SELECT Year, [Male Population, as of 1 July (thousands)], [Female Population, as of 1 July (thousands)]
FROM world..Sheet1$ 
WHERE (year >='2000'
AND year < '2022') AND [Region, subregion, country or area *] = 'Africa'



--Growth rate percentages in Africa

SELECT Year, [Region, subregion, country or area *], [Population Growth Rate (percentage)]
FROM world..Sheet1$ 
WHERE (year = '2021') AND
[Region, subregion, country or area *] in('Nigeria', 'Ghana', 'Mali', 'Cameroun', 'Senegal', 'South Africa', 'Angola', 'Morocco', 'Egypt',
'Algeria', 'Eswatini', 'Tunisia', 'Gabon', 'Gambia', 'Benin ', 'Burundi', 'Rwanda', 'Chad', 'Central African Repbulic', 'Equatorial 
Guinea','Sudan', 'South Sudan', 'Democratic Republic of the Congo', 'Sao Tome and Principe', 'Somalia', 'Kenya', 'Uganda', 'Tanzania',
'Eritrea', 'Djibouti', 'Bostwana', 'Comoros', 'Lesotho', 'Madagascar', 'Malawi', 'Mauritius', 'Mozambique', 'Namibia', 'Seychelles'
, 'Zambia', 'Zimbabwe', 'Sudan', 'Ivory coast', 'Guinea', 'Liberia', 'Mauritania', 'Sierra Leone', 'Burkina Faso', 'Guinea-Bisau'
, 'Niger', 'Togo', 'Libya')




--Looking at births in school age women

SELECT Year, [Births by women aged 15 to 19 (thousands)]
FROM world..Sheet1$
WHERE year >='2000'
AND year < '2022'AND [Region, subregion, country or area *] = 'Africa'



--Comparing life expectancy at birth and at later years

SELECT Year, [Life Expectancy at Birth, both sexes (years)]
FROM world..Sheet1$
WHERE year >='2000'
AND year < '2022'AND [Region, subregion, country or area *] = 'Africa'


SELECT Year, [Life Expectancy at Age 80, both sexes (years)], [Life Expectancy at Birth, both sexes (years)]
FROM world..Sheet1$
WHERE year >='2000'
AND year < '2022'AND [Region, subregion, country or area *] = 'Africa'

--Mortality

SELECT Year, [Infant Mortality Rate (infant deaths per 1,000 live births)],[Mortality between Age 15 and 60, both sexes (deaths under age 60]
FROM world..Sheet1$
WHERE year >='2000'
AND year < '2022'AND [Region, subregion, country or area *] = 'Africa'
