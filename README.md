# Metro System Descriptive & Temporal Analytics (MySQL)

This project performs descriptive and temporal analytics on metro system data using **MySQL** to answer key questions about metro stations and lines.

---

## 📊 Descriptive Analytics

- **How many metro stations are there per metro line?**  
  Calculate the count of stations grouped by each metro line.

- **What is the average distance between two consecutive stations on each line?**  
  Compute the average distance based on `distFromFristStation` between stations ordered by their sequence.

- **Which metro lines have the most or least number of stations?**  
  Identify metro lines with the maximum and minimum number of stations.

- **What is the total length of each metro line (based on distFromFirstStation)?**  
  Use the maximum distance from the first station to estimate the total length of each metro line.

---

## 📅 Temporal Analysis

- **How has the opening of metro stations progressed over time?**  
  Examine the trend of stations opening over the years, showing yearly counts and cumulative totals.

- **How many stations were opened per year?**  
  Count the number of stations that opened in each individual year.

- **Which metro lines have the most recently opened stations?**  
  Find metro lines with stations opened in the most recent year available in the dataset.

---

## Dataset Columns

| Column              | Description                              |
|---------------------|------------------------------------------|
| station_id          | Sequence number of the station on the line |
| station_number      | Unique identifier for the station        |
| stationName         | Name of the station                      |
| distFromFristStation| Distance from the first station on the line (km or miles) |
| metroLine           | The metro line the station belongs to    |
| Opened              | Opening date of the station (datetime)   |
| Layout              | Station layout details                    |
| Latitude            | Latitude coordinate of the station       |
| Longitude           | Longitude coordinate of the station      |

---

## Usage

- Run **MySQL** queries on your metro dataset to extract insights.
- Use the descriptive analytics queries to understand station distribution and distances.
- Use temporal analytics queries to analyze station openings and growth over time.

---

## Technologies

- MySQL 8.0+ (for window functions like `SUM() OVER()`)

---

*Happy analyzing! 🚇📈*
