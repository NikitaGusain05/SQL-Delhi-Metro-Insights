-- How many metro stations are there per metro line?
SELECT 
    metroLine, COUNT(*) totalMetros
FROM
    metro
GROUP BY metroLine
ORDER BY totalMetros DESC;

-- What is the average distance between two consecutive stations on each line?
SELECT 
  metroLine,
  ROUND(AVG(nextStation - firstStation), 2) AS avgDistance
FROM (
  SELECT 
    metroLine,
    distFromFristStation AS firstStation,
    LEAD(distFromFristStation) OVER (PARTITION BY metroLine ORDER BY station_number) AS nextStation
  FROM metro
) tmp
WHERE nextStation IS NOT NULL
GROUP BY metroLine
ORDER BY avgDistance DESC;

-- Which metro lines have the least number of stations?
SELECT metroLine, totalMetros
FROM (
  SELECT 
    metroLine,
    COUNT(*) AS totalMetros,
    RANK() OVER (ORDER BY COUNT(*)) AS rNUM
  FROM metro
  GROUP BY metroLine
) AS ranked
WHERE rNUM = 1;

-- What is the total length of each metro line?
SELECT 
  metroLine,
  MAX(distFromFristStation) AS totalLength
FROM 
  metro
GROUP BY 
  metroLine
ORDER BY 
  totalLength DESC;


-- How many stations were opened per year?
SELECT 
  YEAR(Opened) AS year, 
  COUNT(*) AS Total_Metro_Opened 
FROM 
  metro 
GROUP BY 
  year 
ORDER BY 
  year;


-- How has the opening of metro stations progressed over time?
WITH yearly_counts AS (
  SELECT 
    YEAR(Opened) AS year,
    COUNT(*) AS stations_opened
  FROM metro
  GROUP BY year
)
SELECT 
  year,
  stations_opened,
  SUM(stations_opened) OVER (ORDER BY year) AS cumulative_stations_opened
FROM yearly_counts
ORDER BY year;

-- Which metro lines have the most recently opened stations?
SELECT 
  metroLine, 
  COUNT(*) AS recently_opened_stations 
FROM 
  metro 
WHERE 
  YEAR(Opened) = (
    SELECT MAX(YEAR(Opened)) FROM metro
  )
GROUP BY 
  metroLine
ORDER BY 
  recently_opened_stations DESC;




